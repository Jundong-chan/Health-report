package net.togogo.utils;

import java.sql.*;

//jdbc工具类，封装数据库驱动，建立连接，关闭连接
public class JdbcUtils {
    private static String Driver="com.mysql.cj.jdbc.Driver";
    private static String url="jdbc:mysql://localhost:3306/gzdx2020?serverTimezone=UTC";
    private static String user="root";
    private static String password="12345678";

    public static Connection getcon() throws ClassNotFoundException, SQLException {
        Class.forName(Driver);
        Connection con= DriverManager.getConnection(url, user, password);
        return con;
    }

    public static void closedb(ResultSet rs,Statement ps,Connection con) throws SQLException {
        if(rs!=null)
        {
            rs.close();
        }
        if(ps!=null)
        {
            ps.close();
        }
        if(con!=null)
        {
            con.close();
        }

    }

}
