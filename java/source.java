import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class source {

    private static List<Boolean> sieve(int n) {
        List<Boolean> prime = new ArrayList<Boolean>(Collections.nCopies(n + 1, true));
        int p = 2;
        while(p * p <= n) {
            if(prime.get(p)) {
                for(int i = p * p; i < n + 1; i += p) {
                    prime.set(i, false);
                }
            }
            p++;
        }

        return prime;
    }

    public static void main(String[] args) {
        System.out.println("--- Hello from Java");
        int num = 100;
        List<Boolean> prime = sieve(num);

        for (int i = 2; i < num + 1; i++) {
            if(prime.get(i)) System.out.println(i);
        }
    }

}
