/*
 * Copyright (c) 2024, yunxiao
 * All rights reserved.
 *
 * Filename: soc_pwm.h
 * Abstract:
 * pwm and servo.
 *
 * Current version: 1.1
 * Author: Lin Yihan
 * Completion date: 2024, 1, 2
 */

#ifndef _SOC_PWM_H
#define _SOC_PWM_H

#ifdef __cplusplus
extern "C" {
#endif


#include "soc_ls1c102.h"
////////////////////////
////////////////
////////

void pwm_init(void);
void pwm_set(int div_freq, int comp);
void pwm_state(int div_freq, int comp);

void pwm_steering_engine_init(void);
void pwm_steering_engine_set(int angle);

#ifdef __cplusplus
}
#endif

#endif // _SOC_PWM_H

