package exercise;

/**
 * Created by zhugm on 2015/10/28.
 */
//4. 将一个正整数分解质因数。例如：输入90,打印出90=2*3*3*5。
public class E4 {
    public static void main(String[] args) {
        int a = 90;
        int i = 2;
        System.out.print(a + "=");
        while (a > i) {
            if (a % i == 0) {
                System.out.print(i + "*");
                a = a / i;
            }
            //if (a % i != 0){
            else {
                i++;
            }
        }
        System.out.println(i);

    }
}
