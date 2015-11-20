package cn.edu.tsinghua.training;

/**
 * Created by Administrator on 2015/10/31.
 */
public class PassTest {
    /*//值传递
    private static int i;
    public static void method(int i){   //形式参数
        System.out.println("b: i = " + i);
        i++;
        System.out.println("c: i =" + i);
    }
    public static void main(String[] args) {
        PassTest passTest = new PassTest();
        passTest.i = 0;
        System.out.println("a: i=" + passTest.i);
        method(i);  //实际参数
        System.out.println("d: i=" + i);
    }*/

    //引用传递:传递的是地址的值
    private int i;
    public static void method(PassTest passTest){
        System.out.println("b: i = " + passTest.i);
        passTest.i +=100;
        System.out.println("c: i = " + passTest.i);
    }
    public  static void test(String string){
        string +="test";
    }
    public static void main(String[] args) {
        PassTest passTest = new PassTest();
        System.out.println("a: i = " + passTest.i);
        method(passTest);//实际参数
        System.out.println("d: i = " + passTest.i);

        //引用传递String以及8种基本数据类型的封装类是特例，他们是值传递
        String string = "测试";
        test(string);
        System.out.println(string);
    }
}
