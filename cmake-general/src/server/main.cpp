#include <iostream>

#include "hello_static.h"
#include "hello.h"

using namespace std;

int main() {
    cout<<"Hello World!"<<endl;
    HelloLibFun();
    HelloStatic();
    
    auto message = "Hello C++11";
    std::cout << message << std::endl;

    return 0;
}
