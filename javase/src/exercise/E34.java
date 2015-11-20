package exercise;

import java.util.Hashtable;
import java.util.Random;

/**
 * Created by Administrator on 2015/11/1.
 */
// 随机生成[1， 20]数10000次
// 使用两种方法实现（java.lang.Math，java.util.Random）
// 并判断两种方法的效率和分布
public class E34 {
    //效率
    public static void main(String[] args) {
        int counter = 0;
        Random random = new Random();
        Hashtable<Integer,Integer> hashtable = new Hashtable<Integer, Integer>();
        for (int i = 0; i <20 ; i++) {
            hashtable.put(i + 1,0);
        }
        long start = System.currentTimeMillis();
        for (int i = 0; i < 10000; i++) {
            int r = (int) (Math.random() * 20 + 1);
            hashtable.put(r, hashtable.get(r) + 1);
            //int r = random.nextInt(20) + 1;
            //System.out.println(r);
            //counter++;
        }
        for (Integer integer : hashtable.keySet()) {
            System.out.println(integer + "->" + hashtable.get(integer));
        }
        System.out.println("total: " + counter);
        System.out.println("time: " + (System.currentTimeMillis() - start));
    }

    //分布


}
