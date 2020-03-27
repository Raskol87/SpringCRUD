<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: kyrik
  Date: 23/3/2020
  Time: 12:24 π.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Trainers</title>
</head>
<body>
<%@include file="index.jsp" %>

<br> <br>


<h4>Provide Trainer Data</h4>
<br>


<%--@elvariable id="updateTrainer" type="models.Trainer"--%>
<form:form action="update_success" method="POST" modelAttribute="updateTrainer">

    <form:hidden path="idTrainer" value="${idTrainer}"/>
    <div> First Name :</div>
    <form:input path="firstName" value="${firstName}"/> <form:errors path="firstName"/><br>
    <div> Last Name :</div>
    <form:input path="lastName" value="${lastName}"/> <form:errors path="lastName"/><br>
    <div> Subject :</div>
    <form:input path="subject" value="${subject}"/> <form:errors path="subject"/><br>
    <input type="submit"/>

</form:form>

</body>
</html>
