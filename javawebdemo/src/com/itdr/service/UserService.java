package com.itdr.service;

import com.itdr.common.ResponseCode;
import com.itdr.pojo.Users;

public interface UserService {
    ResponseCode<Users> login(String username,String password);

    //获取管理员信息
    ResponseCode selectAll();
    //修改管理员信息
    ResponseCode updatePassword(String password);
}
