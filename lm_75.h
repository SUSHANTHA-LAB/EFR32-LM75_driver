
#include "app.h"

#include <stdio.h>

#include "em_device.h"
#include "em_chip.h"
#include "em_i2c.h"
#include "em_cmu.h"
#include "em_emu.h"
#include "em_gpio.h"


#define BSP_GPIO_LED0_PORT      gpioPortD
#define BSP_GPIO_LED0_PIN       2
#define BSP_GPIO_LED1_PORT      gpioPortD
#define BSP_GPIO_LED1_PIN       3



#define BSP_GPIO_PB0_PORT       gpioPortB
#define BSP_GPIO_PB0_PIN        0
#define BSP_GPIO_PB1_PORT       gpioPortB
#define BSP_GPIO_PB1_PIN        1


// Defines
#define LM75_ADDR              0x90
#define I2C_TXBUFFER_SIZE                 3
#define I2C_RXBUFFER_SIZE                 3





/* The LM75 registers */
#define LM75_REG_TEMP   0x00
#define LM75_REG_CONF   0x01
#define PCT2075_REG_IDLE  0x04


#define LM75_REG_TOS (0x03) // TOS Register
#define LM75_REG_THYST (0x02) // THYST Register

void initCMU();
void initGPIO();
void initI2C();

void I2C_LeaderWrite(uint16_t followerAddress, uint8_t targetAddress, uint8_t *txBuff, uint8_t numBytes);

void I2C_LeaderRead(uint16_t followerAddress, uint8_t targetAddress, uint8_t *rxBuff, uint8_t numBytes);

void lm_75_init();

void lm_75_setConfig(bool mode);

float lm_75_readTemp();

void lm_75_setThreshold(float t_os);

void lm_75_setThyst(float t_hyst);

//void lm_75_getConfig();
//
//int lm_75_getThreshold();
//
//int lm_75_getThyst();

