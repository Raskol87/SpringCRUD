<%--
  Created by IntelliJ IDEA.
  User: kyrik
  Date: 26/3/2020
  Time: 1:38 π.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Succesful Trainer Creation</title>
</head>
<body>
<%@include file="index.jsp" %>
<jsp:useBean id="createdTrainer" class="spring.crud.simplespringcrud.models.Trainer" scope="request"/>

<h3>Trainer ${createdTrainer.firstName} ${createdTrainer.lastName} teaching ${createdTrainer.subject} succesfully
    Created</h3>

</body>
</html>
