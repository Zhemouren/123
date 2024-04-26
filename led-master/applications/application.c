/*
 * File      : application.c
 * This file is part of RT-Thread RTOS
 * COPYRIGHT (C) 2006-2012, RT-Thread Develop Team
 *
 * The license and distribution terms for this file may be
 * found in the file LICENSE in this distribution or at
 * http://www.rt-thread.org/license/LICENSE
 *
 * Change Logs:
 * Date                Author         Notes
 * 2010-06-25          Bernard        first version
 * 2011-08-08          lgnq           modified for Loongson LS1B
 * 2015-07-06          chinesebear    modified for Loongson LS1C
 */

#include <rtthread.h>
#include "net/synopGMAC.h"
#include <lwip/api.h>
#include <drivers/pin.h>
#include "../libraries/ls1c_public.h"
#include "../libraries/ls1c_gpio.h"
#include "../libraries/ls1c_delay.h"
#include "../drivers/led.h"
#include "../drivers/key.h"
#include "../drivers/uart.h"
#include "../drivers/uart_protocol.h"
#include "../drivers/pwm.h"
#include "../drivers/sensor.h"
#include "../drivers/oled.h"
#include "../drivers/bmp180.h"

#define HIGH_LEVEL		1
#define LOW_LEVEL		0

rt_uint8_t flag = 0;		//切换model
rt_uint8_t count = 0;		//设置pwm的duty
float Duty = 0;
float Duty_Last = 0;

static rt_sem_t sem1 = RT_NULL;
static rt_sem_t sem2 = RT_NULL;

/** 存储温度和电压 */
extern long  result_UT;
extern long  result_UP;

/** 冷暖灯设置 */
rt_uint8_t warm_falg = 1;
rt_uint8_t cold_falg = 1;

/** 按键1中断 */
void ls1c_key1_irqhandler(int irq, void *param)  
{
	delay_ms(20);
	flag=1^flag;
}

/** 按键2中断 */
void ls1c_key2_irqhandler(int irq, void *param)  
{
	delay_ms(20);
	count ++;
	switch(count)
		{
			case 0:
				Duty = 0;
				break;
			case 1:
				Duty = 0.15;
				break;
			case 2:
				Duty = 0.25;
				break;
			case 3:
				Duty = 0.45;
				break;
			case 4:
				Duty = 0.90;
				break;
			case 5:
				Duty = 0;
				count = 0;
				break;
			default:
				break;
		}
}

void rt_init_thread_entry(void *parameter)
{
#ifdef RT_USING_COMPONENTS_INIT
    /* initialization RT-Thread Components */
    rt_components_init();
#endif
#if defined(RT_USING_DFS) && defined(RT_USING_DFS_ELMFAT)
    /* mount sd card fat partition 1 as root directory */
    if( dfs_mount("sd0", "/", "elm", 0, 0) == 0)
    {
        rt_kprintf("File System initialized!\n");
    }
    else
    {
        rt_kprintf("File System initialzation failed!\n");
    }
#endif /* RT_USING_DFS && RT_USING_DFS_ELMFAT */


/*网口EMAC初始化*/
    rt_hw_eth_init();

#if defined(RT_USING_RTGUI)
/*触摸屏使用SPI总线SPI1 CS0  初始化*/
     //rtgui_touch_hw_init("spi10");
#endif
	//rt_kprintf("系统初始化完成！\n");
}

void model1_thread_entry(void *parameter)
{
	while(1)
	{
		rt_sem_take(sem1, RT_WAITING_FOREVER);
		led_on(LED1);
		led_off(LED2);
		if(warm_falg)
			rt_pin_write(48,0);
		else
			rt_pin_write(48,1);
		if(cold_falg)
			rt_pin_write(49,0);
		else
			rt_pin_write(49,1);
		if(Duty_Last != Duty){
			pwm2.duty = Duty;
			pwm3.duty = Duty;
			pwm_init(&pwm2);
			pwm_init(&pwm3);
			Duty_Last = Duty;
		}
		//rt_kprintf("\r model1_thread \n");
	}
}

void model2_thread_entry(void *parameter)
{
	while(1)
	{
		rt_sem_take(sem2, RT_WAITING_FOREVER);
		led_off(LED1);
		if(Duty_Last != Duty){
			pwm2.duty = Duty;
			pwm3.duty = Duty;
			pwm_init(&pwm2);
			pwm_init(&pwm3);
			Duty_Last = Duty;
		}
		switch(!VOC_READ || RED_READ)
		{
			case HIGH_LEVEL:
				if(warm_falg)
					rt_pin_write(48,0);
				else
					rt_pin_write(48,1);
				if(cold_falg)
					rt_pin_write(49,0);
				else
					rt_pin_write(49,1);
				led_on(LED2);
				rt_thread_delay(1000);
				break;
			case LOW_LEVEL:
				led_off(LED2);
				rt_pin_write(48,1);
				rt_pin_write(49,1);
				break;
			default:
				break;
		}
		//rt_kprintf("\r model2_thread \n");
	}
}

static struct UART_CTRL* p_uart_ctrl;
void model_set_thread_entry(void *parameter)
{
	p_uart_ctrl = get_p_uart_ctrl();
	
	while(1)
	{
		switch(p_uart_ctrl->rx_buf[0])
		{
			case 1:
				flag = 1;
				break;
			case 2:
				flag = 0;
				break;
			case 3:
				Duty = 0;
				break;
			// case 4:
				// count = 1;
				// Duty = 0.15;
				// break;
			// case 5:
				// count = 2;
				// Duty = 0.25;
				// break;
			// case 6:
				// count = 3;
				// Duty = 0.5;
				// break;
			// case 7:
				// count = 4;
				// Duty = 0.9;
				// break;
			case 8:
				cold_falg = 1^cold_falg;
				break;
			case 9:
				warm_falg = 1^warm_falg;
				break;
			default:
				if(p_uart_ctrl->rx_buf[0])
					Duty = (float)p_uart_ctrl->rx_buf[0] / 100;
				break;
		}
		clr_rx_buf();

		flag ? rt_sem_release(sem1) : rt_sem_release(sem2);
		rt_thread_delay(10);
	}
}

void oled_thread_entry(void *parameter)
{
	rt_uint8_t A;
	rt_uint8_t B;
	OLED_Init();
	OLED_ShowCHinese(0,0,0);//温
	OLED_ShowCHinese(16,0,1);//度
	OLED_ShowChar(32, 0, ':');//：
	OLED_ShowChar(64, 0, '.');//.
	OLED_ShowString(48, 0, "--");
	OLED_ShowString(72, 0, "-");
	OLED_ShowCHinese(88, 0, 4);//℃

	OLED_ShowCHinese(0,2,2);//气
	OLED_ShowCHinese(16,2,3);//压
	OLED_ShowChar(32, 2, ':');//：
	OLED_ShowString(48, 2, "---");
	OLED_ShowString(80, 2, "kPa");//kPa

	OLED_ShowCHinese(0, 4 ,5);//亮
	OLED_ShowCHinese(16, 4 ,6);//度
	OLED_ShowChar(32, 4, ':');//：
	OLED_ShowString(48, 4, "--");
	OLED_ShowChar(72, 4, '%');
	
	OLED_ShowCHinese(0, 6 ,7);//模
	OLED_ShowCHinese(16, 6 ,8);//式
	OLED_ShowChar(32, 6, ':');//：
	OLED_ShowCHinese(64, 6 ,11);//灯
	OLED_ShowCHinese(80, 6 ,7);//模
	OLED_ShowCHinese(96, 6 ,8);//式

	p_uart_ctrl = get_p_uart_ctrl();
	
	while(1)
	{
		if(p_uart_ctrl->rx_buf[0] >= 10)
			OLED_ShowNum(48, 4, p_uart_ctrl->rx_buf[0]);
		if(Duty == 0)
			OLED_ShowString(48, 4, "--");
		// switch(count)
		// {
			// case 0:
				// OLED_ShowOneNum(48,4,0);
				// break;
			// case 1:
				// OLED_ShowNum(48,4,1);
				// break;
			// case 2:
				// OLED_ShowNum(48,4,2);
				// break;
			// case 3:
				// OLED_ShowNum(48,4,3);
				// break;
			// case 4:
				// OLED_ShowNum(48,4,4);
				// break;
			// default:
				// break;
		// }
		flag ? OLED_ShowCHinese(48, 6, 9) : OLED_ShowCHinese(48, 6, 10);

		A = result_UT / 10;
		B = result_UT % 10;
		OLED_ShowNum(48, 0, A);
		OLED_ShowNum(72, 0, B);
		
		OLED_ShowNum(48, 2, result_UP / 1000);
		rt_thread_delay(10);
	}
}

void bmp180_thread_entry(void *parameter)
{
	while(1)
	{
		bmp180Convert();
		rt_thread_delay(100);
	}
}

void module_thread_entry(void *parameter)
{
	led_init(LED1);
	led_init(LED2);
	key_irq_init(key_gpio1);
	//key_irq_init(key_gpio2);
	Sensor_Init();
	Pwm2_Init();
	Pwm3_Init();
	Init_BMP180();
	En_Init();
	rt_kprintf("系统初始化完成！\n");
}

int rt_application_init(void)
{
	rt_thread_t tid;
	rt_thread_t module_tid;
	rt_thread_t model1;
	rt_thread_t model2;
	rt_thread_t model_set;
	rt_thread_t oled_tid;
	rt_thread_t bmp180_tid;

	/* create initialization thread */
	tid = rt_thread_create("init",
	    rt_init_thread_entry, RT_NULL,
	    4096, RT_THREAD_PRIORITY_MAX/3, 20);
	if (tid != RT_NULL)
		rt_thread_startup(tid);

	module_tid = rt_thread_create("module_init",
        module_thread_entry, RT_NULL,
        1024, RT_THREAD_PRIORITY_MAX/3 + 1, 20);
    if (module_tid != RT_NULL) 
		rt_thread_startup(module_tid);

	model1 = rt_thread_create("Mode1",
        model1_thread_entry, RT_NULL,
        1024, RT_THREAD_PRIORITY_MAX/3 + 5, 20);
    if (model1 != RT_NULL) 
		rt_thread_startup(model1);

	model2 = rt_thread_create("Mode2",
        model2_thread_entry, RT_NULL,
        1024, RT_THREAD_PRIORITY_MAX/3 + 5, 20);
    if (model2 != RT_NULL) 
		rt_thread_startup(model2);

	model_set = rt_thread_create("Mode_Set",
        model_set_thread_entry, RT_NULL,
        1024, RT_THREAD_PRIORITY_MAX/3 + 4, 20);
    if (model_set != RT_NULL) 
		rt_thread_startup(model_set);

	oled_tid = rt_thread_create("Oled",
        oled_thread_entry, RT_NULL,
        1024, RT_THREAD_PRIORITY_MAX/3 + 2, 20);
    if (oled_tid != RT_NULL) 
		rt_thread_startup(oled_tid);

	bmp180_tid = rt_thread_create("Bmp180",
        bmp180_thread_entry, RT_NULL,
        1024, RT_THREAD_PRIORITY_MAX/3 + 3, 20);
    if (bmp180_tid != RT_NULL) 
		rt_thread_startup(bmp180_tid);

	sem1 = rt_sem_create("sem1", 0, RT_IPC_FLAG_FIFO);
	sem2 = rt_sem_create("sem2", 0, RT_IPC_FLAG_FIFO);
	
	return 0;
}
