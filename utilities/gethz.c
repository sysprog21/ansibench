#include <stdio.h>
#include <unistd.h>
int main()
{
    printf("%d\n", sysconf(_SC_CLK_TCK));
    return 0;
}
