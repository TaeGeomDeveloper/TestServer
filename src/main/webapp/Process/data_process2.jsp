<%@ page import="vo.StudentVO" %>
<%@ page import="service.StudentCheck" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-08-19
  Time: 오후 3:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Data process2</title>
</head>
<body>

    <%
        // 담임코드A,로컬코드A 조회

        String mgr = "A";
        String local = "A";

        // 로직 클래스 호출해서 컬렉션을 받아오고 결과 페이지로 보내야 한다.
        StudentCheck check = new StudentCheck();
        ArrayList<StudentVO> list = new ArrayList<StudentVO>();
        list = check.getMember(mgr, local);

        // 보내기
        request.setAttribute("list",list);
        System.out.println(list.size());
        //String url = "../link/list.jsp";
        //response.sendRedirect(url);
    %>
<jsp:forward page="../link/list.jsp"></jsp:forward>
</body>
</html>
