<%--
  Created by IntelliJ IDEA.
  User: Kisme
  Date: 2022/8/26
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<form action="/login.do" method="post">
    <p> 用户：<input type="text" name="username"> </p>
    <p> 密码：<input type="password" name="password"> </p>
    <p> <input type="submit" value="提交"> </p>
</form>
</body>
</html>
