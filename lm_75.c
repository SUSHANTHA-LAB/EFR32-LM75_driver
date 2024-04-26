#include "lm_75.h"
#include "printf.h"


// Transmission flags
volatile bool i2c_startTx;

static char i2c_txBuffer[I2C_TXBUFFER_SIZE];
static char i2c_rxBuffer[I2C_RXBUFFER_SIZE];



static float temp;


/***************************************************************************//**
 * @brief Enable clocks
 ******************************************************************************/
void initCMU(void)
{
  // Enable clocks to the I2C and GPIO
  CMU_ClockEnable(cmuClock_I2C0, true);
  CMU_ClockEnable(cmuClock_GPIO, true);

}

/***************************************************************************//**
 * @brief GPIO initialization
 ******************************************************************************/
void initGPIO(void)
{
  // Configure PB0 as input and interrupt
//  GPIO_PinModeSet(BSP_GPIO_PB0_PORT, BSP_GPIO_PB0_PIN, gpioModeInputPull, 1);
//  GPIO_ExtIntConfig(BSP_GPIO_PB0_PORT, BSP_GPIO_PB0_PIN, 0, false, true, true);

  // Configure LED0 and LED1 as output
  GPIO_PinModeSet(BSP_GPIO_LED0_PORT, BSP_GPIO_LED0_PIN, gpioModePushPull, 0);
  GPIO_PinModeSet(BSP_GPIO_LED1_PORT, BSP_GPIO_LED1_PIN, gpioModePushPull, 0);

  // Enable EVEN interrupt to catch button press that starts I2C transfer
  NVIC_ClearPendingIRQ(GPIO_EVEN_IRQn);
  NVIC_EnableIRQ(GPIO_EVEN_IRQn);
}




/***************************************************************************//**
 * @brief Setup I2C
 ******************************************************************************/
void initI2C(void)
{
  // Use default settings
  I2C_Init_TypeDef i2cInit = I2C_INIT_DEFAULT;

  // Using PA5 (SDA) and PA6 (SCL)
  GPIO_PinModeSet(gpioPortB, 2, gpioModeWiredAndPullUpFilter, 1);
  GPIO_PinModeSet(gpioPortB, 3, gpioModeWiredAndPullUpFilter, 1);

  // Route I2C pins to GPIO
  GPIO->I2CROUTE[0].SDAROUTE = (GPIO->I2CROUTE[0].SDAROUTE & ~_GPIO_I2C_SDAROUTE_MASK)
                        | (gpioPortB << _GPIO_I2C_SDAROUTE_PORT_SHIFT
                        | (3 << _GPIO_I2C_SDAROUTE_PIN_SHIFT));
  GPIO->I2CROUTE[0].SCLROUTE = (GPIO->I2CROUTE[0].SCLROUTE & ~_GPIO_I2C_SCLROUTE_MASK)
                        | (gpioPortB << _GPIO_I2C_SCLROUTE_PORT_SHIFT
                        | (2 << _GPIO_I2C_SCLROUTE_PIN_SHIFT));
  GPIO->I2CROUTE[0].ROUTEEN = GPIO_I2C_ROUTEEN_SDAPEN | GPIO_I2C_ROUTEEN_SCLPEN;

  // Initialize the I2C
  I2C_Init(I2C0, &i2cInit);

  // Set the status flags and index
  i2c_startTx = false;

  // Enable automatic STOP on NACK
  I2C0->CTRL = I2C_CTRL_AUTOSN;
}


/***************************************************************************//**
 * @brief I2C read numBytes from follower device starting at target address
 ******************************************************************************/
void I2C_LeaderRead(uint16_t followerAddress, uint8_t targetAddress, uint8_t *rxBuff, uint8_t numBytes)
{
  // Transfer structure
  I2C_TransferSeq_TypeDef i2cTransfer;
  I2C_TransferReturn_TypeDef result;

  // Initialize I2C transfer
  i2cTransfer.addr          = followerAddress;
  i2cTransfer.flags         = I2C_FLAG_WRITE_READ; // must write target address before reading
  i2cTransfer.buf[0].data   = &targetAddress;
  i2cTransfer.buf[0].len    = 1;
  i2cTransfer.buf[1].data   = rxBuff;
  i2cTransfer.buf[1].len    = numBytes;

  result = I2C_TransferInit(I2C0, &i2cTransfer);

  // Send data
  while (result == i2cTransferInProgress) {
    result = I2C_Transfer(I2C0);
  }

  if (result != i2cTransferDone) {
    // LED1 ON and infinite while loop to indicate I2C transmission problem
    GPIO_PinOutSet(BSP_GPIO_LED1_PORT, BSP_GPIO_LED1_PIN);
    while(1);
  }
}

/***************************************************************************//**
 * @brief I2C write numBytes to follower device starting at target address
 ******************************************************************************/
void I2C_LeaderWrite(uint16_t followerAddress, uint8_t targetAddress, uint8_t *txBuff, uint8_t numBytes)
{
  // Transfer structure
  I2C_TransferSeq_TypeDef i2cTransfer;
  I2C_TransferReturn_TypeDef result;
  uint8_t txBuffer[I2C_TXBUFFER_SIZE + 1];

  txBuffer[0] = targetAddress;
  for(int i = 0; i < numBytes; i++)
  {
      txBuffer[i + 1] = txBuff[i];
  }

  // Initialize I2C transfer
  i2cTransfer.addr          = followerAddress;
  i2cTransfer.flags         = I2C_FLAG_WRITE;
  i2cTransfer.buf[0].data   = txBuffer;
  i2cTransfer.buf[0].len    = numBytes + 1;
  i2cTransfer.buf[1].data   = NULL;
  i2cTransfer.buf[1].len    = 0;

  result = I2C_TransferInit(I2C0, &i2cTransfer);

  // Send data
  while (result == i2cTransferInProgress) {
    result = I2C_Transfer(I2C0);
  }

  if (result != i2cTransferDone) {
    // LED1 ON and infinite while loop to indicate I2C transmission problem
    GPIO_PinOutSet(BSP_GPIO_LED1_PORT, BSP_GPIO_LED1_PIN);
    while(1);
  }
}



// I2C initialization
void lm_75_init(){

  initCMU();

  initGPIO();

  initI2C();

}







float lm_75_readTemp(){

  i2c_txBuffer[0] = LM75_REG_TEMP;

  I2C_LeaderWrite(LM75_ADDR , 0, i2c_txBuffer, 1);
  I2C_LeaderRead(LM75_ADDR , 0, i2c_rxBuffer, 2);

  int16_t i16 = (i2c_rxBuffer[0] << 8) | i2c_rxBuffer[1];

  temp = i16 / 256.0;

  i2c_startTx = false;

 // printf("%f",temp);
  return temp;

}


void lm_75_setConfig(bool mode){
  if(mode){
      i2c_txBuffer[0] = LM75_REG_CONF;
      i2c_txBuffer[1] = 0x02;

      I2C_LeaderWrite(LM75_ADDR , 0, i2c_txBuffer, 2);
  }else{
      i2c_txBuffer[0] = LM75_REG_CONF;
      i2c_txBuffer[1] = 0x00;

      I2C_LeaderWrite(LM75_ADDR , 0, i2c_txBuffer, 2);
  }
}

void lm_75_setThreshold(float t_os){

  int16_t i16;

  // This section of code sets the TOS register

  i2c_txBuffer[0]=LM75_REG_TOS;
  i16 = (int16_t)(t_os*256) & 0xFF80;
  i2c_txBuffer[1]=(i16 >> 8) & 0xff;
  i2c_txBuffer[2]=i16 & 0xff;

  I2C_LeaderWrite(LM75_ADDR , 0, i2c_txBuffer, 3);
}



void lm_75_setThyst(float t_hyst){
  int16_t i16;

  i2c_txBuffer[0]=LM75_REG_THYST;
  i16 = (int16_t)(t_hyst*256) & 0xFF80;
  i2c_txBuffer[1]=(i16 >> 8) & 0xff;
  i2c_txBuffer[2]=i16 & 0xff;

  I2C_LeaderWrite(LM75_ADDR , 0, i2c_txBuffer, 3);
}
