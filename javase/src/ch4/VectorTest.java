package ch4;

import java.util.Vector;

/**
 * Created by Administrator on 2015/11/1.
 */
public class VectorTest {
    public static void main(String[] args) {
        Vector<Integer> integerVector = new Vector<Integer>();
        integerVector.add(1);
        integerVector.add(3);
        integerVector.add(5);
        System.out.println(integerVector.size());
        System.out.println(integerVector.get(0));
    }
}
