#ifndef __OPENLOONGSON_OLED_H
#define __OPENLOONGSON_OLED_H

#define  SIZE                                   16
#define  X_WIDTH                                128
#define  Y_WIDTH                                64
#define  Page                                   8

//GPIO
#define  OLED_RST_PIN                           54
#define  OLED_DC_PIN                            55

#define  OLED_DC_H                              rt_pin_write(OLED_DC_PIN, PIN_HIGH)
#define  OLED_DC_L                              rt_pin_write(OLED_DC_PIN, PIN_LOW)
#define  OLED_RST_H                             rt_pin_write(OLED_RST_PIN, PIN_HIGH)
#define  OLED_RST_L                             rt_pin_write(OLED_RST_PIN, PIN_LOW)


void OLED_GPIO_Config(void);
void SPI_Config(void);
void OLED_WB(unsigned char TxData);
void OLED_Set_Pos(unsigned char x, unsigned char y);
void OLED_ShowChar(rt_uint8_t x, rt_uint8_t y, rt_uint8_t chr);
void OLED_ShowNum(rt_uint8_t x, rt_uint8_t y,rt_uint8_t num);
void OLED_ShowOneNum(rt_uint8_t x, rt_uint8_t y, rt_uint8_t num);
void OLED_ShowCHinese(rt_uint8_t x,rt_uint8_t y,rt_uint8_t no);
void OLED_DLY_ms(unsigned int ms);
void OLED_Fill(unsigned char bmp_dat);
void OLED_Clear(void);
void OLED_Init(void);


#endif

