/**
 * @file oled.c
 * @author huangjin
 * @brief    oled屏幕显示硬件I2C
 * @version 2.0
 * @date 2025-5-14
 *
 * @copyright Copyright (c) 2023
 *
 */
#include "soc_i2c.h"
#include "oled.h"
#include "oled_Font.h"    //字库（可以自己制作）
#include "my_delay.h"


void IIC_Start()
{

	OLED_SCLK_Set() ;
	OLED_SDIN_Set();
	OLED_SDIN_Clr();
	OLED_SCLK_Clr();
}

/**********************************************
//IIC Stop
**********************************************/
void IIC_Stop()
{
	OLED_SCLK_Set() ;
//	OLED_SCLK_Clr();
	OLED_SDIN_Clr();
	OLED_SDIN_Set();
}

void IIC_Wait_Ack()
{

	OLED_SCLK_Set() ;
	OLED_SCLK_Clr();
}

/**********************************************
// IIC Write byte
**********************************************/

void Write_IIC_Byte(unsigned char IIC_Byte)
{
	uint8_t i;
	uint8_t m,da;
	da=IIC_Byte;
	OLED_SCLK_Clr();
	for(i=0;i<8;i++)		
	{
			m=da;
		//	OLED_SCLK_Clr();
		m=m&0x80;
		if(m==0x80)
		{OLED_SDIN_Set();}
		else OLED_SDIN_Clr();
			da=da<<1;
		OLED_SCLK_Set();
		OLED_SCLK_Clr();
		}


}
/****************************************************************
  * 函数名：I2C_WriteByte
  * 功  能：写一个字节
  * 参  数：u8Addr要写入的地址
			u8Data要写入的数据
  * 返回值：无
  * 说  明：无
****************************************************************/
void I2C_WriteByte(uint8_t u8Addr, uint8_t u8Data) {
	soc_I2C_GenerateSTART(ENABLE);// 起始信号

	soc_I2C_SendData(OLED_ADD);// 器件寻址+读/写选择
	
	soc_I2C_wait();
	
	soc_I2C_SendData(0x00);
	
	soc_I2C_wait();
	
	soc_I2C_SendData(u8Addr);

	soc_I2C_wait();
	
	soc_I2C_SendData(u8Data);
	
	soc_I2C_wait();

    soc_I2C_GenerateSTOP(ENABLE);// 停止信号

    soc_I2C_delay(20);// 需要延时 2u ，保证下次能正常开始传输
}

//硬件IIC驱动代码
void WriteCmd(uint8_t I2C_Command) //写命令利用I2C通讯
 {
	// I2C_WriteByte(0X00,I2C_Command);
	soc_I2C_GenerateSTART(ENABLE);// 起始信号

	soc_I2C_SendData(OLED_ADD);// 器件寻址+读/写选择
	
	soc_I2C_wait();
	// my_delay_us(5);
	
	soc_I2C_SendData((uint8_t)(0x00 & 0Xff));
	
	soc_I2C_wait();
	
	// my_delay_us(5);
	soc_I2C_SendData(I2C_Command);
	
	soc_I2C_wait();

    soc_I2C_GenerateSTOP(ENABLE);// 停止信号

    soc_I2C_delay(20);// 需要延时 2u ，保证下次能正常开始传输
	// my_delay_us(5);
//    IIC_Start();
//    Write_IIC_Byte(0x78);            //Slave address,SA0=0
// 	IIC_Wait_Ack();	
//    Write_IIC_Byte(0x00);			//write command
// 	IIC_Wait_Ack();	
//    Write_IIC_Byte(I2C_Command); 
// 	IIC_Wait_Ack();	
//    IIC_Stop();
	// my_delay_ms(10);

 }
		
void WriteDat(uint8_t I2C_Data)    //写数据利用I2C通讯
 {
	// I2C_WriteByte((uint8_t)DAT,I2C_Data);
	soc_I2C_GenerateSTART(ENABLE);// 起始信号

	soc_I2C_SendData(OLED_ADD);// 器件寻址+读/写选择
	
	soc_I2C_wait();
	// my_delay_us(5);
	
	soc_I2C_SendData((uint8_t)(0x40 & 0Xff));
	
	soc_I2C_wait();
	
	// my_delay_us(5);
	soc_I2C_SendData(I2C_Data);
	
	soc_I2C_wait();

    soc_I2C_GenerateSTOP(ENABLE);// 停止信号

    soc_I2C_delay(20);// 需要延时 2u ，保证下次能正常开始传输
	// my_delay_us(5);
	// my_delay_ms(10);
//    IIC_Start();
//    Write_IIC_Byte(0x78);			//D/C#=0; R/W#=0
// 	IIC_Wait_Ack();	
//    Write_IIC_Byte(0x40);			//write data
// 	IIC_Wait_Ack();	
//    Write_IIC_Byte(I2C_Data);
// 	IIC_Wait_Ack();	
//    IIC_Stop();
  }
 
void OLED_Init(void)
{
	my_delay_ms(800); //这里的延时很重要

	WriteCmd(0xAE); //display off

	WriteCmd(0x20);	//Set Memory Addressing Mode	
	WriteCmd(0x10);	//00,Horizontal Addressing Mode;01,Vertical Addressing Mode;10,Page Addressing Mode (RESET);11,Invalid
	WriteCmd(0xb0);	//Set Page Start Address for Page Addressing Mode,0-7
	
	WriteCmd(0xc8);	//Set COM Output Scan Direction
	WriteCmd(0x00); //---set low column address
	WriteCmd(0x10); //---set high column address
	
	WriteCmd(0x40); //--set start line address
	WriteCmd(0x81); //--set contrast control register
	WriteCmd(0xff); //亮度调节 0x00~0xff
	WriteCmd(0xa1); //--set segment re-map 0 to 127
	
	WriteCmd(0xa6); //--set normal display
	WriteCmd(0xa8); //--set multiplex ratio(1 to 64)
	WriteCmd(0x3F); //
	WriteCmd(0xa4); //0xa4,Output follows RAM content;0xa5,Output ignores RAM content
	WriteCmd(0xd3); //-set display offset
	WriteCmd(0x00); //-not offset
	
	WriteCmd(0xd5); //--set display clock divide ratio/oscillator frequency
	WriteCmd(0xf0); //--set divide ratio
	WriteCmd(0xd9); //--set pre-charge period
	WriteCmd(0x22); //
	
	WriteCmd(0xda); //--set com pins hardware configuration
	WriteCmd(0x12);
	WriteCmd(0xdb); //--set vcomh
	WriteCmd(0x20); //0x20,0.77xVcc
	WriteCmd(0x8d); //--set DC-DC enable
	
	WriteCmd(0x14); //
	WriteCmd(0xaf); //--turn on oled panel
}
 
void OLED_SetPos(uint32_t x, uint32_t y) //设置起始点坐标
{ 
	WriteCmd(0xb0+y);
	WriteCmd(((x&0xf0)>>4)|0x10);
	WriteCmd((x&0x0f)|0x01);
}
 
void OLED_Fill(uint8_t fill_Data)//????
{
	uint32_t m,n;
	for(m=0;m<8;m++)
	{
		WriteCmd(0xb0+m);		//page0-page1
		WriteCmd(0x00);		//low column start address
		WriteCmd(0x10);		//high column start address
		for(n=0;n<128;n++)
			{
				WriteDat(fill_Data);
			}
	}
}
 
 
void OLED_CLS(void)//清屏
{
	OLED_Fill(0x00);
}
 
void OLED_ON(void)
{
	WriteCmd(0X8D);  //设置电荷泵
	WriteCmd(0X14);  //开启电荷泵
	WriteCmd(0XAF);  //OLED唤醒
}
 
void OLED_OFF(void)
{
	WriteCmd(0X8D);  //设置电荷泵
	WriteCmd(0X10);  //关闭电荷泵
	WriteCmd(0XAE);  //OLED休眠
}
// Parameters     : x,y -- 起始点坐标(x:0~127, y:0~7); ch[] -- 要显示的字符串; TextSize -- 字符大小(1:6*8 ; 2:8*16)
// Description    : 显示oled_Font.h中的ASCII字符,有6*8和8*16可选择
void OLED_ShowStr(uint32_t x, uint32_t y, uint8_t ch[], uint8_t TextSize)
{
	uint32_t c = 0,i = 0,j = 0;
	switch(TextSize)
	{
		case 1:
		{
			while(ch[j] != '\0')
			{
				c = ch[j] - 32;
				if(x > 126)
				{
					x = 0;
					y++;
				}
				OLED_SetPos(x,y);
				for(i=0;i<6;i++)
					WriteDat(F6x8[c][i]);
				x += 6;
				j++;
			}
		}break;
		case 2:
		{
			while(ch[j] != '\0')
			{
				c = ch[j] - 32;
				if(x > 120)
				{
					x = 0;
					y++;
				}
				OLED_SetPos(x,y);
				for(i=0;i<8;i++)
					WriteDat(F8X16[c*16+i]);
				OLED_SetPos(x,y+1);
				for(i=0;i<8;i++)
					WriteDat(F8X16[c*16+i+8]);
				x += 8;
				j++;
			}
		}break;
	}
}
// Parameters     : x,y -- 坐标(x:0~127, y:0~7); N:汉字序号(对应中文字库数组的索引号)
// Description    : 显示16x16中文字符
void OLED_ShowCN(uint32_t x, uint32_t y, uint8_t N)
{
	uint8_t wm=0;
	unsigned int  adder=32*N;
	OLED_SetPos(x , y);
	for(wm = 0;wm < 16;wm++)
	{
		WriteDat(F16x16[adder]);
		adder += 1;
	}
	OLED_SetPos(x,y + 1);
	for(wm = 0;wm < 16;wm++)
	{
		WriteDat(F16x16[adder]);
		adder += 1;
	}
}
// 参数说明：x:起始横坐标  取值范围为0到127
//           y:起始纵坐标(范围0-7)  
//           begin:起始字符在中文字库数组中的索引号  
//           num:显示的字符个数
//           中文字库数组应包含在oled_Font.c文件中
// 示例：假设中文字库中有0和1两个字符，显示0和1，调用方式为：x:0,y:2,begin:0,num:2
void OLED_ShowCN_STR(u32 x , u32 y , u32 begin , u32 num)
{
	u32 i;
	for(i=0;i<num;i++){OLED_ShowCN(i*16+x,y,i+begin);}    //OLED显示
}
// 参数说明：x0,y0 -- 起始坐标(x0:0~127, y0:0~7); x1,y1 -- 结束坐标(注意是像素坐标，不是点阵坐标)(x1:1~128,y1:1~8)
// 描述：显示BMP图片
//eg: OLED_DrawBMP(30, 2, 80, 7, (uint8_t *)gImage_cc);
void OLED_DrawBMP(uint32_t x0, uint32_t y0, uint32_t x1, uint32_t y1, const uint8_t *BMP)
{
	uint32_t j=0;
	uint32_t x,y;

  if(y1%8==0)
		y = y1/8;
  else
		y = y1/8 + 1;
	for(y=y0;y<y1;y++)
	{
		OLED_SetPos(x0,y);
    for(x=x0;x<x1;x++)
		{
			WriteDat(BMP[j++]);
		}
	}
}
/**
 * @brief 在OLED屏幕上显示一个字符
 * @param x 字符的起始横坐标，取值范围为0到127
 * @param y 字符的起始纵坐标，取值范围为0到63
 * @param chr 要显示的字符
 * @param Char_Size 字符的大小，可选值为16或8
 * @retval None
 */

void OLED_ShowChar(u32 x,u32 y,u8 chr,u8 Char_Size)
{      	
	uint32_t c=0,i=0;	
		c=chr-' ';// 将字符转换为字库中对应的索引			
		if(x>128-1){x=0;y=y+2;}
		if(Char_Size ==16)
			{
			OLED_SetPos(x,y);	
			for(i=0;i<8;i++)
			WriteDat(F8X16[c*16+i]);
			OLED_SetPos(x,y+1);
			for(i=0;i<8;i++)
			WriteDat(F8X16[c*16+i+8]); // 在OLED上显示16x16大小的字符
			}
			else {	
				OLED_SetPos(x,y);
				for(i=0;i<6;i++)
				WriteDat(F6x8[c][i]);// 在OLED上显示8x6大小的字符
				
			}
}
/**
 * @brief 计算m的n次方
 * @param m 底数
 * @param n 指数
 * @retval 计算结果
 */
u32 oled_pow(u32 m, u32 n)
{
	u32 result = 1;	 
	while (n--) {
		result =result* m;    
	}
	return result;
}
//在OLED屏幕上显示数字
//x, y：显示起始坐标 
//len：要显示的位数
//size：字体大小 
//mode：对齐方式，0表示不填充空格，1表示左对齐填充空格
//num：要显示的数值（范围：0~4294967295）	 		  
void OLED_ShowNum(u32 x,u32 y,u32 num,u8 len,u8 size2)
{         	
	uint32_t t;
	uint32_t temp;
	uint32_t enshow=0;						   
	for(t=0;t<len;t++)
	{
		temp=(num/oled_pow(10,len-t-1))%10;
		if((enshow==0)&&(t<(len-1)))
		{
			if(temp==0)
			{
				OLED_ShowChar(x+(size2/2)*t,y,' ',size2);
				continue;
			}else enshow=1; 
		}
	 	OLED_ShowChar(x+(size2/2)*t,y,temp+'0',size2); 
	}
}
/*
	@brief		在OLED屏幕上绘制GIF图像
	@param		x0:起始横坐标
				y0:起始纵坐标
				x1:结束横坐标
				y1:结束纵坐标
				k:结束纵坐标
				m: 图像每行字节数 
				BMP[][m]:图像数据数组
	@retval			?
 */

void OLED_DrawGIF(uint8_t x0, uint8_t y0,uint8_t x1, uint8_t y1, uint8_t k, int m, uint8_t GIF[][m])
{
	unsigned int j=0; //计数器 
 	uint8_t x,y,i; //循环变量
  
 	if(y1%8==0) y=y1/8;    //计算需要多少行
 	 else y=y1/8+1;
	for (i=0;i<k;i++) //循环绘制每一帧
	{
		j = 0;
		for(y=y0;y<y1;y++) //设置绘制起始位置
		{
			OLED_SetPos(x0,y); //设置绘制起始位置
   			
			for(x=x0;x<x1;x++) //循环绘制每一列，从x0到x1
	    		{
						
	    			WriteDat(GIF[i][j++]);	//延时，控制帧率   	
	    		}
		}
		//my_delay_ms(80);//延时，控制帧率

	}
}

// void show_title(void)
// {
// 	uint32_t i;
// 	OLED_CLS();
// 	for ( i = 0; i < 10; i++)
// 	{
// 		if(i<4)
// 			OLED_ShowCN(20+(i*16),1,Title,i);
			
// 		else
// 			OLED_ShowCN(10+((i-5)*16),4,Title,i);
// 		/* code */
// 	}

// }


