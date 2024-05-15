/**
 * @file motor.c
 * @author by huangjintao
 * @brief    ���ת����������
 * @version 2.0
 * @date 2024-5-14
 *
 * @copyright Copyright (c) 2023
 *
 */
#include "duoji.h"
#include "soc_pwm.h"
void SG90_GetAngle(int angle)
{/* ���ת����*/
    /*
    PSC:2000-1          ARR:720-1
        0       50
        180     250
        �Ƕ�   CCR��ֵ
        ������ angle = 0 | 45 | 90 | 135 | 180 ��Ӧѡ����Ƕ�
    */
    pwm_steering_engine_set(angle);//
    /*value=50�൱��һ�������ڣ�20ms����0.5ms������*/
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
