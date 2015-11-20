package other;

/**
 * Created by Administrator on 2015/10/18.
 */
public class IfTest {
    public static void main(String[] args) {
        int grade=80;
        if(grade>=80){
            System.out.println("优");
        }else if(grade>=70){
            System.out.println("良");
        }else if(grade>=60){
            System.out.println("中");
        }else if(grade<60){
            System.out.println("差");
        }

        char c = '优';
        String s = "优";// JDK 1.7
        int i = 1;
        boolean b = true;
        switch (i) {// int char String
            case 1:
                System.out.println("85~100");
                break;
            case 2:
                System.out.println("75~85");
                break;
            case 3:
                System.out.println("60~75");
                break;
            default:
                System.out.println("0~60");
                break;
        }
    }
}
