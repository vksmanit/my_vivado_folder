#include"matrix_mul.h"
#include <stdio.h>

int main()
{
    double a[4] = {2,3,4,5};
    double b[4] = {4,5,6,7};
    //double c_expected[4]= {26,31,46,55};
    double c_expected[4]= {28,37,40,53};
    
    double c[4];
    double a_actual[4], b_actual[4];
    double c_actual[4];

    int retval = 0, i ;

    for(i=0;i<4;i++)
    {
        a_actual[i] = a[i];
        b_actual[i] = b[i];
    }

    matrix_mul(a_actual,b_actual,c_actual);
    
     
    for(i=0;i<4;i++)
        printf ("%f \t",c_actual[i]);

    
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
        printf("Result is Good !!\n ");
    else
        printf("Mismatch !! \n");

    return retval;

}
