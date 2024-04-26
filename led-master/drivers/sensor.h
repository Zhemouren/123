#include <rtthread.h>
#include <drivers/pin.h>
#include "../libraries/ls1c_gpio.h"
#include "../drivers/drv_gpio.h"

#define RED_OUT		57
#define VOC_OUT		69

#define RED_READ	rt_pin_read(RED_OUT)
#define VOC_READ	rt_pin_read(VOC_OUT)

void Sensor_Init(void);
