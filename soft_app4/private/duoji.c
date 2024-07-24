/**
 * @file motor.c
 * @author Lu Li (2622088559@qq.com)
 * @brief    ���ת����������
 * @version 1.0
 * @date 2023-7-25
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
    
}
void SG90_Init()
{
  SG90_GetAngle(0); 
}
void SG90_Open()
{
   SG90_GetAngle(175); //�˴���ת��ֵ����һ�������� ʵ��ת180��
}
void SG90_Close()
{
   SG90_GetAngle(0); 
}
