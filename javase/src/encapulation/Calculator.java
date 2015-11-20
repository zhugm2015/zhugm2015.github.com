package encapulation;

/**
 * Created by zhugm on 2015/10/28.
 */
public class Calculator {
    private int x;
    private int y;
    private int z;

    //alt + Inset 快捷键
    public Calculator(int x, int y) {

        this.x = x;
        this.y = y;
    }

    public int add(){
        return x + y;
    }
    public int minus(){
        return x - y;
    }
    public int power(){
        return x * y;
    }
    public int divide(){
        return x / y;
    }

    public void setY(int y) {
        if(y == 0){
            System.out.println("can not / by zero....");
            System.exit(0);
        }
        this.y = y;
    }

    public int getY() {
        return y;
    }
}
