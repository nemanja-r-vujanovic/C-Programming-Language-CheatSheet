## 15. Math Functions
```c
// printf:
#include <stdio.h>

// Math functions:
#include <math.h>

int main(void)
{
	printf("ceil(4.3) = %.2lf\n", ceil(4.3));
	printf("floor(4.8) = %.2lf\n", floor(4.8));

	printf("fabs(-25.0) = %.2lf\n", fabs(-25.0));
	printf("sqrt(25) = %.2lf\n", sqrt(25));
	printf("cbrt(8) = %.2lf\n", cbrt(8));

	printf("pow(5, 2) = %.2lf\n", pow(5, 2));
	printf("exp(1) = %.2lf\n", exp(1));

	printf("fmod(10, 3) = %.2lf\n", fmod(10, 3));

	printf("log(2.71828) = %.2lf\n", log(2.71828));
	printf("log10(100) = %.2lf\n", log10(100));

	printf("cos(0) = %.2lf\n", cos(0));
	printf("sin(0) = %.2lf\n", sin(0));
	printf("tan(0) = %.2lf\n", tan(0));

	return 0;
}
```