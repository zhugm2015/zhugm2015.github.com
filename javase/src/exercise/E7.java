package exercise;

/**
 * Created by zhugm on 2015/10/28.
 */
//7. 输入一行字符，分别统计出其中英文字母、空格、数字和其它字符的个数。
//java.lang.String.charAt() 方法返回指定索引处的char值。索引范围是从0到length() - 1。对于数组索引，序列的第一个char值是在索引为0，索引1，依此类推，
public class E7 {
    public static void main(String[] args) {
        String str ="我是朱桂梅,nice to meet you!123456";
        int charCount =0;
        int digitCount = 0;
        int spaceCount =0;
        int otherCount =0;

        for (int i = 0; i < str.length(); i++) {
            char ch = str.charAt(i);
            if(('a'<= ch && ch <= 'z')||('A'<= ch && ch <= 'Z')){
                charCount++;
            }
            else if('0'<=ch &&ch<= '9'){
                digitCount++;
            }
            else if(ch==' '){
                spaceCount++;
            }
            else{// if(ch >= 0x0391 && ch <= 0xFFE5){ //中文unicode编码
                otherCount++;
            }
        }
        System.out.println("英文字符数："+charCount);
        System.out.println("数字字符数："+digitCount);
        System.out.println("空格数"+spaceCount);
        System.out.println("其它字符数是："+otherCount);
    }
}
