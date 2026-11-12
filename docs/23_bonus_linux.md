## 23. Bonus: Linux
```c
// printf:
#include <stdio.h>

// system:
#include <stdlib.h>

int main(void)
{
	if (system("cd / && ls") != 0)
	{
		printf("System error!\n");
		return 1;
	}

	return 0;
}
```