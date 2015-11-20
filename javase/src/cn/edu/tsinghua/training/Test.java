package cn.edu.tsinghua.training;

/**
 * Created by zhugm on 2015/10/30.
 */
public class Test {
    public static void main(String[] args) {
        Shape shape = new Square(1.2); //******此处重点
        System.out.println(shape.Area());
        System.out.println(shape.Perimeter());

        Triangle triangle = new Triangle(3,4,5);
        System.out.println(triangle.Area());
        System.out.println(triangle.Perimeter());
    }
}
