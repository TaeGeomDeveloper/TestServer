<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-08-19
  Time: 오전 10:07
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" import="service.LoginCheck"%>
<%@ page import="vo.LoginVO" %>
<html>
<head>
    <title>Data Process</title>
</head>
<body>
<%
    // scriptlet ( 데이터 처리 )
    // 클라이언트로 부터 전송된 데이터 처리
    String id = request.getParameter("userID");
    String pwd = request.getParameter("pwd");

    // 자체 로직처리
    // 개발자 작성한 클래스 사용하기
    LoginCheck check = new LoginCheck();
    LoginVO vo = check.getMember(id, pwd);

    String url = "../link/fail.jsp";
    if(vo != null){
        url = "../link/success.jsp?name="+vo.getName();
        //System.out.println(vo.getName());
    }
    response.sendRedirect(url);

%>
</body>
</html>
