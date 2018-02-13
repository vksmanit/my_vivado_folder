
# include "multiplication.h"

int main(){
    // Data Storage
    int a,b;
    int c_expected;
    int c ;

    int a_actual,b_actual;
    int c_actual;

    int retval=0, i, i_trans,tmp;

    a = 3;
    b = 2;

    c = multiplication(a,b);
    c_expected = 3 * 2;

    if ( c != c_expected)
        retval = 1;

    if (retval == 1) 
        printf ("result is good");
    else 
        print ("result is bad");
    
    return 0;
}

