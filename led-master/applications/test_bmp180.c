#include <rtthread.h>
#include <drivers/i2c.h>
#include "drv_i2c.h"
#include "BMP180.h"

// 测试用的线程的入口  
void test_bmp180(void )  
{
	int i=0;
	extern long  result_UT;
	extern long  result_UP;
	Init_BMP180();
	rt_kprintf("bmp180 init!\n");

	while(i < 10)
	{
		i++;
		bmp180Convert();
		rt_kprintf("\rresult_UT = %d\n",result_UT);
		rt_kprintf("\rresult_UP = %d\n",result_UP);
		rt_thread_delay(100);
	}
}

 #include  <finsh.h>
 FINSH_FUNCTION_EXPORT(test_bmp180, test_bmp180  e.g.test_bmp180());
