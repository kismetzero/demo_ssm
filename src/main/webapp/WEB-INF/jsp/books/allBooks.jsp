<%--
  Created by IntelliJ IDEA.
  User: Kisme
  Date: 2022/8/28
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>书籍展示</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
</head>
<body>

<div class="container">

    <div class="row clearfix">

        <div class="row">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        书籍列表展示 <small>by:kismetzero</small>
                    </h1>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <a href="${pageContext.request.contextPath}/books/addBooksPage"
                   class="btn btn-primary" role="button">添加书籍</a>
            </div>
        </div>

        <br>

        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-bordered table-hover">

                    <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍描述</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="book" items="${allBooksList}">
                        <tr>
                            <td>${book.bookId}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                        </tr>
                    </c:forEach>
                    </tbody>

                </table>
            </div>
        </div>

    </div>

</div>

</body>
</html>
