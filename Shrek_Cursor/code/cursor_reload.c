#include <stdio.h>
#include <windows.h>

// gcc cursor_reload.c -o cursor_reload.exe
int main() {
    BOOL result;
    result = SystemParametersInfoA(SPI_SETCURSORS,0,NULL,0);
    printf("%i", result);
    return 0;
}