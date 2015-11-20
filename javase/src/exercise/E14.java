package exercise;

import java.util.Scanner;

/**
 * Created by zhugm on 2015/10/28.
 */
//14.输入某年某月某日，判断这一天是这一年的第几天？(闰年：西元年份除以400余数为0的，或者除以4为余数0且除以100不为余数0的，为闰年。)
//分析:这个程序主要问题在于月份31天和30天，以及二月份的闰年29天和平年28天问题，解决办法首先判断是平年还是闰年，
// 确定二月份的时间，然后用case选择语句,算出该月份以前的总天数，从三月份开始在加上2月份天数；
// 本次设计程序也有一定局限性，需要输入合法时间,才能正确输出正确的结果:
public class E14
{
    public static void main(String[] args) {
        int count=0;
        int year,month,day,days,February;
        Scanner input = new Scanner(System.in);//创建一个键盘扫描类对象
        System.out.println("请您输入年:");
        year = input.nextInt();                 //输入整形
        System.out.println("请您输入月:");
        month = input.nextInt();
        System.out.println("请您输入日:");
        day = input.nextInt();

        if(year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)){
            February = 29;  //闰年
        }
        else {
            February = 28;  //平年
        }
        switch (month){
            case 1:
                days = 0;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  2:
                days = 31;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  3:
                days = 31 + February;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  4:
                days = 31 + February +31;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  5:
                days = 31 + February +31 + 30;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  6:
                days = 31 + February +31 + 30 + 31;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  7:
                days = 31 + February +31 + 30 + 31 + 30;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  8:
                days = 31 + February +31 + 30 + 31 + 30 + 31;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  9:
                days = 31 + February +31 + 30 + 31 + 30 + 31 +31;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  10:
                days = 31 + February +31 + 30 + 31 + 30 + 31 + 31 +30;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  11:
                days = 31 + February +31 + 30 + 31 + 30 + 31 + 31 +30 +31;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
            case  12:
                days = 31 + February +31 + 30 + 31 + 30 + 31 + 31 +30 +31 +30;
                count = days + day;
                System.out.println(year + "年" + month + "月" + day  +"日是一年中的第" + count + "天");
                break;
        }
    }
}
