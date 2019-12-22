#include <SmingCore.h>
#include "U8g2lib.h"

Timer procTimer;
#define OLED_RESET 0  // GPIO0
U8G2_SSD1306_128X64_NONAME_1_SW_I2C dsp1(U8G2_R0, 5, 4, 0); //D1 == 5 == SDL == clock

void blink()
{
  Serial.println("Serial hello world!");

  dsp1.firstPage();
  dsp1.drawStr(0,  8, "The display works");
  dsp1.nextPage();
}

void init()
{
  Serial.begin(SERIAL_BAUD_RATE);
  
  dsp1.setI2CAddress(0x3C * 2);
  dsp1.begin();
  dsp1.setFont(u8g2_font_profont12_tr);

  procTimer.initializeMs(1000, blink).start();
}
