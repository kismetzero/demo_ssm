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
            <div class="col-md-12">
                <a href="${pageContext.request.contextPath}/books/addBooksPage"
                   class="btn btn-primary" role="button">添加书籍</a>

                <form action="${pageContext.request.contextPath}/books/selectBooks" method="post" class="form-inline" style="float: right">
                    <div class="form-group">
                        <label for="select"></label>
                        <input type="text" name="likeName" id="select" class="form-control"
                               placeholder="请输入要搜索的书籍名称" style="width: 300px">
                    </div>
                    <button type="submit" class="btn btn-info">搜索</button>
                </form>
            </div>
        </div>

        <%--        <br>--%>

        <div class="row">
            <div class="col-md-12">
                <table class="table table-striped table-bordered table-hover">

                    <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍描述</th>
                        <th>书籍操作</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="book" items="${booksList}">
                        <tr>
                            <td>${book.bookId}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/books/updateBooksPage/${book.bookId}"
                                   class="btn btn-warning" role="button">修改</a>
                                &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/books/deleteBooks/${book.bookId}"
                                   class="btn btn-danger" role="button">删除</a>
                            </td>
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
