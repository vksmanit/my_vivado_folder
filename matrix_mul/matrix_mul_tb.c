#include"matrix_mul.h"
#include <stdio.h>

int main()
{
    int a[4] = {2,3,4,5};
    int b[4] = {4,5,6,7};
    int c_expected[4]= {26,31,46,55};
    
    int c[4];
    int a_actual[4], b_actual[4];
    int c_actual[4];

    int retval = 0, i ;

    for(i=0;i<4;i++)
    {
        a_actual[i] = a[i];
        b_actual[i] = b[i];
    }

    matrix_mul(a_actual,b_actual,c_actual);
    
     
    for(i=0;i<4;i++)
        printf ("%d \t",c_actual[i]);

    
    for(i=0;i<4;i++)
    {
        if (c_actual[i] != c_expected[i])
            {
                retval = 1;
                break;
            }
    }

    // print result 
    if (retval == 0)
        printf("good \n ");
    else
        printf("Mismatch\n");

    return retval;

}
