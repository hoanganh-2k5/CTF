#include <windows.h>
#include <stdio.h> 

int main() {
    // load DLL
    LoadLibraryA("prob_rev.dll");
    Sleep(3000); // let DLL runtime MessageBox
    return 0;
}