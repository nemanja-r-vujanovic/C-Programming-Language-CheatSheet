## 9. Pointers & Static
```c
// printf:
#include <stdio.h>

void count(void);

int main(void)
{
	// Pointers with variables: ↓
	int var = 10;

	// Pointer to variable:
	int *ptr1 = &var;

	// Modify value:
	*ptr1 = 20;

	// Modify address:
	// ptr1 = &var;

	printf("Value: %d\n", *ptr1);
	// printf("Value: %d\n", var);

	printf("Address: %p\n", ptr1);
	// printf("Address: %p\n", &var);

	// 64-bit system = 8 bytes; 32-bit system = 4 bytes:
	printf("Size of pointer: %zu\n", sizeof(ptr1));

	printf("\n");

	// ------------------------------------------------------------

	// Pointers with arrays: ↓
	char str[] = {'B', 'y', 'e', '!', '\0',};

	// ptr2 points to str[0u]:
	char *ptr2 = str;
	printf("Value: %c\n", *ptr2);
	printf("Address: %p\n", ptr2);
	printf("String: %s\n", ptr2);

	// 64-bit system = 8 bytes; 32-bit system = 4 bytes:
	printf("Size of pointer: %zu\n", sizeof(ptr2));

	// Change pointer to the next element:
	ptr2 += 1;
	printf("%c\n", *ptr2);

	// Change pointer to the previous element:
	ptr2 -= 1;
	printf("%c\n", *ptr2);

	// Access the next element without changing the pointer:
	char element = *(ptr2 + 1);
	printf("%c\n", element);

	// Variations:                     // Modify *ptr2:   // Modify ptr2:
	// char *ptr2 = str;               // Yes             // Yes
	// const char *ptr2 = str;         // No              // Yes
	// char *const ptr2 = str;         // Yes             // No
	// const char *const ptr2 = str;   // No              // No

	printf("\n");

	// ------------------------------------------------------------

	// static:
	count();
	count();
	count();

	return 0;
}

void count(void)
{
	// Keep value between calls:
	static int num = 0;

	num += 1;
	printf("%d\n", num);
}
```