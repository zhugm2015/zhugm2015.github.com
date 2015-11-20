package liuwei.chapter6;

/**
 * Created by zhugm on 2015/11/9.
 */
public class PersonInheritance {
    private String name;   //域为私有
     private int age;

    //alt + insert快捷键  方法为公有
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public String getInfo(){
        return "Name:" + name + "\tAge:" + age;
    }
}
