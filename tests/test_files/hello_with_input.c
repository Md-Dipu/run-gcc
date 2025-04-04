#include <stdio.h>

int main() {
    char input[100];
    if (fgets(input, sizeof(input), stdin)) {
        printf("Input received: %s", input);
    }
    return 0;
}