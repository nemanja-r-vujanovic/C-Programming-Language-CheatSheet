## 6. While & For
```c
// printf:
#include <stdio.h>

int main(void)
{
	// while:
	int i = 1;
	while (i <= 10)
	{
		printf("%d\n", i);
		i += 1;

		// break;
		// continue;
		// goto label;
	}

	// label:
	label:
		printf("Jump.\n");

	// do-while:
	// do
	// {
		// printf("Done.\n");
	// }
	// while (0);

	// ------------------------------------------------------------

	// for:
	for (int i = 1; i <= 10; i += 1)
	{
		printf("%d\n", i);
	}

	// Nested for:
	for (int i = 1; i <= 10; i += 1)
	{
		for (int j = 1; j <= 10; j += 1)
		{
			printf("- ");
		}

		printf("\n");
	}

	return 0;
}
```