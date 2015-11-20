package exercise;

/**
 * Created by zhugm on 2015/10/28.
 */
//10. 一球从100米高度自由落下，每次落地后反跳回原高度的一半；再落下，求它在第10次落地时，共经过多少米？第10次反弹多高？
public class E10 {
    public static void main(String[] args) {
        float h=100;
        float s=100;
        for (int i = 2; i <=10 ; i++) {
            h/=2;
            s+=h*2;
            System.out.print("第" + i + "次落地共经过" + s + "米" + "；");
            System.out.println("第" + i + "次反弹高度" + h + "米");
        }
    }
}

