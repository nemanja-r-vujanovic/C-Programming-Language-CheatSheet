## 22. Execution Time
```c
// printf:
#include <stdio.h>

// clock_t, clock, CLOCKS_PER_SEC:
#include <time.h>

int main(void)
{
	clock_t start = clock();

	// Code whose execution time is being measured:
	for (int i = 1; i <= 100000; i += 1)
	{
		printf("%d ", i);
	}
	printf("\n");

	clock_t end = clock();

	double execution_time = (double) (end - start) / CLOCKS_PER_SEC;

	printf("Execution time: %lf seconds\n", execution_time);

	return 0;
}
```