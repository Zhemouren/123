// 测试硬件定时器的源文件

#include "../lib/ls1c_timer.h"
#include "../lib/ls1c_gpio.h"
#include "../lib/ls1c_delay.h"
#include "../lib/ls1c_irq.h"



timer_info_t timer_info = {0};

// 中断计数器
volatile int test_timer_pwm0_irq_counter = 0;


/*
 * 定时器0的中断处理函数
 * @IRQn 中断号
 * @param 参数
 */
void test_timer_pwm0_irqhandler(int IRQn, void *param)
{
	// 重启定时器
    timer_restart(&timer_info);
	
    // 计数器加一
    test_timer_pwm0_irq_counter++;

    return ;
}



// 测试硬件定时器的中断
void test_timer_irq(void)
{
    // 初始化定时器
    timer_info.timer    = TIMER_PWM0;
    timer_info.time_ns  = 100*1000*1000;        // 100ms
    timer_init(&timer_info);

    // 设置中断处理函数，并使能中断
    irq_install(LS1C_PWM0_IRQ, test_timer_pwm0_irqhandler, NULL);
    irq_enable(LS1C_PWM0_IRQ);

    while (1)
    {
        printf("[%s] test_timer_pwm0_irq_counter=%d\r\n", 
                  __FUNCTION__, 
                  test_timer_pwm0_irq_counter);
        
        delay_s(1);
    }

    return ;
}




