#!/bin/bash

set -euxo pipefail

mkdir -p ./include
find ./Sming/Sming/Core -name '*.h' -exec cp {} --parents ./include/ \;
find ./Sming/Sming/System -name '*.h' -exec cp {} --parents ./include/ \;
find ./Sming/Sming/Arch/Esp8266/System -name '*.h' -exec cp {} --parents ./include/ \;
find ./Sming/Sming/Arch/Esp8266/Components/esp8266 -name '*.h' -exec cp {} --parents ./include/ \;
find ./Sming/Sming/Arch/Esp8266/Components/libc -name '*.h' -exec cp {} --parents ./include/ \;
find ./Sming/Sming/Wiring -name '*.h' -exec cp {} --parents ./include/ \;
