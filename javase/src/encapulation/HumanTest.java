package encapulation;

/**
 * Created by zhugm on 2015/10/30.
 */
public class HumanTest {
    public static void main(String[] args) {
        Human zhangsan = new Human("张三");
        Human.message = "message from zhangsan.."; //静态方法中只能直接引用静态成员
        System.out.println(zhangsan.name);
        System.out.println(Human.message);

        Human lisi = new Human("李四");
        System.out.println(lisi.name);
        System.out.println(Human.message);

        System.out.println(Math.PI);//PI也属于类Math的静态成员
    }
}
