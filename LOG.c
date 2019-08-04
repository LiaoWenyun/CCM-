#include <stdio.h>
#include<stdint.h>
#include "LOG.h"

#define INV_LOG2_E_Q1DOT31  UINT64_C(0x58b90bfc) // Inverse log base 2 of e
#define INV_LOG2_10_Q1DOT31 UINT64_C(0x268826a1) // Inverse log base 2 of 10


uint32_t log_2_fix(uint32_t x, size_t precision)
{
	    int32_t b = 1U << (precision - 1);
		int32_t y = 0;

		uint64_t z = x;
		size_t i;
		for (i = 0; i < precision; i++) {
			z = z * z >> precision;
			if (z >= 2U << precision) {
				z >>= 1;
				y += b;
			}
			b >>= 1;
		}

		return y;

}

uint32_t log_e_fix(uint32_t x, size_t precision){

	    uint64_t t;
		t = log_2_fix(x, precision) * INV_LOG2_E_Q1DOT31;
		return t >> 31;

}

uint32_t log_10_fix(uint32_t x, size_t precision){

	    uint64_t t;
		t = log_2_fix(x, precision) * INV_LOG2_10_Q1DOT31;
		return t >> 31;

}
