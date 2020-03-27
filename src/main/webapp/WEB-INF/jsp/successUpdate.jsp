<%--
  Created by IntelliJ IDEA.
  User: kyrik
  Date: 27/3/2020
  Time: 7:44 μ.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Succesful Trainer Update</title>
</head>
<body>
<%@include file="index.jsp" %>
<jsp:useBean id="updatedTrainer" class="spring.crud.simplespringcrud.models.Trainer" scope="request"/>

<h3>Trainer ${updatedTrainer.firstName} ${updatedTrainer.lastName} teaching ${updatedTrainer.subject} succesfully
    Updated</h3>
</body>
</html>