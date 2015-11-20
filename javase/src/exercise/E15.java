package exercise;

import java.util.Scanner;

/**
 * Created by zhugm on 2015/10/28.
 */
// 15. 输入三个整数x,y,z，请把这三个数由小到大输出。
public class E15 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in); //创建一个键盘类扫描对象
        System.out.println("输入第一个数：");
        int a = input.nextInt();
        System.out.println("输入第二个数:");
        int b = input.nextInt();
        System.out.println("输入第三个数:");
        int c = input.nextInt();
        int temp;
        if(a > b){
            temp = a;
            a = b;
            b =temp;   //交换a和b的位置
        }
        if(b > c){
            temp = b;
            b = c;
            c = temp;
        }
        if(a > c){
            temp = a;
            a = c;
            c = temp;
        }
        System.out.println("这三个整数由小到大的输出为" + a + " " +  b + " " + c);


    }
}
