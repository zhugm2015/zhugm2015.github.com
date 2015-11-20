package ch6;

import com.sun.org.apache.xpath.internal.SourceTree;

/**
 * Created by Administrator on 2015/11/1.
 */
public class ExceptionTest {
    public static void main(String[] args) {
        int x = 1;
        int y = 0;
        String[] strings = new String[10];
        try {
            System.out.println(x / y);
            System.out.println(strings[10]);
        }catch (ArithmeticException e){

        }catch (ArrayIndexOutOfBoundsException e){

        }
        /*try {
            //把这两条语句换一下位置，将不会输出hello，因为try内一旦发生异常，
            // try内这条语句后的代码都不再执行，无论异常有没有被catch
            System.out.println(x / y);
            System.out.println(strings[10]);
        }catch (ArithmeticException e){

        }*/
       /* try{
            System.out.println(x / y);
            System.out.println(strings[10]);
        }catch (ArithmeticException | ArrayIndexOutOfBoundsException e){

        }*/
        System.out.println("hello");

    }
}
