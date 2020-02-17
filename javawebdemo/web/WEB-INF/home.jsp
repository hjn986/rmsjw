<%--
  Created by IntelliJ IDEA.
  User: 25701
  Date: 2020/1/14
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="errorpage.jsp" %>
<html>
<head>
    <title>后台首页</title>
    <style>
   #header {
       background-color:#CA78AF;
       color:white;
       text-align:center;
       padding:5px;
   }
   #nav {
       line-height:30px;
       background-color:#6B74F3;
       height:600px;
       width:200px;
       float:left;
       padding:5px;
   }
   #nav a{
       text-decoration: none;
   }
   #section {
       width:350px;
       float:left;
       padding:10px;
   }
   #section img{
       width:600px;
       height:500px;
   }
   #footer {
       background-color:#CA78AF;
       color:white;
       clear:both;
       text-align:center;
       padding:5px;
   }

    </style>
</head>
<body>

<div id="header">
    <h1>欢迎${us.username}登录管理后台</h1>
</div>
<div id="nav">
    <ul>
        <li>
            <a href="/backed/user/getmsg">管理员列表</a>
        </li>
        <li>
            <a href="/backed/product/getall">商品列表</a>
        </li>
        <li>
            <a href="/backed/index/addproduct">新增商品</a>
        </li>
        <li>
            <a href="/backed/index/deleteproduct">删除商品</a>
        </li>
    </ul>
</div>
<div id="section">

</div>
<div id="footer">
    欢迎
</div>
</body>
</html>
