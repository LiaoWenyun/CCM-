#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "sqrt.h"

//test bench 
void test_log_2(){
	//range 0.25 < m <0.9, cannot be greater 1
	int i;
	float m =0.25;
	for(i =0; i<20; i++){
		m += i*0.0029978;
		printf("Actual base_2_log(%f): %f\n", m, log2(m));
		int32_t result = fix_binary_log(m,15);
      	float res =(float)result;		
		printf("base_2_log(%f): %f\n",m, res/(1<<15));
	}

}

void test_ln(){

    int i;
    float m =0.25;
    for(i =0; i<20; i++){
		m += i*0.0029987;
		printf("Actual base_e_log(%f): %f\n", m, log(m));
		int32_t result = fix_ln_log(m,15);
		float res =(float)result;
		printf("base_e_log(%f): %f\n",m, res/(1<<15));
	}	

}

void test_log_10(){
	//range from 0.25 to 1
    int i;
    float m =0.25;
    for(i =0; i<20; i++){
		m += i*0.0029987;
		printf("Actual base_10_log(%f): %f\n", m, log10(m));
		int32_t result = fix_decimal_log(m,15);
		float res =(float)result;
		printf("base_10_log(%f): %f\n",m, res/(1<<15));
	}	

}

void test_exp_2(){
	//test range from 0 to 1.2
    int i;
    float m =0;
    for(i =0; i<20; i++){
		m += i*0.0061987;
		printf("Actual 2^(%f): %f\n", m, pow(2,m));
		int32_t result = base_2_exp(m,15);
		float res =(float)result;
		printf("2^(%f): %f\n",m, res/(1<<15));
	}	

}

void test_exp_e(){
		//test range from 0 to 1.2
	    int i;
		float m =0;
		for(i =0; i<20; i++){
			m += i*0.0061987;
			printf("Actual e^(%f): %f\n", m, exp(m));
			int32_t result = base_e_exp(m,15);
			float res =(float)result;
			printf("e^(%f): %f\n",m, res/(1<<15));
		}
}

void test_exp_10(){
		//test range from 0 to 1.2
        int i;
		float m =0;
		for(i =0; i<20; i++){
			m += i*0.0061987;
			printf("Actual 10^(%f): %f\n", m, pow(10,m));
			int32_t result = base_10_exp(m,15);
			float res =(float)result;
			printf("10^(%f): %f\n",m, res/(1<<15));
		}	

}

void test_sqrt(){
		//range from 1 to 6.2, has to be greater than 1 
        int i;
		float m =1;
		for(i =0; i<20; i++){
			m += i*0.02743;
			printf("Actual sqrt(%f): %f\n", m, sqrt(m));
			int32_t result = fix_sqrt(m,8);
			float res =(float)result;
			printf("sqrt(%f): %f\n",m, res/(1<<8));
		}	

}

void test_cubicrt(){
		//range from 1 to , has to be greater than 1.
        int i;
		float m =1;
		for(i =0; i<20; i++){
			m += i*0.04743;
			printf("Actual cubic root(%f): %f\n", m, cbrt(m));
			int32_t result = fix_sqrt_3(m,8);
			float res =(float)result;
			printf("cubic root(%f): %f\n",m, res/(1<<8));
		}	

}



int main(int argc,char* argv[]){
	//printf("argv : %s \n",argv[1]);
	
	
	if(strcmp(argv[1], "1") == 0){
		test_log_2();
	}else if(strcmp(argv[1], "2") == 0){
		test_ln();	
	}else if(strcmp(argv[1], "3") == 0){
		test_log_10();
	}else if(strcmp(argv[1], "4") == 0){
		test_exp_2();
	}else if(strcmp(argv[1], "5") == 0){
		test_exp_e();
	}else if(strcmp(argv[1], "6") == 0){
		test_exp_10();
	}else if(strcmp(argv[1], "7") == 0){
		test_sqrt();
	}else if(strcmp(argv[1], "8") == 0){
		test_cubicrt();
	}
	

}
      
