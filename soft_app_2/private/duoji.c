/**
 * @file motor.c
 * @author by huangjintao
 * @brief    舵机转动驱动代码
 * @version 2.0
 * @date 2024-5-14
 *
 * @copyright Copyright (c) 2023
 *
 */
#include "duoji.h"
#include "soc_pwm.h"
void SG90_GetAngle(int angle)
{/* 舵机转向函数*/
    /*
    PSC:2000-1          ARR:720-1
        0       50
        180     250
        角度   CCR的值
        可输入 angle = 0 | 45 | 90 | 135 | 180 对应选择多大角度
    */
    pwm_steering_engine_set(angle);//
    /*value=50相当于一个周期内（20ms）有0.5ms高脉冲*/
}
void SG90_Init()
{
  SG90_GetAngle(0); 
}
void SG90_Open()
{
   SG90_GetAngle(180); 
}
void SG90_Close()
{
   SG90_GetAngle(0); 
}
