#ifndef __OLED_H
#define __OLED_H	 

 #include "soc_ls1c102.h"
//  #include "main.h"
#include "soc_i2c.h"
#include "soc_ls1c102.h"
#include "soc_gpio.h"

 #define u8 uint8_t
 #define u32 uint32_t

#define OLED_TRANS      *(volatile int*) 0xbfe8c000
#define OLED_SATRT_STOP *(volatile int*) 0xbfe8c004

#define OLED_ADD	0x78  // OLED I2C地址(写模式)
#define COM				0x00  // OLED 命令寄存器地址
#define DAT 			0x40  // OLED 数据寄存器地址
#define OLED_CMD  0	//写命令
#define OLED_DATA 1	//写数据

#define OLED_MODE 0
#define SIZE 8
#define XLevelL		0x00
#define XLevelH		0x10
#define Max_Column	128
#define Max_Row		64
#define	Brightness	0xFF 
#define X_WIDTH 	128
#define Y_WIDTH 	64	    
#define OLED_SCLK_Clr() gpio_write(1, 0);//SCL
#define OLED_SCLK_Set() gpio_write(1, 1);

#define OLED_SDIN_Clr() gpio_write(13, 0);//SDA
#define OLED_SDIN_Set() gpio_write(13, 1);
 		     
void IIC_Start(void);
void IIC_Stop(void);
void IIC_Wait_Ack(void);
void Write_IIC_Byte(unsigned char IIC_Byte);

void OLED_Init(void);
void OLED_SetPos(uint32_t x, uint32_t y);  //设置起始点坐标
void OLED_Fill(uint8_t fill_Data);            //全屏填充
void OLED_CLS(void);                                 //清屏
void OLED_ON(void);                                 //OLED显示屏电源的开启
void OLED_OFF(void);                               // 休眠状态的控制
void I2C_WriteByte(uint8_t u8Addr, uint8_t u8Data) ;

void OLED_ShowStr(uint32_t x, uint32_t y, uint8_t ch[], uint8_t TextSize);
void OLED_ShowCN(uint32_t x, uint32_t y, uint8_t N);
void OLED_ShowCN_STR(u32 x , u32 y , u32 begin , u32 num);
void OLED_ShowChar(u32 x, u32 y, u8 chr, u8 Char_Size);
u32 oled_pow(u32 m, u32 n);
void OLED_ShowNum(u32 x,u32 y,u32 num,u8 len,u8 size2);
// void OLED_ShowNum(u8 x,u8 y,u32 num,u8 len,u8 size2);
void OLED_DrawBMP(uint32_t x0, uint32_t y0, uint32_t x1, uint32_t y1, const uint8_t *BMP);
void OLED_DrawGIF(uint8_t x0, uint8_t y0,uint8_t x1, uint8_t y1, uint8_t k, int m, uint8_t GIF[][m]);
// void show_title(void);
#endif
