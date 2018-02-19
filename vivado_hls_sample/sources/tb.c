#include <stdio.h>

void hw_fn (int *a, int *b, int *c);

int main (int argc, char *argv[]) {
    int a_in[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int b_in[10] = {0, 1, -2, 3, 4, 5, 6, 7, 8, 9};
    int c;
    hw_fn (a_in, b_in, &c);
    printf ("Result [%d]\n", c);
    hw_fn (a_in, b_in, &c);
    printf ("Result [%d]\n", c);
    return 0;
}
