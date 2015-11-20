package cn.edu.tsinghua.training;

/**
 * Created by zhugm on 2015/10/30.
 */
public class Square extends Shape{
    private double length;

    public Square(double length) {
        this.length = length;
    }
    @Override
    public double Area(){
        return Math.pow(length,2);
    }
    @Override
    public double Perimeter(){
        return length*4;
    }
}
