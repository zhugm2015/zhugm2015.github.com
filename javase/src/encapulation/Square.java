package encapulation;

/**
 * Created by Administrator on 2015/10/31.
 */
public class Square implements Shape {

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
