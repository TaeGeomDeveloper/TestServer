<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.StudentVO" %>
<%@ page import="vo.LoginVO" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-08-19
  Time: 오후 3:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
</head>
<body>
<%
    // 보낸 값 받기
    ArrayList<StudentVO> list = (ArrayList<StudentVO>) request.getAttribute("list");    // 오브젝트를 ArrayList 로 변경
    out.println(list.size());

    out.print("<table>");
    for(StudentVO vo : list){
        out.print("<tr>");
        out.println("<td>"+vo.getId()+"</td><td>"+vo.getPwd()+"</td><td>"+vo.getName()+"</td>");
        out.print("</tr>");
    }
    out.print("</table>");
%>
<table>
    <%
        for(StudentVO vo : list){
    %>
        <tr>
            <td><%=vo.getId()%></td>
            <td><%=vo.getPwd()%></td>
            <td><%=vo.getName()%></td>
        </tr>
    <%
        }
    %>
</table>


</body>
</html>
