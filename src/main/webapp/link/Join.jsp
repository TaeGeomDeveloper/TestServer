<%@ page import="util.DateTimeService" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-08-18
  Time: 오후 3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="util.DateTimeService"%>
<html>
<head>
    <title>Log in</title>
</head>
<body>

<h1> 로그인 </h1>

<%--    id, password의 값을 입력 받는 form문 작성 --%>
    <form method="post" action ="../Process/data_process.jsp">
        <table id="user">
            <tr>
                <td>
                    아이디 :
                    <input type="text" alt="ID" name="userID">
                </td>
            </tr>
            <tr>
                <td>
                    비밀번호 :
                    <input type="password" alt="password" name="pwd">
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="전송">
                </td>
            </tr>
        </table>
    </form>
    <div>
        <%
            // 서버의 현재시간을 2022/08/19  12:11:09의 형식으로 브라우저에 출력하는 코드 작성
            // DateTimeService 클래스를 만들어서 구현 하시오.

            DateTimeService DT = new DateTimeService();
            out.println(DT.DateTime());
        %>
        <br>
        <a href="../Process/data_process2.jsp">담임코드A,로컬코드A 조회</a>
    </div>

</body>
</html>
