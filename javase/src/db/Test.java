package db;

import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by BH00350 on 2015/11/19.
 */
/*JDBC连接MySQL详见 http://www.cnblogs.com/trustnature/articles/3300510.html
前期准备工作，安好JDK，idea。
下载JDBC驱动mysql-connector-java-5.0.5-bin.jar导入到工程中去
1、加载合适的JDBC驱动程序
2、与MySQL数据库连接的方法：
Connection con=DriverManager.getConnection(“jdbc:mysql://主机IP或主机名:3306/数据库名”,用户名，密码);
java.sql.DriveManager  用来处理装载驱动程序并且为创建新的数据库连接提供支持；
–java.sql.Connection  用于完成对特定定数据库的连接；
–java.sql.Statement  用于对特定的数据库执行SQL语句；java.sql.Statement又包含了以下两个重要的子类型：
       java.sql.PreparedStatement  用于执行预编译的SQL语句；
       java.sql.CallableStatement  用于执行数据库中存储的过程的调用；
--java.sql.ResultSet  用于保存查询所得的结果集
3、创建Statement对象
Statement  st=con.createStatement();  //最后可以不关闭，但推荐关闭
利用Statement对象可以执行静态SQL语句，静态SQL语句可以是Select语句、Delete语句、Update语句和Insert语句。
执行SQL语句
Statement接口提供了三种执行SQL语句的方法：executeQuery()、executeUpdate() 和execute()。具体使用哪一个方法由SQL语句本身来决定。
方法 executeQuery 用于产生单个结果集的语句，例如 SELECT 语句等。
方法 executeUpdate 用于执行INSERT、UPDATE或DELETE 语句以及SQL DDL（数据定义语言）语句，
    例如 CREATE TABLE 和 DROP TABLE。INSERT、UPDATE 或DELETE 语句的效果是修改表中零行或多行中的一列或多列。
    executeUpdate 的返回值是一个 整数，指示受影响的行数（即更新计数）。
    对于 CREATE TABLE 或DROP TABLE 等不操作行的语句，executeUpdate 的返回值总为零。
方法 execute 用于执行返回多个结果集、多个更新计数或二者组合的语句。一般不会需要该高级功能。
*/
public class Test {
    private static final String URL="jdbc:mysql://127.0.0.1:3306/demo";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    private static final String SQL="INSERT INTO demo.student VALUES(201505,'Tom',26,'n')";

    public static void main(String[] args) {
        Connection connection = null;               //java.sql.Connection  用于完成对特定定数据库的连接；
        PreparedStatement preparedStatement = null; //java.sql.PreparedStatement  用于执行预编译的SQL语句；
        try {
            new Driver();           //1、加载驱动
            connection = DriverManager.getConnection(URL,USER,PASSWORD);  //2、与MySQL数据库连接
            preparedStatement = connection.prepareStatement(SQL);           //用于执行预编译的SQL语句；
            preparedStatement.executeUpdate();   // executeUpdate 用于执行INSERT、UPDATE或DELETE 语句以及SQL DDL（数据定义语言）语句，
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            if(preparedStatement != null){
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if(connection != null){
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
