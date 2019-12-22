## Application Component configuration
## Parameters configured here will override default and ENV values
## Uncomment and change examples:

## Add your source directories here separated by space
# COMPONENT_SRCDIRS := ./libs/u8g2/cppsrcp
COMPONENT_SRCFILES := \
	./libs/u8g2/cppsrc/U8g2lib.cpp\
	./libs/u8g2/cppsrc/U8x8lib.cpp\
	./libs/u8g2/csrc/u8g2_setup.c\
	./libs/u8g2/csrc/u8g2_font.c\
	./libs/u8g2/csrc/u8g2_fonts.c\
	./libs/u8g2/csrc/u8g2_intersection.c\
	./libs/u8g2/csrc/u8g2_buffer.c\
	./libs/u8g2/csrc/u8g2_hvline.c\
	./libs/u8g2/csrc/u8g2_ll_hvline.c\
	./libs/u8g2/csrc/u8g2_cleardisplay.c\
	./libs/u8g2/csrc/u8g2_d_memory.c\
	./libs/u8g2/csrc/u8g2_d_setup.c\
	./libs/u8g2/csrc/u8x8_setup.c\
	./libs/u8g2/csrc/u8x8_8x8.c\
	./libs/u8g2/csrc/u8x8_display.c\
	./libs/u8g2/csrc/u8x8_byte.c\
	./libs/u8g2/csrc/u8x8_gpio.c\
	./libs/u8g2/csrc/u8x8_cad.c\
	./libs/u8g2/csrc/u8x8_d_ssd1306_128x64_noname.c\

COMPONENT_INCDIRS := ./libs/u8g2/cppsrc ./libs/u8g2/csrc

## If you require any Libraries list them here
# ARDUINO_LIBRARIES := U8g2lib

## List the names of any additional Components required for this project
# COMPONENT_DEPENDS :=

## Set paths for any GIT submodules your application uses
# COMPONENT_SUBMODULES :=

## Append any targets to be built as dependencies of the project, such as generation of additional binary files
# CUSTOM_TARGETS += 

## Additional object files to be included with the application library
# EXTRA_OBJ := U8g2lib

## Additional libraries to be linked into the project
# EXTRA_LIBS := U8g2lib

## Provide any additional compiler flags
# COMPONENT_CFLAGS :=
# COMPONENT_CXXFLAGS :=

## Configure flash parameters (for ESP12-E and other new boards):
# WEMOS D1 mini pro settings
SPI_MODE := dio
SPI_SIZE := 4M

## SPIFFS options
DISABLE_SPIFFS := 1
# SPIFF_FILES = files

## Refer to Basic_rBoot sample for options relating to rBoot

