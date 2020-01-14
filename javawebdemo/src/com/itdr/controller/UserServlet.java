package com.itdr.controller;

import com.itdr.common.ResponseCode;
import com.itdr.pojo.Users;
import com.itdr.service.impl.UserService;
import com.itdr.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/user/*")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String requestURI = request.getRequestURI();
        String[] split = requestURI.split("/");
        //管理员登录
        switch (split[split.length - 1]) {
            case "login":
                login(request, response);
                break;
            case "getmsg":
                getMsg(request, response);
                break;
        }

    }

    private UserService userService = new UserServiceImpl();

    //管理员登录
    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        ResponseCode<Users> login = userService.login(username, password);
        response.getWriter().write(login.toString());

    }

    //获取管理员信息
    private void getMsg(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("获取管理员信息");
    }
    //修改管理员信息
    //禁用管理员
}
