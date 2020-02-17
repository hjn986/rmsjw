<%--
  Created by IntelliJ IDEA.
  User: 25701
  Date: 2020/1/18
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增商品</title>
</head>
<body>

<form action="/backed/product/addone" method="post">
    <input type="text" placeholder="商品名称" name="pname">
    <input type="text" placeholder="商品价格" name="price">
    <input type="text" placeholder="商品库存" name="pnum">
    <input type="submit" value="新增" >
</form>

</body>
</html>
