package exercise;

/**
 * Created by zhugm on 2015/10/28.
 */
//9. 一个数如果恰好等于它的因子之和，这个数就称为’完数’。例如6=1＋2＋3.编程 找出1000以内的所有完数。
public class E9 {
    public static void main(String[] args) {
        for (int n = 1; n <= 1000 ; n++) {
            int sum=0;
            for (int i = 1; i < n ; i++) {
                if(n % i == 0){
                    sum += i;
                }
            }
            if(sum == n){
                System.out.print(n + "=");
                for (int j = 1; j < n ; j++) {
                    if(n % j == 0){
                        System.out.print(j + " ");
                    }
                }
                System.out.println();
            }
        }
    }
}
