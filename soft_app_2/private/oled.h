#ifndef __OLED_H
#define __OLED_H	 

 #include "soc_ls1c102.h"
//  #include "main.h"
#include "soc_i2c.h"
#include "soc_ls1c102.h"

 #define u8 uint8_t
 #define u32 uint32_t

#define OLED_ADD	0x78  // OLED I2C��ַ(дģʽ)
#define COM				0x00  // OLED ����Ĵ�����ַ
#define DAT 			0x40  // OLED ���ݼĴ�����ַ
#define READ_CMD				1
#define WRITE_CMD				0

void OLED_Init(void);
void OLED_SetPos(uint8_t x, uint8_t y);  //������ʼ������
void OLED_Fill(uint8_t fill_Data);            //ȫ�����
void OLED_CLS(void);                                 //����
void OLED_ON(void);                                 //OLED��ʾ����Դ�Ŀ���
void OLED_OFF(void);                               // ����״̬�Ŀ���

void OLED_ShowStr(uint8_t x, uint8_t y, uint8_t ch[], uint8_t TextSize);
void OLED_ShowCN(uint8_t x, uint8_t y, uint8_t N);
void OLED_ShowCN_STR(u8 x , u8 y , u8 begin , u8 num);
void OLED_ShowChar(u8 x, u8 y, u8 chr, u8 Char_Size);
u32 oled_pow(u8 m, u8 n);
void OLED_ShowNum(u8 x,u8 y,u32 num,u8 len,u8 size2);
void OLED_DrawBMP(int x0, int y0, int x1, int y1, const uint8_t *BMP);
void OLED_DrawGIF(uint8_t x0, uint8_t y0,uint8_t x1, uint8_t y1, uint8_t k, int m, uint8_t GIF[][m]);
#endif
