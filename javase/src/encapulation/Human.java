package encapulation;

/**
 * Created by zhugm on 2015/10/30.
 */
//访问限定修饰符
public class Human {
    protected String name;  //受保护的，外包中子类的实例对象可以访问
    static String message;   //静态的

    public Human() {
    }

    public Human(String name) {
        this.name = name;
    }
}
