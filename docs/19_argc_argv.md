## 19. Argc & Argv
```c
// printf:
#include <stdio.h>

int main(int argc, char *argv[])
{
	printf("Program: %s\n", argv[0]);

	if (argc >= 2)
	{
		for (int i = 1; i <= argc - 1; i += 1)
		{
			printf("Argument %d: %s\n", i, argv[i]);
		}
	}
	else if (argc <= 1)
	{
		printf("Usage: %s <argument>\n", argv[0]);
	}

	return 0;
}
```