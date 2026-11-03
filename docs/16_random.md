## 16. Random
```c
// printf:
#include <stdio.h>

// srand, rand:
#include <stdlib.h>

// time:
#include <time.h>

// NULL:
#include <stddef.h>

int main(void)
{
	srand(time(NULL));

	int min = 10;
	int max = 90;

	// Random number: 10-90 (inclusive):
	int range = max - min + 1;
	int number = rand() % range + min;

	printf("Random number: %d\n", number);

	return 0;
}
```