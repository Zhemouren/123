/**
 * @file oled.c
 * @author huangjin
 * @brief    oled��Ļ��ʾӲ��I2C
 * @version 2.0
 * @date 2025-5-14
 *
 * @copyright Copyright (c) 2023
 *
 */
#include "soc_i2c.h"
#include "oled.h"
#include "oled_Font.h"    //�ֿ⣨�����Լ�������
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
  * ��������I2C_WriteByte
  * ��  �ܣ�дһ���ֽ�
  * ��  ����u8AddrҪд��ĵ�ַ
			u8DataҪд�������
  * ����ֵ����
  * ˵  ������
****************************************************************/
void I2C_WriteByte(uint8_t u8Addr, uint8_t u8Data) {
	soc_I2C_GenerateSTART(ENABLE);// ��ʼ�ź�

	soc_I2C_SendData(OLED_ADD);// ����Ѱַ+��/дѡ��
	
	soc_I2C_wait();
	
	soc_I2C_SendData(0x00);
	
	soc_I2C_wait();
	
	soc_I2C_SendData(u8Addr);

	soc_I2C_wait();
	
	soc_I2C_SendData(u8Data);
	
	soc_I2C_wait();

    soc_I2C_GenerateSTOP(ENABLE);// ֹͣ�ź�

    soc_I2C_delay(20);// ��Ҫ��ʱ 2u ����֤�´���������ʼ����
}

//Ӳ��IIC��������
void WriteCmd(uint8_t I2C_Command) //д��������I2CͨѶ
 {
	// I2C_WriteByte(0X00,I2C_Command);
	soc_I2C_GenerateSTART(ENABLE);// ��ʼ�ź�

	soc_I2C_SendData(OLED_ADD);// ����Ѱַ+��/дѡ��
	
	soc_I2C_wait();
	// my_delay_us(5);
	
	soc_I2C_SendData((uint8_t)(0x00 & 0Xff));
	
	soc_I2C_wait();
	
	// my_delay_us(5);
	soc_I2C_SendData(I2C_Command);
	
	soc_I2C_wait();

    soc_I2C_GenerateSTOP(ENABLE);// ֹͣ�ź�

    soc_I2C_delay(20);// ��Ҫ��ʱ 2u ����֤�´���������ʼ����
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
		
void WriteDat(uint8_t I2C_Data)    //д��������I2CͨѶ
 {
	// I2C_WriteByte((uint8_t)DAT,I2C_Data);
	soc_I2C_GenerateSTART(ENABLE);// ��ʼ�ź�

	soc_I2C_SendData(OLED_ADD);// ����Ѱַ+��/дѡ��
	
	soc_I2C_wait();
	// my_delay_us(5);
	
	soc_I2C_SendData((uint8_t)(0x40 & 0Xff));
	
	soc_I2C_wait();
	
	// my_delay_us(5);
	soc_I2C_SendData(I2C_Data);
	
	soc_I2C_wait();

    soc_I2C_GenerateSTOP(ENABLE);// ֹͣ�ź�

    soc_I2C_delay(20);// ��Ҫ��ʱ 2u ����֤�´���������ʼ����
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
	my_delay_ms(800); //�������ʱ����Ҫ

	WriteCmd(0xAE); //display off

	WriteCmd(0x20);	//Set Memory Addressing Mode	
	WriteCmd(0x10);	//00,Horizontal Addressing Mode;01,Vertical Addressing Mode;10,Page Addressing Mode (RESET);11,Invalid
	WriteCmd(0xb0);	//Set Page Start Address for Page Addressing Mode,0-7
	
	WriteCmd(0xc8);	//Set COM Output Scan Direction
	WriteCmd(0x00); //---set low column address
	WriteCmd(0x10); //---set high column address
	
	WriteCmd(0x40); //--set start line address
	WriteCmd(0x81); //--set contrast control register
	WriteCmd(0xff); //���ȵ��� 0x00~0xff
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
 
void OLED_SetPos(uint32_t x, uint32_t y) //������ʼ������
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
 
 
void OLED_CLS(void)//����
{
	OLED_Fill(0x00);
}
 
void OLED_ON(void)
{
	WriteCmd(0X8D);  //���õ�ɱ�
	WriteCmd(0X14);  //������ɱ�
	WriteCmd(0XAF);  //OLED����
}
 
void OLED_OFF(void)
{
	WriteCmd(0X8D);  //���õ�ɱ�
	WriteCmd(0X10);  //�رյ�ɱ�
	WriteCmd(0XAE);  //OLED����
}
// Parameters     : x,y -- ��ʼ������(x:0~127, y:0~7); ch[] -- Ҫ��ʾ���ַ���; TextSize -- �ַ���С(1:6*8 ; 2:8*16)
// Description    : ��ʾoled_Font.h�е�ASCII�ַ�,��6*8��8*16��ѡ��
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
// Parameters     : x,y -- ����(x:0~127, y:0~7); N:�������(��Ӧ�����ֿ������������)
// Description    : ��ʾ16x16�����ַ�
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
// ����˵����x:��ʼ������  ȡֵ��ΧΪ0��127
//           y:��ʼ������(��Χ0-7)  
//           begin:��ʼ�ַ��������ֿ������е�������  
//           num:��ʾ���ַ�����
//           �����ֿ�����Ӧ������oled_Font.c�ļ���
// ʾ�������������ֿ�����0��1�����ַ�����ʾ0��1�����÷�ʽΪ��x:0,y:2,begin:0,num:2
void OLED_ShowCN_STR(u32 x , u32 y , u32 begin , u32 num)
{
	u32 i;
	for(i=0;i<num;i++){OLED_ShowCN(i*16+x,y,i+begin);}    //OLED��ʾ
}
// ����˵����x0,y0 -- ��ʼ����(x0:0~127, y0:0~7); x1,y1 -- ��������(ע�����������꣬���ǵ�������)(x1:1~128,y1:1~8)
// ��������ʾBMPͼƬ
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
 * @brief ��OLED��Ļ����ʾһ���ַ�
 * @param x �ַ�����ʼ�����꣬ȡֵ��ΧΪ0��127
 * @param y �ַ�����ʼ�����꣬ȡֵ��ΧΪ0��63
 * @param chr Ҫ��ʾ���ַ�
 * @param Char_Size �ַ��Ĵ�С����ѡֵΪ16��8
 * @retval None
 */

void OLED_ShowChar(u32 x,u32 y,u8 chr,u8 Char_Size)
{      	
	uint32_t c=0,i=0;	
		c=chr-' ';// ���ַ�ת��Ϊ�ֿ��ж�Ӧ������			
		if(x>128-1){x=0;y=y+2;}
		if(Char_Size ==16)
			{
			OLED_SetPos(x,y);	
			for(i=0;i<8;i++)
			WriteDat(F8X16[c*16+i]);
			OLED_SetPos(x,y+1);
			for(i=0;i<8;i++)
			WriteDat(F8X16[c*16+i+8]); // ��OLED����ʾ16x16��С���ַ�
			}
			else {	
				OLED_SetPos(x,y);
				for(i=0;i<6;i++)
				WriteDat(F6x8[c][i]);// ��OLED����ʾ8x6��С���ַ�
				
			}
}
/**
 * @brief ����m��n�η�
 * @param m ����
 * @param n ָ��
 * @retval ������
 */
u32 oled_pow(u32 m, u32 n)
{
	u32 result = 1;	 
	while (n--) {
		result =result* m;    
	}
	return result;
}
//��OLED��Ļ����ʾ����
//x, y����ʾ��ʼ���� 
//len��Ҫ��ʾ��λ��
//size�������С 
//mode�����뷽ʽ��0��ʾ�����ո�1��ʾ��������ո�
//num��Ҫ��ʾ����ֵ����Χ��0~4294967295��	 		  
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
	@brief		��OLED��Ļ�ϻ���GIFͼ��
	@param		x0:��ʼ������
				y0:��ʼ������
				x1:����������
				y1:����������
				k:����������
				m: ͼ��ÿ���ֽ��� 
				BMP[][m]:ͼ����������
	@retval			?
 */

void OLED_DrawGIF(uint8_t x0, uint8_t y0,uint8_t x1, uint8_t y1, uint8_t k, int m, uint8_t GIF[][m])
{
	unsigned int j=0; //������ 
 	uint8_t x,y,i; //ѭ������
  
 	if(y1%8==0) y=y1/8;    //������Ҫ������
 	 else y=y1/8+1;
	for (i=0;i<k;i++) //ѭ������ÿһ֡
	{
		j = 0;
		for(y=y0;y<y1;y++) //���û�����ʼλ��
		{
			OLED_SetPos(x0,y); //���û�����ʼλ��
   			
			for(x=x0;x<x1;x++) //ѭ������ÿһ�У���x0��x1
	    		{
						
	    			WriteDat(GIF[i][j++]);	//��ʱ������֡��   	
	    		}
		}
		//my_delay_ms(80);//��ʱ������֡��

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


