#include <rtthread.h>
#include "../libraries/ls1c_public.h"
#include "../libraries/ls1c_gpio.h"
#include "../libraries/ls1c_delay.h"
#include "../drivers/ps2.h"
#include <drivers/pin.h>
#include "../drivers/drv_gpio.h"

unsigned char Data[9] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};		//保存接收的数据

int MASK[]={
    PSB_SELECT,
    PSB_L3,
    PSB_R3 ,
    PSB_START,
    PSB_PAD_UP,
    PSB_PAD_RIGHT,
    PSB_PAD_DOWN,
    PSB_PAD_LEFT,
    PSB_L2,
    PSB_R2,
    PSB_L1,
    PSB_R1 ,
    PSB_GREEN,
    PSB_RED,
    PSB_BLUE,
    PSB_PINK
	};
	
void PS2_GPIO_Init(void)
{
	hw_pin_init();
	rt_pin_mode(DATA_GPIO, PIN_MODE_INPUT_PULLDOWN);
	rt_pin_mode(CMD_GPIO, PIN_MODE_OUTPUT);
	rt_pin_mode(ATT_GPIO, PIN_MODE_OUTPUT);
	rt_pin_mode(CLK_GPIO, PIN_MODE_OUTPUT);
	CMD_HIGH;
	ATT_HIGH;
	CLK_HIGH;
}

//收发数据
unsigned char ReadWriteControlByte(unsigned char Tx_Data)
{
	unsigned char Rx_Data = 0,i;
	for(i = 0;i < 8;i++)
	{
		CLK_HIGH;
		delay_us(110);
		CLK_LOW;
		if(Tx_Data & 0x01)
			CMD_HIGH;
		else
			CMD_LOW;

		Tx_Data >>= 1;

		Rx_Data >>= 1;
		if(DATA_READ)
			Rx_Data |= 0x80;
		
		delay_us(110);
 	}
	return Rx_Data;
}

void ReadWriteControl(void) 
{
	ATT_LOW;
	ReadWriteControlByte(START_CMD);
	ReadWriteControlByte(ASK_DAT_CMD);
	Data[2] = ReadWriteControlByte(0);
	Data[3] = ReadWriteControlByte(0);
	Data[4] = ReadWriteControlByte(0);
	Data[5] = ReadWriteControlByte(0);
	Data[6] = ReadWriteControlByte(0);
	Data[7] = ReadWriteControlByte(0);
	Data[8] = ReadWriteControlByte(0);
	ATT_HIGH;
	delay_ms(50);
	
}

//读取键值
int PS2_DataKey(void)
{
	int index,Handkey;

	PS2_ClearData();
	ReadWriteControl();
	if(Data[2] == 0X5A)
	{
		Handkey=(Data[4]<<8)|Data[3];
		for(index=0;index<16;index++)
		{	    
			if((Handkey&(1<<(MASK[index]-1)))==0)
			return index+1;
		}
	}
	
	return 0;
}

//判断是否为红灯模式
//返回值；0，红灯模式
//		  其他，其他模式
int PS2_RedLight(void)
{
	//Data[1] = 0;
	ATT_LOW;
	ReadWriteControlByte(START_CMD);  //开始命令
	Data[1] = ReadWriteControlByte(ASK_DAT_CMD);  //请求数据
	ATT_HIGH;
	// delay_ms(50);
	if( Data[1] == PS2_LED_RED)   return 1 ;
	else return 0;

}

//得到一个摇杆的模拟量	 范围0~256
int PS2_AnologData(int button)
{
	return Data[button];
}


//清除数据缓冲区
void PS2_ClearData(void)
{
	int a;
	for(a=0;a<9;a++)
		Data[a]=0x00;
}