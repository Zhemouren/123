#include "pwm.h"  

void Pwm0_Init(void)
{
	pwm0.gpio = LS1C_PWM0_GPIO06;				// pwm引脚位gpio53
	pwm0.mode = PWM_MODE_NORMAL;              // 正常模式--连续输出pwm波形
	pwm0.duty = 0;                         // pwm占空比
	pwm0.period_ns = 100*1000;                // pwm周期0.1ms

	pwm_init(&pwm0);
}

void Pwm1_Init(void)
{
	pwm1.gpio = LS1C_PWM1_GPIO92;				// pwm引脚位gpio53
	pwm1.mode = PWM_MODE_NORMAL;              // 正常模式--连续输出pwm波形
	pwm1.duty = 0;                         // pwm占空比
	pwm1.period_ns = 100*1000;                // pwm周期0.1ms

	pwm_init(&pwm1);
}

void Pwm2_Init(void)
{
	pwm2.gpio = LS1C_PWM2_GPIO46;				// pwm引脚位gpio53
	pwm2.mode = PWM_MODE_NORMAL;              // 正常模式--连续输出pwm波形
	pwm2.duty = 0;                         // pwm占空比
	pwm2.period_ns = 10000*1000;                // pwm周期10ms

	pwm_init(&pwm2);
}

void Pwm3_Init(void)
{
	pwm3.gpio = LS1C_PWM3_GPIO47;				// pwm引脚位gpio53
	pwm3.mode = PWM_MODE_NORMAL;              // 正常模式--连续输出pwm波形
	pwm3.duty = 0;                         // pwm占空比
	pwm3.period_ns = 10000*1000;                // pwm周期10ms

	pwm_init(&pwm3);
}

void En_Init(void)
{
	hw_pin_init();
	rt_pin_mode(48, PIN_MODE_OUTPUT);
	rt_pin_mode(49, PIN_MODE_OUTPUT);
	rt_pin_write(48,0);
	rt_pin_write(49,0);
}
