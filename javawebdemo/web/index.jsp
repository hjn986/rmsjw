<%--
  Created by IntelliJ IDEA.
  User: 25701
  Date: 2020/1/15
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <style>
        #a{
            width: 100%;
            height: 824px;
            position: absolute;
        }
        #b{
            width: 100%;
            height: 100%;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: space-around;
        }
        #a img{
            width: 100%;
            height:824px;
        }

    </style>
</head>
<body>
<div id="a">
    <img src="imgs/1.gif" alt="">
</div>
<div id="b">
<form action="/backed/user/login" method="post">
    <input type="text" placeholder="账户" name="username">
    <br> <br>
    <input type="password" placeholder="密码" name="password">
    <br> <br>
    <input type="submit" value="登录                                " >
    <br> <br>
</form>
</div>
</body>
</html>
