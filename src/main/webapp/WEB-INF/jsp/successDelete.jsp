<%--
  Created by IntelliJ IDEA.
  User: kyrik
  Date: 27/3/2020
  Time: 7:19 μ.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Succesful Trainer Delete</title>
</head>
<body>
<%@include file="index.jsp" %>
<jsp:useBean id="deletedTrainer" class="spring.crud.simplespringcrud.models.Trainer" scope="request"/>

<h3>Trainer ${cdeletedTrainer.firstName} ${deletedTrainer.lastName} teaching ${deletedTrainer.subject} succesfully
    Deleted</h3>
</body>
</html>
