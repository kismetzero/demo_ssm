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
    <script src="https://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
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
