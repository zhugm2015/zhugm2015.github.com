package ch4;

/**
 * Created by Administrator on 2015/10/31.
 */
public class StringTest {
    public static void main(String[] args) {
        byte[] bytes = {97,98,99};
        String string = new String(bytes);
        System.out.println(string);

        String s = "hello world";
        System.out.println(s.charAt(s.length()-1)); //ctrl + q查看文档
        System.out.println(s.toUpperCase());

        // toCharArray()将此字符串转换为一个新的字符数组
        // String(?)


    }
}
