#include <rtthread.h>
#include <drivers/spi.h>
#include <drivers/pin.h>
#include "ls1c_spi.h"
#include "drv_spi.h"
#include "ls1c_gpio.h"
#include "ls1c_delay.h"
#include "ls1c_pin.h"  
#include "oled.h"  
#include "oledfont.h"  

struct rt_device * oled_spi_device;

void OLED_GPIO_Config(void)
{
	// pin初始化
    hw_pin_init();
	// 把相应gpio设为输出模式
    rt_pin_mode(OLED_RST_PIN, PIN_MODE_OUTPUT);
	rt_pin_mode(OLED_DC_PIN, PIN_MODE_OUTPUT);
}
void SPI_Config(void)
{
	struct rt_spi_configuration cfg;
	rt_err_t err;


	oled_spi_device = rt_device_find("spi03");
	 if(oled_spi_device ==  RT_NULL)
    {
        rt_kprintf("Did not find spi1, exit thread....\n");
        return;
    }
    err = rt_device_open(oled_spi_device, RT_DEVICE_OFLAG_RDWR);
    if(err != RT_EOK)
    {
        rt_kprintf("Open spi1 failed %08X, exit thread....\n", err);
        return;
    }
    // 配置SPI
    cfg.mode    = RT_SPI_MODE_0;
	cfg.data_width = 8;
    cfg.max_hz  = 3000*1000;  
    rt_spi_configure((struct rt_spi_device *)oled_spi_device, &cfg);  
}

void OLED_WB(unsigned char TxData)
{	 		
	unsigned char send_buf[1];
	send_buf[0] = TxData;
    rt_spi_send((struct rt_spi_device *)oled_spi_device, send_buf, 1);	
	//delay_us(5);
}

void OLED_WrDat(unsigned char dat)
{
	OLED_DC_H;
	OLED_WB(dat);
}

void OLED_WrCmd(unsigned char cmd)
{
	OLED_DC_L;
	OLED_WB(cmd);
}

//Function:设置显示坐标
//Input:x:横坐标;y:纵坐标
//Output:无
//Return:无
//Others:无
void OLED_Set_Pos(unsigned char x, unsigned char y)
{
	OLED_WrCmd(0xb0+y);
	OLED_WrCmd((((x & 0xf0)>>4)|0x10));            //设置OLED水平坐标的高4位
	OLED_WrCmd((x & 0x0f)|0x01);                        //设置OLED水平坐标的低4位
}

//显示字符
void OLED_ShowChar(rt_uint8_t x, rt_uint8_t y, rt_uint8_t chr)
{
	unsigned char c=0,i=0;	
	c=chr-' ';//得到偏移后的值		
	if(x > X_WIDTH-1){x=0;y=y+2;}
	if(SIZE ==16)
	{
		OLED_Set_Pos(x,y);	
		for(i=0;i<8;i++)
		OLED_WrDat(F8X16[c*16+i]);
		OLED_Set_Pos(x,y+1);
		for(i=0;i<8;i++)
		OLED_WrDat(F8X16[c*16+i+8]);
	}
	else 
	{
		OLED_Set_Pos(x,y+1);
		for(i=0;i<6;i++)
		OLED_WrDat(F6x8[c][i]);
	}
}

//显示字符串
void OLED_ShowString(rt_uint8_t x,rt_uint8_t y,rt_uint8_t *chr)
{
    unsigned char j = 0;
    while (chr[j] != '\0')
    {		
      OLED_ShowChar(x, y, chr[j]);
      x += 8;
      if(x > 120){x = 0; y += 2;}
        j ++;
    }
}

//m^n函数
rt_uint32_t mypow(rt_uint8_t m,rt_uint8_t n)
{
    rt_uint32_t result=1;    
    while(n--)result*=m;    
    return result;
}   
//显示多个数字
void OLED_ShowNum(rt_uint8_t x, rt_uint8_t y,rt_uint8_t num)
{
	rt_uint8_t len = 0,count = num;
	rt_uint8_t t,temp;
	while(count != 0)
	{
		count = count/10;
		len ++;
	}
	for(t = 0; t < len; t ++)
	{
		temp=(num / mypow(10, len-t-1)) % 10;
		OLED_ShowOneNum(x+(t*8), y, temp);
	}
}
//显示一个数字
void OLED_ShowOneNum(rt_uint8_t x, rt_uint8_t y, rt_uint8_t num)
{
	rt_uint8_t i = 0, n;
	OLED_Set_Pos(x, y);                                                  //首先确定开始的坐标
	n = num * 16;
	for(i = 0; i < 16; i += 2)
	{
		OLED_WrDat(Number[n]);                                              //每次显示一个字节      每个char占用16个x像素
		n = n + 2;
	}
	n = num * 16 + 1;
	OLED_Set_Pos(x, y + 1);                                             //转到下一页显示剩下字节
	for(i = 1; i < 16; i += 2)
	{
		OLED_WrDat(Number[n]);
		n = n + 2;
	}
}

//Function:显示中文
//Input:x：横坐标;y:纵坐标;no:显示的字的序号
//Output:无
//Return:无
//Others:无
void OLED_ShowCHinese(rt_uint8_t x,rt_uint8_t y,rt_uint8_t no)
{
  rt_uint8_t t,adder = 0;
  OLED_Set_Pos(x, y);
  for(t=0; t<16; t ++)
  {
    OLED_WrDat(Hzk[2 * no][t]);
    adder += 1;
  }
  OLED_Set_Pos(x, y+1);
  for(t = 0; t < 16; t ++)
  {
    OLED_WrDat(Hzk[2 * no + 1][t]);
    adder += 1;
  }
}

void OLED_DLY_ms(unsigned int ms)
{
	unsigned int a;
	while(ms)
	{
		a = 1335;
		while(a --);
		ms--;
	}
}
//Function:填充
//Input:无
//Output:无
//Return:无
//Others:无
void OLED_Fill(unsigned char bmp_dat)
{
	unsigned char y,x;

	OLED_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
	OLED_WrCmd(0x00);//

	OLED_WrCmd(0x21);//-Set Column Address
	OLED_WrCmd(0x00);
	OLED_WrCmd(0x7f);

	OLED_WrCmd(0x22);//-Set Page Address
	OLED_WrCmd(0x00);
	OLED_WrCmd(0x07);

	delay_ms(1);
	for(y=0;y<Page;y++)
	{
		for(x=0;x<X_WIDTH;x++)
		{
			OLED_WrDat(bmp_dat);
		}
	}
}
//Function:清屏
//Input:无
//Output:无
//Return:无
//Others:无
void OLED_Clear(void)
{
	unsigned char page,len;
	for(page=0;page<8;page++)
	{
		OLED_WrCmd(0xb0+page);
		OLED_WrCmd(0x00);
		OLED_WrCmd(0x10);
	for(len=0;len<128;len++)
		OLED_WrDat(0x00); 
	}
}
//Function:OLED初始化
//Input:无
//Output:无
//Return:无
//Others:无
void OLED_Init(void)
{
	OLED_GPIO_Config();
	SPI_Config();

	OLED_RST_H;
	delay_ms(100);
	OLED_RST_L;
	delay_ms(100);
	OLED_RST_H;
	//从上电到下面开始初始化要有足够的时间，即等待RC复位完毕

	OLED_WrCmd(0xae);//--turn off oled panel
	OLED_WrCmd(0x00);//---set low column address
	OLED_WrCmd(0x10);//---set high column address
	OLED_WrCmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
	OLED_WrCmd(0x81);//--set contrast control register
	OLED_WrCmd(0xcf); // Set SEG Output Current Brightness
	OLED_WrCmd(0xa1);//--Set SEG/Column Mapping     0xa0×óóò·′?? 0xa1?y3￡
	OLED_WrCmd(0xc8);//Set COM/Row Scan Direction   0xc0é???·′?? 0xc8?y3￡
	OLED_WrCmd(0xa6);//--set normal display
	OLED_WrCmd(0xa8);//--set multiplex ratio(1 to 64)
	OLED_WrCmd(0x3f);//--1/64 duty
	OLED_WrCmd(0xd3);//-set display offset	Shift Mapping RAM Counter (0x00~0x3F)
	OLED_WrCmd(0x00);//-not offset
	OLED_WrCmd(0xd5);//--set display clock divide ratio/oscillator frequency
	OLED_WrCmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
	OLED_WrCmd(0xd9);//--set pre-charge period
	OLED_WrCmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
	OLED_WrCmd(0xda);//--set com pins hardware configuration
	OLED_WrCmd(0x12);
	OLED_WrCmd(0xdb);//--set vcomh
	OLED_WrCmd(0x40);//Set VCOM Deselect Level
	OLED_WrCmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
	OLED_WrCmd(0x02);//
	OLED_WrCmd(0x8d);//--set Charge Pump enable/disable
	OLED_WrCmd(0x14);//--set(0x10) disable
	OLED_WrCmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
	OLED_WrCmd(0xa6);// Disable Inverse Display On (0xa6/a7) 
	OLED_WrCmd(0xaf);//--turn on oled panel

	OLED_WrCmd(0xaf);
	OLED_Fill(0x00);  //初始清屏
	OLED_Set_Pos(0,0);  
}


