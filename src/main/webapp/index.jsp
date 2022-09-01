<%--
  Created by IntelliJ IDEA.
  User: KISMET-WIN10
  Date: 2022/8/27
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <title>主页</title>
</head>
<body>
<h1 class="text-center"> demo_ssm主页 </h1>

<h3 class="text-center">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/login" role="button">
        登录（测试用）
    </a>
</h3>

<h3 class="text-center">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/books/booksIndex" role="button">
        书架
    </a>
</h3>

</body>
</html>
