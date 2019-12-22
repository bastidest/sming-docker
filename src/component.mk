## Application Component configuration
## Parameters configured here will override default and ENV values
## Uncomment and change examples:

## Add your source directories here separated by space
# COMPONENT_SRCDIRS := app
# COMPONENT_SRCFILES :=

## If you require any Libraries list them here
ARDUINO_LIBRARIES := u8g2

## List the names of any additional Components required for this project
# COMPONENT_DEPENDS :=

## Set paths for any GIT submodules your application uses
# COMPONENT_SUBMODULES :=

## Append any targets to be built as dependencies of the project, such as generation of additional binary files
# CUSTOM_TARGETS += 

## Additional object files to be included with the application library
# EXTRA_OBJ :=

## Additional libraries to be linked into the project
# EXTRA_LIBS :=

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

