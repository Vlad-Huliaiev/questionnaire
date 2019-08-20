<%--
  Created by IntelliJ IDEA.
  User: Faraday
  Date: 20.08.2019
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Prog.kiev.ua/stat</title>
</head>
<body>
<%
    String firstname = (String) request.getAttribute("user firstname");
    String lastName = (String) request.getAttribute("user lastname");
    Integer jobyes = (Integer) request.getAttribute("user jobyes");
    Integer jobno = (Integer) request.getAttribute("user jobno");
    Integer service = (Integer) request.getAttribute("user service");
    Integer production = (Integer) request.getAttribute("user production");

    out.print(firstname + " ");
    out.print(lastName + ", ");
    out.print("jobyes : " + jobyes);
    out.print("jobno : " + jobno);
    out.print("service : " + service);
    out.print("production : " + production);
%>
</body>
</html>
