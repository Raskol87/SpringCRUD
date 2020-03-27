<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: kyrik
  Date: 22/3/2020
  Time: 11:59 μ.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create Trainer</title>
</head>
<body>

<%@include file="index.jsp" %>

<h4>Provide Trainer Data</h4>
<br>


<%--@elvariable id="newTrainer" type="models.Trainer"--%>
<form:form action="create" method="POST" modelAttribute="newTrainer">


    <div> First Name :</div>
    <form:input path="firstName"/> <form:errors path="firstName"/><br>
    <div> Last Name :</div>
    <form:input path="lastName"/> <form:errors path="lastName"/><br>
    <div> Subject :</div>
    <form:input path="subject"/> <form:errors path="subject"/><br>
    <input type="submit"/>

</form:form>

<%--<jsp:useBean id="createTrainer" class="entities.Trainer" scope="session"/>--%>

</body>
</html>