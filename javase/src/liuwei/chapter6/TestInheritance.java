package liuwei.chapter6;

/**
 * Created by zhugm on 2015/11/9.
 */
public class TestInheritance {
    public static void main(String[] args) {   //psvm + tab快捷键
        StudentInheritance s = new StudentInheritance();
        s.setName("Tom");
        s.setAge(18);
        s.setSchool("THU");

        System.out.println(s.getInfo() + "\nSchool:" + s.getSchool());
    }
}
