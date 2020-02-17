package com.itdr.dao;

import com.itdr.pojo.Product;
import com.itdr.pojo.Users;
import com.itdr.utils.C3P0Util;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class UserDao {
    public Users selectByUserNameAndPassword(String username,String password){
        QueryRunner qr = new QueryRunner(C3P0Util.getCom());

        String sql = "select id,username,password,type,create_time,update_time from neuedu_user where username = ? and password = ?";
        Users u = null;
        try {
            u = qr.query(sql,new BeanHandler<Users>(Users.class),username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return u;
    }
    //获取管理员信息
    public Users selectAllInformation() {
        QueryRunner qr = new QueryRunner(C3P0Util.getCom());
        String sql = "select * from neuedu_user where type = 1";
        Users query = null;
        try {
            query= qr.query(sql, new BeanHandler<Users>(Users.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return query;
    }
    //修改管理员信息
    public int UpdatePassword(String password) {
        QueryRunner qr = new QueryRunner(C3P0Util.getCom());
        String sql = "update neuedu_user set password = ?,update_time=now() where type=1 ";
        int update=0;
        try {
            update = qr.update(sql, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return update;
    }
    //查看用户信息
    public List<Users> selectUsers(){
        QueryRunner qr = new QueryRunner(C3P0Util.getCom());
        String sql = "Select * from  bishe_user where type=0";
        List<Users> query = null;
        try {
            query= qr.query(sql, new BeanListHandler<Users>(Users.class));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return query;
    }
}
