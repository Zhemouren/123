
#include "main.h"
#include "peri_test_sum.h"
#include "rtthread.h"
// ================================================================
// ================================================================
// ================================================================

// ================================================================



int main(void) {


	gpio_init(1, 1);
    gpio_init(13, 1);
    gpio_init(18, 1);
    gpio_init(19, 1);
    gpio_init(20, 1);
    gpio_init(34, 1);
    gpio_init(35, 1);
    gpio_init(36, 1);
    gpio_init(37, 1);
    gpio_init(38, 1);
    gpio_init(39, 1);
    gpio_init(40, 1);
    // my_delay_ms(1000);
    rt_thread_delay(1000);

    while(1){
        gpio_write(1, 1);
        gpio_write(13, 1);
        gpio_write(18, 1);
        gpio_write(19, 1);
        gpio_write(20, 1);
        gpio_write(34, 1);
        gpio_write(35, 1);
        gpio_write(36, 1);
        gpio_write(37, 1);
        gpio_write(38, 1);
        gpio_write(39, 1);
        gpio_write(40, 1);
        // my_delay_ms(1000);
        rt_thread_delay(1000);
        
        gpio_write(1, 0);
        gpio_write(13, 0);
        gpio_write(18, 0);
        gpio_write(19, 0);
        gpio_write(20, 0);
        gpio_write(34, 0);
        gpio_write(35, 0);
        gpio_write(36, 0);
        gpio_write(37, 0);
        gpio_write(38, 0);
        gpio_write(39, 0);
        gpio_write(40, 0);
        // my_delay_ms(1000);
        rt_thread_delay(1000);
    }
    return 0;
}


