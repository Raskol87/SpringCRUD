<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: kyrik
  Date: 23/3/2020
  Time: 12:22 π.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Trainers</title>
</head>
<body>
<%@include file="index.jsp" %>
<%--<jsp:useBean id="TrainerList" type="java.util.List<entities.Trainer>" scope="request" />--%>
<br> <br>
<table>
    <thead>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Teaching Subject</th>
    </tr>
    </thead>

    <%--    <jsp:useBean id="ListOfTrainers" scope="page" type="java.util.List<spring.crud.simplespringcrud.models.Trainer>"/>--%>
    <c:forEach var="currentTrainer" items="${ListOfTrainers}">
        <tr>
            <td>${currentTrainer.firstName}</td>
            <td>${currentTrainer.lastName}</td>
            <td>${currentTrainer.subject}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
