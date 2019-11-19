#include <stdio.h>

int main (int argc, char** argv)
{
	if(argc < 2){
		printf("give number of iterations\n");
		return -1;
	}
	int b = 0;
	int a = atoi(argv[1]);
	printf("Start\n");
	for(int i = 0; i < a * 1000; i++){
		if(b > 1000000)
			b = 0;
		else
			b += i;
	}
	printf("Finish\n");
	return 0;


}
