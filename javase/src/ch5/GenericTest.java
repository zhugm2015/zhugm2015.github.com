package ch5;

/**
 * Created by Administrator on 2015/11/1.
 */
/*//第一种写法   （ctrl + o 快捷重写抽象方法）
public class GenericTest implements GenericInterfaceTest<Integer>{
    @Override
    public void m(Integer integer) {
    }
}*/
/*//第二种写法
public class GenericTest<T> implements GenericInterfaceTest<T> {
    @Override
    public void m(T t) {

    }
    public static void main(String[] args) {
        GenericTest<Integer> genericTest = new GenericTest<>();
    }
}*/
