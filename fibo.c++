#include <iostream>
using namespace std;
int main(){
    int length;
    cout << "Length ";
    std::cin >> length;
    int first = 0;
    int second = 1;
    for( int i = 0; i <= length-1; i++){
        int third = first;
        first = first + second;
        second = third;
        cout << first << " ";


}





    return 0;
}