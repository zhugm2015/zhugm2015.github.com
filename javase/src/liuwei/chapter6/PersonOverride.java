package liuwei.chapter6;

/**
 * Created by zhugm on 2015/11/9.
 */
public class PersonOverride {
    String name; //默认为protected,即可以在同一个类、同一个包、子类中访问
    int age;
    public String getInfo(){
        return "Name:" + name + "\tAge:" + age;
    }

}
