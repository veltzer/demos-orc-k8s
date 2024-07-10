#include <unistd.h> // for sleep(3)
#include <stdlib.h> // for EXIT_SUCCESS
#include <stdio.h> // for printf(3), fflush(3)
#include <assert.h> // for assert(3)

int main(int argc, char** argv, char** envp) {
	int counter=0;
	while(1) {
		printf("Oops, I allocated another 10Gig (%d)\n", counter);
		fflush(stdout);
		unsigned long int size_to_alloc=10*1024L*1024L*1024L;
		void* p=malloc(size_to_alloc);
		assert(p!=NULL);
		sleep(1);
		counter++;
	}
	return EXIT_SUCCESS;
}
