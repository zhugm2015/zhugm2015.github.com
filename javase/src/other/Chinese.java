package other;

/**
 * Created by Administrator on 2015/10/24.
 */
public class Chinese extends Human {
    //域
    String historicalSite;

    //构造方法
    public Chinese(String historicalSite) {
        this.historicalSite = historicalSite;
    }

      public Chinese(String s, int i, char c, String historicalSite) {
        super(s, i, c);
        this.historicalSite = historicalSite;
    }

    //成员方法
    String speakChinese(){
        return "中国人说汉语。。。。";

    }

    public static void main(String[] args) {
        Chinese c1 = new Chinese("故宫");
        Chinese chinese = new Chinese("张三",20,'男',"长城");
        String s1 = chinese.work();
        String s2 = chinese.speakChinese();
        System.out.println(c1);
        System.out.println(chinese.isMarried);
        System.out.println(chinese.name);
        System.out.println(chinese.historicalSite);
        System.out.println(s1);
        System.out.println(s2);
    }
}
