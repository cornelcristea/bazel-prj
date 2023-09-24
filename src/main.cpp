using namespace std;

#include <iostream>
#include <string>
#include <thread>
#include <chrono>
#include "lib/clib1/clib1.h"
#include "lib/clib2/clib2.h"

int main(){
    int index = 1;
    while (index > 0){
        auto wakeupTime = chrono::system_clock::now() + chrono::seconds(5);
        this_thread::sleep_until(wakeupTime);
        CLib1::printHelloWorld();
        CLib2::printBazelMessage();
        cout << endl;
    }
    return 0;
}
