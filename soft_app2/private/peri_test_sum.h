


#include "main.h"

extern void wakeup_reset(void);
extern int do_d1(int argc,void *argv[]);
extern int do_d4(int argc,void *argv[]);
extern int do_m1(int argc,void *argv[]);
extern int do_m4(int argc,void *argv[]);
extern int v_play(int argc,void *argv[]);
extern int hpet(int argc,void *argv[]);
extern int latimer(int argc,void *argv[]);
extern int delay(int argc, void *argv[]);
extern int wakeup(int argc, void *argv[]);
extern int date(int argc, void* argv[]);
extern int touch_test(int argc, void *argv[]);
extern int watch_dog(int argc, void *argv[]);
extern int i2cp (int argc, void *argv[]);
extern int i2cw (int argc, void *argv[]);
extern int i2cr (int argc, void *argv[]);
extern int adc(int argc, void* argv[]);
extern int batdet(int argc, void* argv[]);
extern int tmp(int argc, void* argv[]);
extern int uart_init (int argc, void *argv[]);
extern int spi_init(int argc, void* argv[]);
extern int spi_erase(int argc, void* argv[]);
extern int spi_write(int argc, void* argv[]);
extern int spi_read(int argc, void* argv[]);
extern int spi_flash(int argc, void* argv[]);
extern int gpio_int(int argc, void* argv[]);
extern int do_nothing();
extern int copy();
extern int copy_iram(int argc, void *argv[]);
extern unsigned int str2num(unsigned char);


// add
int do_help(int argc, void *argv[]);
int do_exit(int argc, void *argv[]);

//periph
int GPIO_test(void);
int PWM_motor_test(void);
int PWM_servo_test(void) ;
int apb_test(void);
int hpet_test(void) ;
int uart_test(void);
int I2C_test(void);
int SPI_test(void) ;