package exercise;

/**
 * Created by zhugm on 2015/10/28.
 */
//11. 有1、2、3、4个数字，能组成多少个互不相同且无重复数字的三位数？都是多少？
// 1.程序分析：可填在百位、十位、个位的数字都是1、2、3、4。组成所有的排列后再去 掉不满足条件的排列。
public class E11 {
    public static void main(String[] args) {
        int count=0,m=0;
        for (int a = 1; a <= 4 ; a++)
            for (int b = 1; b <= 4 ; b++)
                for (int c = 1; c <= 4 ; c++) {
                    if(a != b && b != c && a != c){
                        System.out.print(a);
                        System.out.print(b);
                        System.out.print(c);
                        System.out.print(" ");
                        m++;
                        count++;
                    }
           /* if(m==8){
            System.out.println();
            m=0;}*/
                }
        System.out.println();
        System.out.println("三位无重复数字个数：" + count);
    }
}
