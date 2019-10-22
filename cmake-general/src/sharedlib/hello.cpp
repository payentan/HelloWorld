#include "hello.h"
#include "hello_static.h"

void HelloLibFun()
{
    HelloStatic();
    cout<<"Hello World from shared library"<<endl;
}
