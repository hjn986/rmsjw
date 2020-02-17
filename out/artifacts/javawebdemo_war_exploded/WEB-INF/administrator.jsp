<%--
  Created by IntelliJ IDEA.
  User: 25701
  Date: 2020/2/17
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>管理员列表</title>
    <style>
        #wk{
            height: 500px;
            width: 500px;
            position: absolute;
            float: left;
            left: 17%;
            top:80px;
        }
        table
        {
            border-collapse:collapse;
        }

        table, td, th
        {
            border:1px solid black;
        }
        td
        {
            text-align:center;
        }
        .fg{
            height: 20px;
            width: 1px;
        }
        #mm{
            position: absolute;

        }
        #ck{
            margin-left: 100px;
        }

    </style>
</head>
<body>
<div id="wk">
    <span>欢迎进入个人页面</span>
    <div class="fg"></div>

    <c:if test="${not empty administrator.data}">
        <table>
            <tr>
                <th>**id**</th>
                <th>**管理员姓名**</th>
                <th>**管理员密码**</th>
                <th>**管理员手机号**</th>
            </tr>
                <%--<c:forEach items="${ad.data}" var="a">--%>
            <tr>
                <td>${administrator.data.id}</td>
                <td>${administrator.data.username}</td>
                <td>${administrator.data.password}</td>
                <td>${administrator.data.iphone}</td>
            </tr>
                <%--</c:forEach>--%>
        </table>
    </c:if>
    <c:if test="${empty administrator.data}">
        没有管理员信息
    </c:if>
    <div class="fg"></div>
    <div id="mm">
        <form action="">
            <input type="submit" value="修改密码">
        </form>
    </div>
    <div id="ck">
        <form action="">
            <input type="submit" value="查看用户信息">
        </form>
    </div>

</div>
</body>
</html>
