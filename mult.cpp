#include "hier_func.h"
void double_mult(din_t A, din_t B, dout_t *C)
{
//#pragma HLS DATAFLOW
//#pragma HLS PIPELINE
#pragma HLS INTERFACE ap_ctrl_hs port=return

	*C = (A) * (B);
}
