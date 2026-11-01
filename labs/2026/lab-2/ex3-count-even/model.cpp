
#include <iostream>
using namespace std;

int main() {
    int arr[] = {2, 5, 8, 7, 10};
    int n = 5;
    int count = 0;

    for (int i = 0; i < n; i++) {
        if (arr[i] % 2 == 0) {
            count++;
        }
    }

    cout << count << endl;

    return 0;
}