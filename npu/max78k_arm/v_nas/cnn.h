/**************************************************************************************************
* Copyright (C) 2019-2021 Maxim Integrated Products, Inc. All Rights Reserved.
*
* Maxim Integrated Products, Inc. Default Copyright Notice:
* https://www.maximintegrated.com/en/aboutus/legal/copyrights.html
**************************************************************************************************/

/*
 * This header file was automatically @generated for the v_nas network from a template.
 * Please do not edit; instead, edit the template and regenerate.
 */

#ifndef __CNN_H__
#define __CNN_H__

#include <stdint.h>
typedef int32_t q31_t;
typedef int16_t q15_t;

/* Return codes */
#define CNN_FAIL 0
#define CNN_OK 1

/*
  SUMMARY OF OPS
  Hardware: 36,481,536 ops (36,180,992 macc; 300,544 comp; 0 add; 0 mul; 0 bitwise)
    Layer 0 (conv1_1_Conv_4): 1,835,008 ops (1,769,472 macc; 65,536 comp; 0 add; 0 mul; 0 bitwise)
    Layer 1 (conv1_2_Conv_4): 2,129,920 ops (2,097,152 macc; 32,768 comp; 0 add; 0 mul; 0 bitwise)
    Layer 2 (conv1_3_Conv_4): 18,939,904 ops (18,874,368 macc; 65,536 comp; 0 add; 0 mul; 0 bitwise)
    Layer 3 (conv2_1_Conv_4): 4,792,320 ops (4,718,592 macc; 73,728 comp; 0 add; 0 mul; 0 bitwise)
    Layer 4 (conv2_2_Conv_4): 540,672 ops (524,288 macc; 16,384 comp; 0 add; 0 mul; 0 bitwise)
    Layer 5 (conv3_1_Conv_4): 4,743,168 ops (4,718,592 macc; 24,576 comp; 0 add; 0 mul; 0 bitwise)
    Layer 6 (conv3_2_Conv_4): 1,056,768 ops (1,048,576 macc; 8,192 comp; 0 add; 0 mul; 0 bitwise)
    Layer 7 (conv4_1_Conv_4): 1,188,864 ops (1,179,648 macc; 9,216 comp; 0 add; 0 mul; 0 bitwise)
    Layer 8 (conv4_2_Conv_4): 1,181,696 ops (1,179,648 macc; 2,048 comp; 0 add; 0 mul; 0 bitwise)
    Layer 9 (conv5_1_Conv_4): 68,096 ops (65,536 macc; 2,560 comp; 0 add; 0 mul; 0 bitwise)
    Layer 10 (fc_Gemm_4): 5,120 ops (5,120 macc; 0 comp; 0 add; 0 mul; 0 bitwise)

  RESOURCE USAGE
  Weight memory: 301,760 bytes out of 442,368 bytes total (68.2%)
  Bias memory:   842 bytes out of 2,048 bytes total (41.1%)
*/

/* Number of outputs for this network */
#define CNN_NUM_OUTPUTS 10

/* Use this timer to time the inference */
#define CNN_INFERENCE_TIMER MXC_TMR0

/* Port pin actions used to signal that processing is active */

#define CNN_START LED_On(1)
#define CNN_COMPLETE LED_Off(1)
#define SYS_START LED_On(0)
#define SYS_COMPLETE LED_Off(0)

/* Run software SoftMax on unloaded data */
void softmax_q17p14_q15(const q31_t * vec_in, const uint16_t dim_vec, q15_t * p_out);
/* Shift the input, then calculate SoftMax */
void softmax_shift_q17p14_q15(q31_t * vec_in, const uint16_t dim_vec, uint8_t in_shift, q15_t * p_out);

/* Stopwatch - holds the runtime when accelerator finishes */
extern volatile uint32_t cnn_time;

/* Custom memcopy routines used for weights and data */
void memcpy32(uint32_t *dst, const uint32_t *src, int n);
void memcpy32_const(uint32_t *dst, int n);

/* Enable clocks and power to accelerator, enable interrupt */
int cnn_enable(uint32_t clock_source, uint32_t clock_divider);

/* Disable clocks and power to accelerator */
int cnn_disable(void);

/* Perform minimum accelerator initialization so it can be configured */
int cnn_init(void);

/* Configure accelerator for the given network */
int cnn_configure(void);

/* Load accelerator weights */
int cnn_load_weights(void);

/* Verify accelerator weights (debug only) */
int cnn_verify_weights(void);

/* Load accelerator bias values (if needed) */
int cnn_load_bias(void);

/* Start accelerator processing */
int cnn_start(void);

/* Force stop accelerator */
int cnn_stop(void);

/* Continue accelerator after stop */
int cnn_continue(void);

/* Unload results from accelerator */
int cnn_unload(uint32_t *out_buf);

/* Turn on the boost circuit */
int cnn_boost_enable(mxc_gpio_regs_t *port, uint32_t pin);

/* Turn off the boost circuit */
int cnn_boost_disable(mxc_gpio_regs_t *port, uint32_t pin);

#endif // __CNN_H__
