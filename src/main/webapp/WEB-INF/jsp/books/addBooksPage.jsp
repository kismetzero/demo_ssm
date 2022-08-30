<%--
  Created by IntelliJ IDEA.
  User: Kisme
  Date: 2022/8/29
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
</head>
<body>

<div class="container">

    <div class="row clearfix">

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    书籍添加页面 <small>by:kismetzero</small>
                </h1>
            </div>
        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-4 col-md-offset-2">
            <form action="${pageContext.request.contextPath}/books/addBooks" method="post">
                <div class="form-group">
                    <label for="bId">书籍编号：<small style="color: red">！注意，默认0自动插入，请不要输入已有的编号！</small></label>
                    <input type="text" name="bookId" id="bId" class="form-control" value="0">
                </div>
                <div class="form-group">
                    <label for="bName">书籍名称：</label>
                    <input type="text" name="bookName" id="bName" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="bCounts">书籍数量：</label>
                    <input type="text" name="bookCounts" id="bCounts" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="bDetail">书籍描述：</label>
                    <textarea name="detail" id="bDetail" class="form-control" required style="resize: none"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">提交</button>
                <button type="reset" class="btn btn-danger">重置</button>
            </form>
        </div>
    </div>


</div>

</body>
</html>
