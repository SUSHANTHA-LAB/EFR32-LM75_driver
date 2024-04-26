##LM75 Temperature Sensor Driver for ERF/EFM32 Devices

This repository contains a driver for interfacing with the LM75 temperature sensor on ERF/EFM32 devices. The LM75 temperature sensor integrates a delta-sigma analog-to-digital converter and a digital overtemperature detector. Through its I2C interface, the host can query the LM75 to read temperature at any time.

##Features
Read temperature data via I2C interface
Digital overtemperature detection
Programmable temperature limit (TOS)
Hysteresis temperature control (THYST)
Comparator or interrupt mode for overtemperature output (OS)
Multiple device support on the same bus

##Usage
Clone this repository to your project directory.
Import the provided .sls files into Simplicity Studio to include the driver in your project.
Configure the LM75 address using the three pins.
Access the temperature readings and control features through the provided driver functions.