SMING_BUILDER_IMAGE := sming-builder
PROJECT_NAME := $$(basename $$(pwd))
PROJECT_PATH := /opt/Sming/projects/$(PROJECT_NAME)
LIBRARIES_PATH := /opt/Sming/Sming/Libraries
CONTAINER_NAME := sming_$(PROJECT_NAME)

DOCKER_EXEC := docker exec -w $(PROJECT_PATH) $(CONTAINER_NAME)

.PHONY: build
build:
	$(DOCKER_EXEC) make

.PHONY: flash
flash:
	$(DOCKER_EXEC) make flash

.PHONY: configure
configure:
	docker stop $(CONTAINER_NAME) || true
	docker rm $(CONTAINER_NAME) || true

	git submodule init
	git submodule update
	cd ./libs/u8g2/u8g2 && git apply ../u8g2.patch

	docker run\
	 -d\
	 --init\
	 --name	$(CONTAINER_NAME)\
	 -v $$(pwd)/src:$(PROJECT_PATH)\
	 -v $$(pwd)/libs/u8g2:$(LIBRARIES_PATH)/u8g2\
	 --device /dev/ttyUSB0\
	 $(SMING_BUILDER_IMAGE)\
	 tail -f /dev/null

.PHONY: include
include:
	docker exec -w /opt $(CONTAINER_NAME) bash /opt/export-includes.sh
	rm -rf ./include
	docker cp sming_sming-docker:/opt/include ./include

.PHONY: sming-builder
sming-builder:
	docker build --tag $(SMING_BUILDER_IMAGE) .
