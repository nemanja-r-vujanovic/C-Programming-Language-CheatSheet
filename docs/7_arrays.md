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
	size_t array_size = sizeof(array) / sizeof(array[0u]);
	printf("Array size: %zu\n", array_size);

	// Change value:
	array[0u] = 1;
	// printf("First element: %d\n", array[0u]);

	// Loop through:
	for (size_t i = 0u; i < array_size; i += 1u)
	{
		printf("%d\n", array[i]);
	}

	printf("\n");

	// ------------------------------------------------------------

	// 2D array:
	int matrix[3u][3u] =
	{
		{1, 2, 3,},
		{4, 5, 6,},
		{7, 8, 9,},
	};

	size_t rows = sizeof(matrix) / sizeof(matrix[0u]);
	size_t cols = sizeof(matrix[0u]) / sizeof(matrix[0u][0u]);

	for (size_t i = 0u; i < rows; i += 1u)
	{
		for (size_t j = 0u; j < cols; j += 1u)
		{
			printf("%d ", matrix[i][j]);
		}

		printf("\n");
	}

	printf("\n");

	// ------------------------------------------------------------

	// Array of strings:
	char fruits[2u][6u + 1u] = {"Apple", "Banana",};
	// 2 = number of strings; 7 = maximum capacity of each string

	printf("%s\n", fruits[0u]);

	return 0;
}
```