function sieve(n) {
    const prime = Array(n+1).fill(1);
    var p = 2;

    while(p * p <= n) {
        if(prime[p]) {
            for(i = p * p; i < n + 1; i += p) {
                prime[i] = 0;
            }
        }
        p++;
    }

    return prime;
}

console.log("--- Hello from JavaScript");
const num = 100,
prime     = sieve(num);

for(i = 2; i < num; i++) {
    if(prime[i]) console.log(i);
}
