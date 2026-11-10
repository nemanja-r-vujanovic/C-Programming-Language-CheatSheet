## 2. Compile & Run
```bash
# Compile:
gcc -Wall -Wextra -Wpedantic -fno-builtin "code.c" -o "program_c"

# Run:
./"program_c"

# C to Assembly:
# gcc -Wall -Wextra -Wpedantic -fno-builtin -S -masm=intel "code.c" -o "code.s"

# #include <math.h>:
# gcc -Wall -Wextra -Wpedantic -fno-builtin "code.c" -o "program_c" -lm

# #include <pthread.h>:
# gcc -Wall -Wextra -Wpedantic -fno-builtin "code.c" -o "program_c" -pthread
```