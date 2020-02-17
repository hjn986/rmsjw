package com.itdr.service.impl;

import com.itdr.common.ResponseCode;
import com.itdr.dao.UserDao;
import com.itdr.pojo.Users;
import com.itdr.service.UserService;

public class UserServiceImpl implements UserService {
    private UserDao ud = new UserDao();

    @Override
    public ResponseCode<Users> login(String username, String password) {
        //参数非空判断
        if (username == null || "".equals(username)) {
            return ResponseCode.toDefeated("非法参数");
        }
        if (password == null || "".equals(password)) {
            return ResponseCode.toDefeated("非法参数");
        }
        //参数非空
        Users users = ud.selectByUserNameAndPassword(username,password);
        //返回值null,说明用户不存在，登录失败
        if (users == null){
            return ResponseCode.toDefeated("用户不存在!");
            }
            //成功返回数据
            return ResponseCode.toSuccess(users);
        }

    /**
     * 获取管理员信息
     * @return
     */
    @Override
    public ResponseCode selectAll() {
        Users users = ud.selectAllInformation();
        return ResponseCode.toSuccess(users);
    }

    /**
     * 修改管理员信息
     * @param password
     * @return
     */
    @Override
    public ResponseCode updatePassword(String password) {
        int i = ud.UpdatePassword(password);
        return ResponseCode.toSuccess(i);
    }


}


