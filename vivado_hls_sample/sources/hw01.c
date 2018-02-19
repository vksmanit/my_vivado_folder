void hw_fn (int *a, int *b, int *c) {

    #pragma HLS interface ap_ctrl_none port=return
    #pragma HLS INTERFACE ap_fifo depth=10 port=a
    #pragma HLS INTERFACE ap_fifo depth=10 port=b
    #pragma HLS INTERFACE ap_fifo depth=1  port=c

	int acc = 0;
    for (unsigned char i = 0; i < 10; i++) {
    	acc = acc + a[i] * b[i];
    }
    c[0] = acc;
}
