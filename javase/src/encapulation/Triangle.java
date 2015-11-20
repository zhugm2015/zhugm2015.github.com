package encapulation;

/**
 * Created by Administrator on 2015/10/31.
 */
public class Triangle implements Shape{
    private double a,b,c;

    public Triangle(double a, double b, double c) {
        if((a + b) > c && (b + c) > a && (c + a) > b) {
            this.a = a;
            this.b = b;
            this.c = c;
        }
        else {
            System.out.println("error.....");
            System.exit(0);
        }
    }

    public double Area(){
        return 0;
    }

    public double Perimeter(){
        return a + b + c;
    }
}
