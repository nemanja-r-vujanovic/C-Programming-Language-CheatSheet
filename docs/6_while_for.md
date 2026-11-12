## 6. While & For
```c
// printf:
#include <stdio.h>

int main(void)
{
	// while:
	int i = 0;
	while (i < 10)
	{
		printf("%d\n", i);
		i += 1;

		// break;
		// continue;
		// goto label;
	}

	// label:
		// printf("Jump\n");

	// do-while:
	// do
	// {
		// printf("Done\n");
	// }
	// while (0);

	printf("\n");

	// ------------------------------------------------------------

	// for:
	for (int i = 0; i < 10; i += 1)
	{
		printf("%d\n", i);
	}

	// Nested for:
	for (int i = 0; i < 10; i += 1)
	{
		for (int j = 0; j < 10; j += 1)
		{
			printf("- ");
		}

		printf("\n");
	}

	return 0;
}
```