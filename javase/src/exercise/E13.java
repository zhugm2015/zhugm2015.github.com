package exercise;

/**
 * Created by zhugm on 2015/10/28.
 */
//13. 一个整数，它加上100后是一个完全平方数，再加上168又是一个完全平方数，请问该数是多少？
public class E13 {
    public static void main(String[] args) {

        /*for (int i = 0; i <10000 ; i++) {
            double a = Math.sqrt(i + 100);
            double b = Math.sqrt(i + 268);
            if(a == (int)a && b == (int)b){
                System.out.println("这个数是:" + i);
                continue;
            }
        }*/

        for (int i = 0; i <100000 ; i++) {
            if(Math.sqrt((double)(i + 100)) % 1 == 0 && Math.sqrt((double)(i + 268)) % 1 == 0){
                System.out.println(i);
            }

        }
    }
}
