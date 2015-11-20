package other;

/**
 * Created by zhugm on 2015/10/30.
 */
public class Son extends Father {
    public Son() {
        super();
        System.out.println("in son constructor..");
    }
    void test(){
        int j = i;
    }
    public static void main(String[] args) {
        Son son = new Son();
        son.test();
    }
}
