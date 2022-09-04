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
    <title>登陆界面</title>
    <script>
        function ajaxLogin() {
            $.ajax({
                url: "/loginAjax",
                type: "post",
                data: {"username": $("#inputUserName").val(), "password": $("#inputPassword").val()},
                success: function (data) {
                    console.log("成功：" + data);
                    let lInfo = $("#loginInfo");
                    if (data.toString() === "success") {
                        lInfo.css("color", "green");
                        lInfo.html("登陆成功！");
                    }
                    if (data.toString() === "error") {
                        lInfo.css("color", "red");
                        lInfo.html("登陆失败！");
                    }
                },
                error: function (data) {
                    console.log("失败：" + data);
                }
            })

        }
    </script>
</head>
<body>

<div class="container">


    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    登陆页面 <small>by:kismetzero</small>
                </h1>
            </div>
        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-4 col-md-offset-4">
            <form action="${pageContext.request.contextPath}/login.do" method="post">
                <div class="form-group">
                    <label for="inputUserName">用户名：</label>
                    <input type="text" name="username" id="inputUserName" class="form-control" required
                           placeholder="请在这输入用户名">
                </div>
                <div class="form-group">
                    <label for="inputPassword">用户密码：</label>
                    <input type="password" name="password" id="inputPassword" class="form-control" required
                           placeholder="请在这输入用户密码">
                </div>
                <button type="submit" class="btn btn-default">登陆</button>
                <a class="btn btn-danger" role="button" onclick="ajaxLogin()">ajax登陆</a>
                <span id="loginInfo"></span>
            </form>
        </div>
    </div>

</div>

</body>
</html>
