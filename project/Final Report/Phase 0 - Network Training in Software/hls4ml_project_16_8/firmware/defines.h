#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_int.h"
#include "ap_fixed.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

//hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 324
#define N_LAYER_2 10
#define N_LAYER_4 10

//hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<16,8> model_default_t;
typedef ap_fixed<16,8> input_t;
typedef ap_fixed<16,8> layer2_t;
typedef ap_fixed<16,8> layer3_t;
typedef ap_fixed<16,8> result_t;

#endif
