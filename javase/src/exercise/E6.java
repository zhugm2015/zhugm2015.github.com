package exercise;

/**
 * Created by zhugm on 2015/10/28.
 */
//6.输入两个正整数m和n，求其最大公约数和最小公倍数。
public class E6 {
    public static void main(String[] args) {
        int m=48,n=12;
        int i,j;
        i=(m > n ? m:n);
        while(!(m % i == 0 && n % i == 0)){
            i--;
        }
        System.out.println("最大公约数：" + i);
        j=(m > n ? m:n);
        while(!(j % n == 0 && j % n == 0)){
            j++;
        }
        System.out.println("最小公倍数：" + j);
    }
}
