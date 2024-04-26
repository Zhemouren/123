#include "sensor.h"

void Sensor_Init(void)
{
	hw_pin_init();
	rt_pin_mode(RED_OUT, PIN_MODE_INPUT_PULLDOWN);
	rt_pin_mode(VOC_OUT, PIN_MODE_INPUT_PULLDOWN);
}

