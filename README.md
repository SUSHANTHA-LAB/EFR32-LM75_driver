## LM75 Temperature Sensor Driver for ERF/EFM32 Devices

This repository contains a driver for interfacing with the LM75 temperature sensor on ERF/EFM32 devices. The LM75 temperature sensor integrates a delta-sigma analog-to-digital converter and a digital overtemperature detector. Through its I2C interface, the host can query the LM75 to read temperature at any time. LM75 datasheet: https://www.analog.com/media/en/technical-documentation/data-sheets/lm75.pdf

## Features
    1. Read temperature data via I2C interface
    2. Digital overtemperature detection
    3. Programmable temperature limit (TOS)
    4. Hysteresis temperature control (THYST)
    5. Comparator or interrupt mode for overtemperature output (OS)
    6. Multiple device support on the same bus

## Usage
Clone this repository to your project directory.
Import the provided .sls files into Simplicity Studio to include the driver in your project.
Configure the LM75 address using the three pins.
Access the temperature readings and control features through the provided driver functions.

```c
#include "app.h"
#include "printf.h"

#include "lm_75.h"

void app_init(void)
{
  // Sensor Init 
  lm_75_init();

  float temp = lm_75_readTemp();

  printf("temp %0.3f \r\n",temp);
}

/***************************************************************************//**
 * App ticking function.
 ******************************************************************************/
void app_process_action(void)
{
}

```


## Functions 
```c
// Init sensor
void lm_75_init();
// Set config to comparator or thermistor mode
void lm_75_setConfig(bool mode);
// read the temp value
float lm_75_readTemp();
// Set temperature Limit
void lm_75_setThreshold(float t_os);
// Set Hysteresis temperature control
void lm_75_setThyst(float t_hyst);
```