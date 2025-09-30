#include<bits/stdc++.h>
#include <cstdint>
using namespace std;

int64_t sub_140001510(){
int i; 
uint16_t v2;

v2 = 0xBEEF;
for ( i = 0; i < 100; ++i )
    v2 = 26125 * v2 - 3233;
  return v2;
}

int main(){
    unsigned int v15 = sub_140001510();
    printf("%u", v15);
    return 0;
}