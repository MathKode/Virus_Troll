#include <windows.h>
// gcc .\main.c -o main.exe
int main() {
    struct tagPOINT position;    
    int move=4;
    while (1) {
        GetCursorPos(&position);
        position.x += move;
        SetCursorPos((int)position.x, (int)position.y);
        Sleep(50);
    }
    return 0;
}