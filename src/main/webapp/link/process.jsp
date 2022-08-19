<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-08-18
  Time: 오후 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Process</title>
</head>
<body>

<h1> Process </h1>

<%
    String id = request.getParameter("userID");
    String pwd = request.getParameter("pwd");
//    String a = request.getParameter("a");
//    System.out.println(id+","+pwd+","+a);

    if (id.equals("admin") && pwd.equals("1234")) {
%>
<%--페이지 이동 액션 태그--%>
<jsp:forward page="success.jsp"></jsp:forward>
<%
    //response.sendRedirect("success.jsp");
} else {
%>
<jsp:forward page="fail.jsp"></jsp:forward>
<%
        //response.sendRedirect("fail.jsp");
    }
%>

</body>
</html>
