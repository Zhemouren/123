#ifndef ALGORITHM_H
#define ALGORITHM_H
#include "main.h"
#include "peri_test_sum.h"

#define Analog          0xBFEC0040    // the basic address of PWM register


// #define HW_SPI_SPCR		            *(volatile unsigned char *)(LS1C102_SPI_BASE+0x00) //控制寄存器

// ////////////////////////
// #define LS1C102_PWM_BASE          0xBFEC0030    // the basic address of PWM register

// typedef struct
// {
//     volatile unsigned int div_freq;             // 0xc0 pwm_div_freq
//     volatile unsigned int comp;                 // 0xc4 pwm_comp
//     volatile unsigned int state;                // 0xc8 pwm_state
// } HW_PWM_t;

// #define g_pwm               ((HW_PWM_t *) LS1C102_PWM_BASE)
void my_fft(void *pssOUT, void *pssIN, u16 Nbin)
unsigned int sqrt_16(unsigned long M);
#endif