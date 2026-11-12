## 22. Execution Time
```c
// printf:
#include <stdio.h>

// clock_t, clock, CLOCKS_PER_SEC:
#include <time.h>

int main(void)
{
	clock_t start = clock();
	if (start == (clock_t) -1)
	{
		printf("Unable to determine processor time!\n");
		return 1;
	}

	// Code whose execution time is being measured:
	for (int i = 0; i < 100000; i += 1)
	{
		printf("%d ", i);
	}
	printf("\n");

	clock_t end = clock();
	if (end == (clock_t) -1)
	{
		printf("Unable to determine processor time!\n");
		return 1;
	}

	double cpu_time = (double) (end - start) / CLOCKS_PER_SEC;
	printf("CPU time: %.6lf seconds\n", cpu_time);

	return 0;
}
```