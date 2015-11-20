package exercise;

/**
 * Created by zhugm on 2015/10/30.
 */
//27. 求100之内的素数
public class E27 {
    public static void main(String[] args) {
        int counter=0;
        for (int i = 0; i <=100; i++) {
            boolean b = true;
            for (int j = 2; j < i/2 + 1 ; j++) {
                if((i % j) == 0){
                    b = false;
                    break;
                }
            }
            if(b){
                System.out.println(i);
                counter++;
            }
        }
        System.out.println("toatal:" + counter);
    }
}
