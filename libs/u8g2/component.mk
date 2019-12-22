# COMPONENT_SUBMODULES	:= u8g2

COMPONENT_INCDIRS := ./u8g2/cppsrc ./u8g2/csrc
COMPONENT_SRCFILES := \
	./u8g2/cppsrc/U8g2lib.cpp\
	./u8g2/cppsrc/U8x8lib.cpp\
	./u8g2/csrc/u8g2_setup.c\
	./u8g2/csrc/u8g2_font.c\
	./u8g2/csrc/u8g2_fonts.c\
	./u8g2/csrc/u8g2_intersection.c\
	./u8g2/csrc/u8g2_buffer.c\
	./u8g2/csrc/u8g2_hvline.c\
	./u8g2/csrc/u8g2_ll_hvline.c\
	./u8g2/csrc/u8g2_cleardisplay.c\
	./u8g2/csrc/u8g2_d_memory.c\
	./u8g2/csrc/u8g2_d_setup.c\
	./u8g2/csrc/u8x8_setup.c\
	./u8g2/csrc/u8x8_8x8.c\
	./u8g2/csrc/u8x8_display.c\
	./u8g2/csrc/u8x8_byte.c\
	./u8g2/csrc/u8x8_gpio.c\
	./u8g2/csrc/u8x8_cad.c\
	./u8g2/csrc/u8x8_d_ssd1306_128x64_noname.c
