#include<iostream>
#include <vector>

using std::cout; using std::endl;
using std::vector;

vector<int> sieve(int n) {
    vector<int> prime(n + 1, 1);
    int p = 2;
    while(p * p <= n) {
        if(prime[p]) {
            for(int i = p * p; i < n + 1; i += p) {
                prime[i] = 0;
            }
        }
        p++;
    }

    return prime;
}

int main() {
    cout << "--- Hello from C++" << endl;
    int num = 100;
    vector<int> prime = sieve(num);

    for (int i = 2; i < num + 1; i++) {
        if(prime[i]) cout << i << endl;
    }

    return 0;
}
