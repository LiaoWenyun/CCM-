#include <stdio.h>
#include <stdint.h>
#include "LOG.h"



//sqaure root 
unsigned int fix_sqrt(float M, unsigned int K){

	    unsigned int M_f=M*(1<<K);
		unsigned int f = 1<<K;
		unsigned int f_sqrt =1<<K;

		int i;
		for(i=0; i< K; i++){
			//unsigned int A = (1 <<K) +  (1<<(K-i));	 	 // A = (1+2^-i);
			unsigned int u = ((((f<<K)+(f<<(K-i)))<<K) + (((f<<K)+(f<<(K-i)))<<(K-i))) >>(2*K);  // f*(1+2^-i) can be done with (f<<SHIFT) + (f<<(SHIFT-i));
			unsigned int u_sqrt =((f_sqrt<<K)+(f_sqrt<<(K-i))) >> K;

			if(u <= M_f){
				f = u;
				f_sqrt = u_sqrt;
			}
		}
		return f_sqrt;

}



//cubic root 
unsigned int fix_sqrt_3(float M, unsigned int K){
	
	unsigned int M_f = M*(1<<K);	
	unsigned int f = 1<<K;
   	unsigned int f_sqrt_3 = 1<<K;

	int i;
	for(i=0 ; i < K; i++){
		//unsigned int A = (1 <<K) +  (1<<(K-i));      // A = (1+2^-i);
		unsigned int u = ((((f<<K)+(f<<(K-i)))<<K) + (((f<<K)+(f<<(K-i)))<<(K-i))) >>(2*K);
	   	u = ((u<<K)+(u<<(K-i))) >> K;	
		unsigned int u_sqrt_3 = ((f_sqrt_3<<K)+(f_sqrt_3<<(K-i))) >> K;

		if(u <= M_f){
			f = u;
			f_sqrt_3 = u_sqrt_3;
		}
	}	

	return f_sqrt_3;

}


//
int32_t fix_binary_log(float M, unsigned int K){
	
	uint32_t M_f = M*(1<<K);	
	uint32_t LUT[K];

	int i;
	for(i=0; i<K; i++ ){    //build the look up table
		uint32_t A= (1<<K)+(1<<(K-i));
		LUT[i] = log_2_fix( A, K);

		
	}

	int32_t f = 0;
	
	for(i=0; i<K; i++ ){    //build the look up table
		uint32_t u = ((M_f<<K) + (M_f<<(K-i)))>>K ;
		int32_t p = f - LUT[i];//p

		if( u <=(1<<K)){
			M_f = u;
			f = p;

		}
	}
		return f;
}



int32_t fix_ln_log(float M, unsigned int K){

	    uint32_t M_f = M*(1<<K);
	   	uint32_t LUT[K];
	   	
		int i;
		for(i=0; i<K; i++ ){    //build the look up table
			uint32_t A= (1<<K)+(1<<(K-i));
			LUT[i] = log_e_fix( A, K);
		}

		int32_t f = 0;

		for(i=0; i<K; i++ ){    //build the look up table
			uint32_t u = ((M_f<<K) + (M_f<<(K-i)))>>K ;
			int32_t p = f - LUT[i];//p

			if( u <=(1<<K) ){
				M_f = u;
				f = p;
			}
		}
		return f;

}


int32_t fix_decimal_log(float M, unsigned int K){

        uint32_t M_f = M*(1<<K);	
        uint32_t LUT[K];
		
		int i;
		for(i=0; i<K; i++ ){    //build the look up table
			uint32_t A= (1<<K)+(1<<(K-i));
			LUT[i] = log_10_fix( A, K);
		}
	
		int32_t f = 0;
		for(i=0; i<K; i++ ){    //build the look up table
			uint32_t u = ((M_f<<K) + (M_f<<(K-i)))>>K ;
			int32_t p = f - LUT[i];//p

			if( u <=(1<<K)){
				M_f = u;
				f = p;
			}
		}
		return f;	

}



unsigned int base_2_exp(float M, unsigned int K){
		
	uint32_t M_f = M*(1<<K);
	uint32_t LUT[K];
	
	int i;
	for(i=0; i<K; i++){    //build the look up table
		uint32_t A= (1<<K)+(1<<(K-i));  //A : 1+2^-i
		LUT[i] = log_2_fix(A,K);
	}

	uint32_t f = 1<<K;
	for(i=0; i<K; i++){
		int32_t u = M_f - LUT[i];
		uint32_t p = ((f<<K)+ (f<<(K-i)))>>K;
		if(u>=0){
			M_f = u;
			f = p;
		}
	}
	return f;
}


unsigned int base_e_exp(float M, unsigned int K){

    uint32_t M_f = M*(1<<K);
    uint32_t LUT[K];
    
	int i;
	for(i=0; i<K; i++){    //build the look up table
		uint32_t A= (1<<K)+(1<<(K-i));  //A : 1+2^-i
		LUT[i] = log_e_fix(A,K);
	}

    uint32_t f = 1<<K;
    for(i=0; i<K; i++){
		int32_t u = M_f - LUT[i];
		uint32_t p = ((f<<K)+ (f<<(K-i)))>>K;
		if(u>=0){
			M_f = u;
			f = p;
		}
	}
    return f;	

}

unsigned int base_10_exp(float M, unsigned int K){

    uint32_t M_f = M*(1<<K);
    uint32_t LUT[K];
    
	int i;
	for(i=0; i<K; i++){    //build the look up table
		uint32_t A= (1<<K)+(1<<(K-i));  //A : 1+2^-i
		LUT[i] = log_10_fix(A,K);
	}

    uint32_t f = 1<<K;
    for(i=0; i<K; i++){
		int32_t u = M_f - LUT[i];
		uint32_t p = ((f<<K)+ (f<<(K-i)))>>K;
		if(u>=0){
			M_f = u;
			f = p;
		}
	}
    return f;	

}


