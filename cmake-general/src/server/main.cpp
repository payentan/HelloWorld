#include <iostream>

#include "hello_static.h"
#include "hello.h"

using namespace std;

int main() {
    cout<<"Hello World!"<<endl;
    HelloLibFun();
    HelloStatic();
    return 0;
}
