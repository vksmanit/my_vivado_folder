#include "simple_vec_dot_product.h"
#include <stdio.h>

int main()
{
    int a[4] = {3,4,5,5};
    int b[4] = {6,7,8,9};
    int c_expected[4] = {18,28,40,45};
    int c[4];

    int a_actual[4],b_actual[4];
    int c_actual[4];

    int retval = 0, i,i_trans, tmp;

   // a[] = {3,4,5,5};
    //b[] = {6,7,8,9};
    for (i=0;i<4;i++){
    	a_actual[i] = a[i];
    	b_actual[i] = b[i];
    }
    simple_vec_dot_product(a_actual,b_actual,c_actual);
    for (i=0;i<4;i++)
    	printf("%d\n",c_actual[i]);


   // c_expected[4] = {18,28,40,45};

    for (i=0;i<4;i++){
    	if ( c_expected[i] != c_actual[i])
    	{
    		retval = 1;
    		break;
    	}
    }

    // print result 
    if (retval == 0)
        printf("result are good \n");
    else
        printf("Mismatch!!!!\n");
    
    return retval;
}
