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
            height: 754px;
            position: relative;
        }
        #b{
            width: 600px;
            height: 400px;
            border-radius: 10px;
            background-color: #D374A8;
            opacity: 0.9;
            position: absolute;
            display: flex;
            align-items: center;
            justify-content: space-around;
            top: 212px;
            left: 450px;
        }
        #b1{
            width: 500px;
            height: 100px;
            /*background-color: coral;*/
        }
        #b2{
            width: 500px;
            height: 300px;
            /*background-color: coral;*/

        }
        #a img{
            width: 100%;
            height:754px;
        }

    </style>
</head>
<body>
<div id="a">
    <img src="imgs/2.jpg" alt="">
</div>
<div id="b">
    <div id="b1">
        <h1>后台管理中心</h1>
    </div>
    <div id="b2">
    <form action="/backed/user/login" method="post">
        <input type="text" placeholder="登录账户" name="username">
        <br> <br> <br> <br>
        <input type="password" placeholder="登录密码" name="password">
        <br> <br> <br> <br>
        <input type="submit" value="登录                                " >
        <br> <br> <br> <br>
    </form>
    </div>
</div>

</body>
</html>
