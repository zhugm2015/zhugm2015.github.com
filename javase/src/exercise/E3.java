package exercise;
/**
 * Created by zhugm on 2015/10/19.
 */
//3.打印出所有的“水仙花数”，所谓“水仙花数”是指一个三位数，其各位数字立方和等于该数本身。
// 例如：153是一个“水仙花数’，因为153=1的三次方＋5的三次方＋3的三次方
public class E3 {
    public static void main(String[] args) {
        int a,b,c;
        for (int i = 100; i <=999 ; i++) {
            c = i % 10;      //各位
            b = i / 10 % 10; //十位
            a = i /100;      //百位
            if(i == (a*a*a + b*b*b + c*c*c)){
                System.out.println(i);
            }
        }
    }
}