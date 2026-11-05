## 11. Structures
```c
// printf:
#include <stdio.h>

// size_t:
#include <stddef.h>

// Structure:
typedef struct Student
{
	char name[8 + 1];
	int number;
} Student;

// Nested structure:
typedef struct Classroom
{
	char name[13 + 1];
	Student student;
} Classroom;

int main(void)
{
	// Structures: ↓
	Student s1 = {"Nemanja", 3,};
	printf("%s %d\n", s1.name, s1.number);

	Student s2 = {"Studenko", 5,};
	Student *ptr = &s2;
	printf("%s %d\n", ptr -> name, ptr -> number);

	printf("\n");

	// ------------------------------------------------------------

	// Array of structures:
	Student students[] = {s1, s2,};

	size_t students_size = sizeof(students) / sizeof(students[0]);

	for (int i = 0; i <= students_size - 1; i += 1)
	{
		printf("%s %d\n", students[i].name, students[i].number);
	}

	printf("\n");

	// ------------------------------------------------------------

	// Nested structure:
	Classroom c1 = {"C Programming", s1,};

	printf("%s\n", c1.name);
	printf("%s %d\n", c1.student.name, c1.student.number);

	return 0;
}
```