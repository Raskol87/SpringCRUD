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
    <title>process</title>
</head>
<body>
<h5>Trainer Name already exists.<br> Do you want to create duplicate or proceed to update of trainers</h5>

<form action="control" method="POST">

    <input type="radio" id="yes" name="action" value="forcecreate">
    Yes, create duplicate <br>
    <input type="radio" id="no" name="action" value="loadupdate">
    No, proceed to update page <br>
    <input type="submit">
</form>

</body>
</html>
