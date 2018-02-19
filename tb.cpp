#include "double_mult.h"
int main() {
	// Data storage
	din_t a[NUM_TRANS], b[NUM_TRANS];
	dout_t c_expected[NUM_TRANS];
	dout_t c[NUM_TRANS];

	//Function data (to/from function)
	din_t a_actual, b_actual;
	dout_t c_actual;
	int retval=0, i, i_trans, tmp;
	for (i=0; i<NUM_TRANS; i++){
		a[i] = i;
	}
	for (i=0; i<NUM_TRANS; i++){
		b[i] = i+2;
	}
	// Execute the function multiple times (multiple transactions)
	for(i_trans=0; i_trans<NUM_TRANS-1; i_trans++){
		//Apply next data values
		a_actual = a[i_trans];
		b_actual = b[i_trans];
		double_mult(a_actual, b_actual, &c_actual);
		c[i_trans] = c_actual;
	}
	for (i=0; i<NUM_TRANS; i++){
		c_expected[i] = a[i] * b[i];
	}
	// Check outputs against expected
	for (i = 0; i < NUM_TRANS-1; ++i) {
		if(c[i] != c_expected[i]){
			retval = 1;
		}
	}
	// Print Results
	if(retval == 0){
		printf(" Results are good \n");
	}
	else {
		printf(" Mismatch: retval=%d \n", retval);
	}
	// Return 0 if outputs are correct
	return retval;
}
