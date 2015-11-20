package other;

/**
 * Created by Administrator on 2015/10/18.
 */
//2.判断101-200之间有多少个素数，并输出所有素数。素数：只能被1和它本身整除的正整数（1不是素数）
public class PrimeNumber {
    public static void main(String[] args) {
        for (int i = 101; i <= 200 ; i++) {
            for (int j = 2; j < i; j++) {
                if( (i%j) == 0){
                    break;
                }
            }
        }
    }
}
