package ch4;

import java.util.Enumeration;
import java.util.Hashtable;

/**
 * Created by Administrator on 2015/11/1.
 */
public class HashtableTest {
    public static void main(String[] args) {
        Hashtable<Integer,String> integerStringHashtable = new Hashtable<Integer, String>();
        integerStringHashtable.put(1,"aa");
        integerStringHashtable.put(3,"bb");
        integerStringHashtable.put(5, "cc");
        System.out.println(integerStringHashtable.get(3));

        for (Integer integer : integerStringHashtable.keySet()) {
            System.out.println(integer + "->" + integerStringHashtable.get(integer));
        }

        String[] strings = {"a","bb","ccc"};
        /*for (int i = 0; i <strings.length ; i++) {
            System.out.println(strings[i]);
        }*/
        for (String string : strings) {  //foreach迭代循环
            System.out.println(string);
        }




    }
}
