#include "key.h"
// #include "main.h"
#include "my_delay.h"
/**

 * ��������  A11 A12 A15 B3 B4 B5 B6 B7 
 *           C4  C3  C2  C1 R1 R2 R3 R4      ����������������
 */
 
 /**
  * @brief  ������̶�ȡ��������
  * @param  ��  
  * @retval KeyNumber ���°����ļ���ֵ
			����������²��ţ������ͣ���ڴ˺��������ֵ�һ˲�䣬���ذ������룬û�а�������ʱ������0
  *ע��������ʱ�����ʱ�����Բ�Ҫ��̫��
  */
/*           ������������          */

void clkey()
{//����������һ
  gpio_write(34,GPIO_PIN_SET);//ѡ��C4����1
  gpio_write(20,GPIO_PIN_SET);//ѡ��C3����1
  gpio_write(19,GPIO_PIN_SET);//ѡ��C2����1
  gpio_write(18,GPIO_PIN_SET);//ѡ��C1����1
}
uint8_t MatrixKey()
{
//      uint8_t KeyNumber=0;
      clkey();//����������һ
      my_delay_ms(20);
      gpio_write(34,GPIO_PIN_RESET);//ѡ��C4��
      if(R1==0){my_delay_ms(20);while(R1==0){}my_delay_ms(20);return 1;}//R1
      if(R2==0){my_delay_ms(20);while(R2==0){}my_delay_ms(20);return 5;}//R2
      if(R3==0){my_delay_ms(20);while(R3==0){}my_delay_ms(20);return 9;}//R3
      if(R4==0){my_delay_ms(20);while(R4==0){}my_delay_ms(20);return 13;}//R4
         
      clkey();
      gpio_write(20,GPIO_PIN_RESET);//ѡ��C3��
      if(R1==0){my_delay_ms(20);while(R1==0){}my_delay_ms(20);return 2;}
      if(R2==0){my_delay_ms(20);while(R2==0){}my_delay_ms(20);return 6;}
      if(R3==0){my_delay_ms(20);while(R3==0){}my_delay_ms(20);return 10;}
      if(R4==0){my_delay_ms(20);while(R4==0){}my_delay_ms(20);return 14;}
      
      clkey();
      gpio_write(19,GPIO_PIN_RESET);//ѡ��C2��
      if(R1==0){my_delay_ms(20);while(R1==0){}my_delay_ms(20);return 3;}
      if(R2==0){my_delay_ms(20);while(R2==0){}my_delay_ms(20);return 7;}
      if(R3==0){my_delay_ms(20);while(R3==0){}my_delay_ms(20);return 11;}
      if(R4==0){my_delay_ms(20);while(R4==0){}my_delay_ms(20);return 15;}
      
      clkey();
      gpio_write(18,GPIO_PIN_RESET);//ѡ��C1��
      if(R1==0){my_delay_ms(20);while(R1==0){}my_delay_ms(20);return 4;}
      if(R2==0){my_delay_ms(20);while(R2==0){}my_delay_ms(20);return 8;}
      if(R3==0){my_delay_ms(20);while(R3==0){}my_delay_ms(20);return 12;}
      if(R4==0){my_delay_ms(20);while(R4==0){}my_delay_ms(20);return 16;}
    
      return 0;
}
