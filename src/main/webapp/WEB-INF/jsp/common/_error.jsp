<%--
  Created by IntelliJ IDEA.
  User: 李明元
  Date: 2016/11/12
  Time: 0:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <%@ include file="/WEB-INF/jsp/common/_meta.jsp" %>
    <title>错误页面</title>
</head>
<body>
<section class="container-fluid page-404 minWP text-c">
    <p class="error-title"><i class="Hui-iconfont va-m" style="font-size:80px">&#xe688;</i><span
            class="va-m"> 错误</span></p>
    <p class="error-description">Exception

    </p>
    <%
        Exception exception = (Exception)request.getAttribute("exception");
        out.print(exception);
    %>
    <p class="error-info">您可以：<a href="javascript:;" onclick="history.go(-1)" class="c-primary">&lt; 返回上一页</a><span
            class="ml-20">|</span><a href="#" class="c-primary ml-20">去首页 &gt;</a></p>
</section>
</body>
</html>