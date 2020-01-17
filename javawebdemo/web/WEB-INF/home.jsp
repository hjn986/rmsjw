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
       background-color:black;
       color:white;
       text-align:center;
       padding:5px;
   }
   #nav {
       line-height:30px;
       background-color:wheat;
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
       background-color:black;
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
    <a href="/backed/product/getall">获取所有商品数据</a>
</div>
<div id="section">

</div>
<div id="footer">
    欢迎
</div>
</body>
</html>
