## 10. Memory Management
```c
// printf:
#include <stdio.h>

// malloc, calloc, realloc, free:
#include <stdlib.h>

// NULL:
#include <stddef.h>

int main(void)
{
	// Allocate memory for an array of 10 integers (uninitialized):
	int *ptr1 = malloc(10 * sizeof(*ptr1));

	// Check if memory allocation failed:
	if (ptr1 == NULL)
	{
		printf("Malloc failed!\n");
		return 1;
	}

	// ------------------------------------------------------------

	// Allocate memory for an array of 10 integers (zero-initialized):
	int *ptr2 = calloc(10, sizeof(*ptr2));

	// Check if memory allocation failed:
	if (ptr2 == NULL)
	{
		printf("Calloc failed!\n");
		free(ptr1);
		return 1;
	}

	// ------------------------------------------------------------

	// Resize the first array from 10 integers to 5 integers:
	int *temp = realloc(ptr1, 5 * sizeof(*temp));

	// Check whether reallocation failed:
	if (temp == NULL)
	{
		printf("Realloc failed!\n");
		free(ptr1);
		free(ptr2);
		return 1;
	}

	// temp and ptr1 now point to the same memory:
	ptr1 = temp;

	// ------------------------------------------------------------

	// Free all allocated memory:
	free(ptr1);
	free(ptr2);

	return 0;
}
```