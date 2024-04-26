#include "led.h"
#include "my_delay.h"
#include "soc_gpio.h"
void LEDred_ON()
{
    gpio_write(1,GPIO_PIN_RESET);
}
void LEDred_OFF()
{
    gpio_write(1,GPIO_PIN_SET);
}
void LEDblue_ON()
{
    gpio_write(2,GPIO_PIN_RESET);
}
void LEDblue_OFF()
{
    gpio_write(2,GPIO_PIN_SET);
}
void Buzzer()
{
      gpio_write(7, GPIO_PIN_RESET);
      my_delay_ms(500);
      gpio_write(7, GPIO_PIN_SET);
}
void Buzzer_one()
{//�Ž���ʾ��
      gpio_write(7, GPIO_PIN_RESET);
      my_delay_ms(300);
      gpio_write(7, GPIO_PIN_SET);
}
void Buzzer_two()
{//������ʾ��
      gpio_write(7, GPIO_PIN_RESET);
      my_delay_ms(50);
      gpio_write(7, GPIO_PIN_SET);
}
