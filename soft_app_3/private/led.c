#include "led.h"
#include "my_delay.h"
#include "soc_gpio.h"
void LEDred_ON()
{
    gpio_write(13,GPIO_PIN_RESET);
}
void LEDred_OFF()
{
    gpio_write(13,GPIO_PIN_SET);
}
void LEDgree_ON()
{
    gpio_write(1,GPIO_PIN_RESET);
}
void LEDgree_OFF()
{
    gpio_write(1,GPIO_PIN_SET);
}
void Buzzer()//响两声
{
      gpio_write(35, GPIO_PIN_SET);
      my_delay_ms(50);
      gpio_write(35, GPIO_PIN_RESET);
      my_delay_ms(50);
      gpio_write(35, GPIO_PIN_SET);
      my_delay_ms(50);
      gpio_write(35, GPIO_PIN_RESET);
}
void Buzzer_one()
{//门禁开启提示音
      gpio_write(35, GPIO_PIN_SET);
      my_delay_ms(300);
      gpio_write(35, GPIO_PIN_RESET);
}
void Buzzer_two()
{//按键提示音
      gpio_write(35, GPIO_PIN_SET);
      my_delay_ms(50);
      gpio_write(35, GPIO_PIN_RESET);
}
