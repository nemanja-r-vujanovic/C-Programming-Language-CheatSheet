## 12. Unions
```c
// printf:
#include <stdio.h>

// strcpy:
#include <string.h>

typedef union Data
{
	int i;
	double d;
	char s[6 + 1];
} Data;

int main(void)
{
	Data data;

	data.i = 10;
	printf("Int: %d\n", data.i);

	data.d = 9.9;
	printf("Double: %.2lf\n", data.d);

	strcpy(data.s, "Hello!");
	printf("String: %s\n", data.s);

	return 0;
}
```