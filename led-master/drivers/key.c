#include "rthw.h"  
#include "ls1c.h"
#include "../drivers/key.h"
#include "../libraries/ls1c_gpio.h"
#include "../libraries/ls1c_delay.h"

// 初始化key
// @led_gpio led所在gpio引脚
void key_init(unsigned int key_gpio)
{
    gpio_init(key_gpio, gpio_mode_input);
}


// 获取输入按键是否按下，按下返回1
int Get_Key(unsigned int key_gpio)
{
	if (gpio_level_low == gpio_get(key_gpio))return 1;
	else return 0;
}


//获取按键值
Key_Def KEY_Scan(void)
{	 
	static int key_up=1;
	if(key_up&&(Get_Key(key_gpio1)||Get_Key(key_gpio2)))
	{
		delay_ms(10); 
		key_up=0;
		if(Get_Key(key_gpio1))return KEY1;
		else if(Get_Key(key_gpio2))return KEY2;
	}
	else if(!Get_Key(key_gpio1)&&!Get_Key(key_gpio2))key_up=1; 	    
		return -1;
}

/*
触发方式:
上升沿触发
IRQ_TYPE_EDGE_RISING	
// 下降沿触发
IRQ_TYPE_EDGE_FALLING
IRQ_TYPE_EDGE_BOTH	= (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING),
// 高电平触发
IRQ_TYPE_LEVEL_HIGH
// 低电平触发
IRQ_TYPE_LEVEL_LOW
*/
void key_irq_init(unsigned int key_gpio)
{
	int key_irq = LS1C_GPIO_TO_IRQ(key_gpio);  

	if(key_gpio == key_gpio1){
		key_init(key_gpio1);
		gpio_set_irq_type(key_gpio, IRQ_TYPE_EDGE_RISING);
		rt_hw_interrupt_install(key_irq, ls1c_key1_irqhandler, RT_NULL, "key1_irq");  //注册中断处理函数
	}
	if(key_gpio == key_gpio2){
		key_init(key_gpio2);
		gpio_set_irq_type(key_gpio, IRQ_TYPE_EDGE_RISING);  
		rt_hw_interrupt_install(key_irq, ls1c_key2_irqhandler, RT_NULL, "key2_irq");  //注册中断处理函数
	}
	rt_hw_interrupt_umask(key_irq);  //使能中断
}


