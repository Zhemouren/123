#include <rtthread.h>
#include <drivers/spi.h>
#include <drivers/pin.h>
#include "ls1c_spi.h"
#include "ls1c_delay.h"
#include "drv_spi.h"
#include "oled.h"

void test_oled(void)
{
	OLED_Init();
	rt_kprintf("LCD_Init!\n");
	
	OLED_ShowCHinese(0,0,0);//温
	OLED_ShowCHinese(16,0,1);//度
	OLED_ShowChar(32, 0, ':');//：
	OLED_ShowChar(56, 0, '.');//.
	OLED_ShowCHinese(80, 0, 10);//℃

	OLED_ShowCHinese(0,2,2);//气
	OLED_ShowCHinese(16,2,3);//压
	OLED_ShowChar(32, 2, ':');//：
	OLED_ShowString(80, 2, "kPa");//kPa

	OLED_ShowCHinese(0, 6 ,6);//连
	OLED_ShowCHinese(16, 6 ,7);//接
	OLED_ShowCHinese(32, 6 ,8);//状
	OLED_ShowCHinese(48, 6 ,9);//态
	OLED_ShowChar(64, 6, ':');//：
	OLED_ShowCHinese(80, 6 ,5);//未
	OLED_ShowCHinese(96, 6 ,6);//连
	OLED_ShowCHinese(112, 6 ,7);//接
	OLED_ShowNum(40,0,83);
	OLED_ShowNum(64,0,8);
	// while(1)
	// {
		
	// }
}

#include  <finsh.h>
FINSH_FUNCTION_EXPORT(test_oled, test_oled e.g.test_oled());
