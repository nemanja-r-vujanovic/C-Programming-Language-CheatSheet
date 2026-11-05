## 7. Arrays
```c
// printf:
#include <stdio.h>

// size_t:
#include <stddef.h>

int main(void)
{
	// Array:
	int array[] = {6, 2, 3, 4, 5,};

	// Array size:
	size_t array_size = sizeof(array) / sizeof(array[0]);
	printf("Array size: %zu\n", array_size);

	// Change value:
	array[0] = 1;
	// printf("First element: %d\n", array[0]);

	// Loop through:
	for (int i = 0; i <= array_size - 1; i += 1)
	{
		printf("%d\n", array[i]);
	}

	printf("\n");

	// ------------------------------------------------------------

	// 2D array:
	int matrix[3][3] =
	{
		{1, 2, 3,},
		{4, 5, 6,},
		{7, 8, 9,},
	};

	size_t rows = sizeof(matrix) / sizeof(matrix[0]);
	size_t cols = sizeof(matrix[0]) / sizeof(matrix[0][0]);

	for (int i = 0; i <= rows - 1; i += 1)
	{
		for (int j = 0; j <= cols - 1; j += 1)
		{
			printf("%d ", matrix[i][j]);
		}

		printf("\n");
	}

	printf("\n");

	// ------------------------------------------------------------

	// Array of strings:
	char fruits[2][6 + 1] = {"Apple", "Banana",};
	// 2 = number of strings; 7 = maximum capacity of each string.

	return 0;
}
```