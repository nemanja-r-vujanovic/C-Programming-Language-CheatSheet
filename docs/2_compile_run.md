## 2. Compile & Run
```bash
# Compile:
gcc -Wall -Wextra -Wpedantic -fno-builtin "code.c" -o "program_c"

# Run:
./"program_c"

# #include <math.h>:
# gcc -Wall -Wextra -Wpedantic -fno-builtin "code.c" -o "program_c" -lm

# #include <pthread.h>:
# gcc -Wall -Wextra -Wpedantic -fno-builtin "code.c" -o "program_c" -pthread
```