################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../autogen/sl_board_default_init.c \
../autogen/sl_device_init_clocks.c \
../autogen/sl_event_handler.c \
../autogen/sl_iostream_handles.c \
../autogen/sl_iostream_init_usart_instances.c 

OBJS += \
./autogen/sl_board_default_init.o \
./autogen/sl_device_init_clocks.o \
./autogen/sl_event_handler.o \
./autogen/sl_iostream_handles.o \
./autogen/sl_iostream_init_usart_instances.o 

C_DEPS += \
./autogen/sl_board_default_init.d \
./autogen/sl_device_init_clocks.d \
./autogen/sl_event_handler.d \
./autogen/sl_iostream_handles.d \
./autogen/sl_iostream_init_usart_instances.d 


# Each subdirectory must supply rules for building sources it contributes
autogen/sl_board_default_init.o: ../autogen/sl_board_default_init.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD4182A"' '-DSL_BOARD_REV="B06"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\config" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\autogen" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\common\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\board\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\CMSIS\Core\Include" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\driver\configuration_over_swo\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\driver\debug\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\device_init\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emdrv\dmadrv\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emdrv\common\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emlib\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\iostream\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\driver\mx25_flash_shutdown\inc\sl_mx25_flash_shutdown_usart" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\util\third_party\printf" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\util\third_party\printf\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\common\toolchain\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\system\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\udelay\inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_board_default_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_device_init_clocks.o: ../autogen/sl_device_init_clocks.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD4182A"' '-DSL_BOARD_REV="B06"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\config" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\autogen" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\common\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\board\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\CMSIS\Core\Include" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\driver\configuration_over_swo\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\driver\debug\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\device_init\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emdrv\dmadrv\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emdrv\common\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emlib\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\iostream\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\driver\mx25_flash_shutdown\inc\sl_mx25_flash_shutdown_usart" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\util\third_party\printf" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\util\third_party\printf\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\common\toolchain\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\system\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\udelay\inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_device_init_clocks.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_event_handler.o: ../autogen/sl_event_handler.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD4182A"' '-DSL_BOARD_REV="B06"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\config" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\autogen" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\common\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\board\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\CMSIS\Core\Include" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\driver\configuration_over_swo\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\driver\debug\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\device_init\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emdrv\dmadrv\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emdrv\common\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emlib\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\iostream\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\driver\mx25_flash_shutdown\inc\sl_mx25_flash_shutdown_usart" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\util\third_party\printf" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\util\third_party\printf\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\common\toolchain\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\system\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\udelay\inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_event_handler.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_iostream_handles.o: ../autogen/sl_iostream_handles.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD4182A"' '-DSL_BOARD_REV="B06"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\config" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\autogen" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\common\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\board\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\CMSIS\Core\Include" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\driver\configuration_over_swo\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\driver\debug\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\device_init\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emdrv\dmadrv\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emdrv\common\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emlib\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\iostream\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\driver\mx25_flash_shutdown\inc\sl_mx25_flash_shutdown_usart" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\util\third_party\printf" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\util\third_party\printf\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\common\toolchain\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\system\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\udelay\inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_iostream_handles.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_iostream_init_usart_instances.o: ../autogen/sl_iostream_init_usart_instances.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFR32MG22C224F512IM40=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DHFXO_FREQ=38400000' '-DSL_BOARD_NAME="BRD4182A"' '-DSL_BOARD_REV="B06"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\config" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\autogen" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\Device\SiliconLabs\EFR32MG22\Include" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\common\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\board\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\CMSIS\Core\Include" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\driver\configuration_over_swo\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\driver\debug\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\device_init\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emdrv\dmadrv\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emdrv\common\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\emlib\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\iostream\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\hardware\driver\mx25_flash_shutdown\inc\sl_mx25_flash_shutdown_usart" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\util\third_party\printf" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\util\third_party\printf\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\common\toolchain\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\system\inc" -I"C:\Users\susha\SimplicityStudio\v5_workspace\LM72_driver\gecko_sdk_4.4.1\platform\service\udelay\inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_iostream_init_usart_instances.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


