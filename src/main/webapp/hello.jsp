<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-08-18
  Time: 오후 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Page</title>

    <style>
        span {
            color: green;
            font-size: 30px;
            font-weight: bold;
        }
    </style>

</head>
<body>
<h1>Welcome!</h1>
<h2>
<%
    Date date = new Date();
    String now = date.toString();
    System.out.println(now);

    // 해당페이지를 요청할때 마다 격언을 매번 다르게 보여주는 코드를 작성하시오.
    Random r = new Random();
    int num = r.nextInt(4);

    String words[] = {"연습은 완벽을 만든다!", "꿈은 인생의 나침반이다.", "노력은 배신하지 않는다.", "쇠는 달구어 졌을때 두드려라"};

    System.out.println(words[num]);
%>
<%=now%>
</h2>
<span><%=words[num]%></span>
<br><br>
<a href="../link/Join.jsp">로그인</a>
</body>
</html>
