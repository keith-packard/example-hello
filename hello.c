/* Copyright 2019 SiFive, Inc */
/* SPDX-License-Identifier: Apache-2.0 */

#include <stdio.h>
asm (".global _printf_float");
#include <stdlib.h>

#ifdef PICOLIBC_INTEGER_PRINTF_SCANF
typedef int print_type;
#define PRINTF_ARG(x)	(x)
#define FORMAT "%d"
#endif

#ifdef PICOLIBC_FLOAT_PRINTF_SCANF
typedef float print_type;
#define PRINTF_ARG(x)	printf_float(x)
#define FORMAT "%g"
#endif

#ifndef PRINTF_ARG
typedef double print_type;
#define PRINTF_ARG(x)	(x)
#define FORMAT "%g"
#endif

int main() {
    print_type x;

    for (x = 0; x < 20; x = x + 1)
	printf ("Hello, World " FORMAT "\n", PRINTF_ARG(x));
    exit(0);
}
