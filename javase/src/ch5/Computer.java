package ch5;

/**
 * Created by Administrator on 2015/11/1.
 */
public class Computer<T,S> {
    public String add(T x,S y){
        //return "" + x + y;
        return String.valueOf(x) + String.valueOf(y);
    }
    public static void main(String[] args) {
        Computer<Integer,Integer> computer = new Computer<>();//file -》project structrue改为7-diamond
        System.out.println(computer.add(1,8));

        Computer<Double,Integer> computer1 = new Computer<>();
        System.out.println(computer1.add(1.1,2));

        Computer<Boolean,Boolean> computer2 = new Computer<>();
        System.out.println(computer2.add(true,false));

    }

}

/*public class Computer {
    public int add(int x,int y){
        return x + y;
    }
    public double add(double x,double y){
        return x + y;
    }
    public static void main(String[] args) {
        Computer computer = new Computer();
        System.out.println(computer.add(1,6));
        System.out.println(computer.add(1.1,6.1));
    }
}*/
