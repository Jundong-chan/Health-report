package net.togogo.dao;

import net.togogo.utils.JdbcUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TbUserDao {
    //注册功能实现
    public void regist(String name, String password){
        Connection con=null;
        PreparedStatement ps=null;

        try {
            con= JdbcUtils.getcon();
            String sql = "insert into tb_user (username,password) values(?,?)";
            ps=con.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,password);
            ps.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            JdbcUtils.closedb(null,ps,con);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
