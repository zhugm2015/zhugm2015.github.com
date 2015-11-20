package other;

/**
 * Created by Administrator on 2015/10/18.
 */
public class ForTest {
    public static void main(String[] args) {
        for (int i = 0; i <10 ; i++) {
            System.out.print(i + "\t");
            //i==5 ctrl + alt + t
            if (i==5) {
               // break;  //跳出离它最近的循环体
                continue;//跳出当前这一个循环，继续执行下一个循环
            }
        }

        for (int i = 0; i <10 ; i++) {
            for (int j = 0; j <10 ; j++) {
                System.out.print(i * j + "\t");
                if (i*j==49) {
                    break;
                }
            }
            System.out.println();
        }
        System.out.println("---------------------------");

        for (int i = 0; i <10 ; i++) {
            for (int j = 0; j <10 ; j++) {
                System.out.print(i * j + "\t");
                if (i*j==49) {
                    break;
                }
            }
            System.out.println();
           /* if(i==7)
                break;*/
        }


    }
}
