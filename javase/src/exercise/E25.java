package exercise;

import com.sun.org.apache.xpath.internal.SourceTree;

/**
 * Created by zhugm on 2015/10/28.
 */
//25. 一个5位数，判断它是不是回文数。即12321是回文数，个位与万位相同，十位与千位相同。
public class E25 {
    public static void main(String[] args) {
        int count=0;
        for (int i = 10000; i <= 99999 ; i++) {
            int a = i / 10000;
            int b = i % 10000 /1000;
            int c = i % 10000 % 1000 /100;
            int d = i % 10000 % 1000 % 100 /10;
            int e = i % 10000 % 1000 % 100 % 10;
            int x = 10000*a + 1000*b + 100*c + 10*d +e;
            if(i== x && a == e && b == d){
                System.out.println(i);
            }
            count++;
        }
        System.out.println("total:" + count);
    }
}
