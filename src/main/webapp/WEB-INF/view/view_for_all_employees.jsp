<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: mikkita
  Date: 21.05.2024
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<br><br>
    <h3>Information for all employees</h3>
<br><br>

<security:authorize access="hasRole('HR')">

    <input type="button" value="Salary"
            onclick="window.location.href = 'hr_info'">
    Only for HR staff
<br><br>
</security:authorize>
<security:authorize access="hasRole('MANAGER')">

    <input type="button" value="Performance"
           onclick="window.location.href = 'manager_info'">
<br><br>
    Only for Managers
</security:authorize>
</body>
</html>
