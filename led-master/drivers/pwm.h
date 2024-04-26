#include <rtthread.h>
#include <drivers/pin.h>
#include "../libraries/ls1c_pwm.h"  
#include "../drivers/drv_gpio.h"

pwm_info_t pwm0;
pwm_info_t pwm1;
pwm_info_t pwm2;
pwm_info_t pwm3;

void Pwm0_Init(void);
void Pwm1_Init(void);
void Pwm2_Init(void);
void Pwm3_Init(void);

void En_Init(void);
