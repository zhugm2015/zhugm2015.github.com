package cn.edu.tsinghua.training;

/**
 * Created by zhugm on 2015/10/30.
 */
public abstract class Shape {
    public abstract double Area();  //抽象方法没有实现，即没有方法体；抽象的方法必须声明在抽象类中；在抽象的子类中被实现
    public abstract double Perimeter();
}
