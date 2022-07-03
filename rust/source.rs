const NUM: usize = 100;

fn sieve() -> [bool; NUM + 1] {
    let mut prime = [true; NUM + 1];
    let mut p = 2;
    while p * p <= NUM {
        if prime[p] {
            for i in (p * p..NUM + 1).step_by(p) {
                prime[i] = false;
            }
        }
        p += 1;
    }

    return prime;
}

fn main() {
    println!("--- Hello from Rust");
    let prime = sieve();

    for i in 2..NUM + 1 {
        if prime[i] {
            println!("{}", i);
        }
    }
}