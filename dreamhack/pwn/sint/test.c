#include<stdio.h>

int main(){
    int size;
    scanf("%d", &size);
    printf("%d\n", size);
    if (size > 256 || size < 0)
    {
        printf("Buffer Overflow!\n");
        return 0;
    }
    return 0;
}