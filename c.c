#include <unistd.h>
#include <stdio.h>

int main() {
    char    str0[40];
    char    str1[20] = "hello\n";
    char    str2[20];
    printf("%p %p %p\n", str0, str1, str2);
    printf("str1: %s", str1);
    size_t read_size = read(STDIN_FILENO, str2, 128);
    str2[read_size] = 0;
    printf("str1: %s", str1);
}
