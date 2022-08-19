<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-08-18
  Time: 오후 4:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
</head>
<body>
    <h1>
        로그인 성공하셨습니다.
    </h1>
<%
    String name = request.getParameter("name");
    out.print(name+"님 반갑습니다.");
%>
</body>
</html>
