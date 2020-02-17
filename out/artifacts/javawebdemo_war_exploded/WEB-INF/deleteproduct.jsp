<%--
  Created by IntelliJ IDEA.
  User: 25701
  Date: 2020/2/17
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除商品</title>
</head>
<body>
<form action="/backed/product/deleteone" method="post">
    <input type="text" placeholder="商品名称" name="pname">
    <input type="submit" value="删除">
</form>
</body>
</html>
