package ch7;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Administrator on 2015/11/7.
 */
public class InputStreamTest {
    public static void main(String[] args) {
       /* try {
            InputStream inputStream = new FileInputStream("d:/a.txt");
            int i;
            while ((i = inputStream.read()) != -1){
                System.out.print((char)i);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }*/
        InputStream inputStream = null;
        try {
            inputStream = new FileInputStream("D:\\2015.8.29(zhugm)\\a.txt");
            int i;
            while ((i = inputStream.read()) != -1){
                System.out.print((char)i);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
