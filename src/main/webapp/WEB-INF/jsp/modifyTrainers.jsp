<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: kyrik
  Date: 23/3/2020
  Time: 12:23 π.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Trainers</title>
</head>
<body>
<%@include file="index.jsp" %>
<br> <br>

<table>
    <thead>
    <tr>
        <th>Click for Delete</th>
        <th>Click for Update</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Teaching Subject</th>
    </tr>
    </thead>


    <%--    &lt;%&ndash;@elvariable id="idsToBeDel" type="java.util.ArrayList<java.lang.Integer>"&ndash;%&gt;--%>
    <%--<form:form modelAttribute="idsToBeDel" method="POST" action="delete">--%>
    <%--    <c:forEach var="currentTrainer" items="${ListOfTrainers}" >--%>
    <%--        <tr>--%>
    <%--            <td> <input type="checkbox" name="idToBeDel" value="${currentTrainer.idTrainer}"/></td>--%>
    <%--            <td>${currentTrainer.firstName}</td>--%>
    <%--            <td>${currentTrainer.lastName}</td>--%>
    <%--            <td>${currentTrainer.subject}</td>--%>
    <%--        </tr>--%>
    <%--    </c:forEach>--%>
    <%--    <input type="submit"/>--%>

    <%--</form:form>--%>

    <%--    </table>--%>


    <c:forEach var="currentTrainer" items="${ListOfTrainers}">
    <tr>

        <td>
            <form action="update_trainer" method="post">
                <input name="trainerId" value="${currentTrainer.idTrainer}" type="hidden">
                <input type="submit" value="Update">
            </form>
        </td>

        <td>
            <form action="delete" method="post">
                <input name="trainerId" value="${currentTrainer.idTrainer}" type="hidden">
                <input type="submit" value="Delete">
            </form>

        </td>
        <td>${currentTrainer.firstName}</td>
        <td>${currentTrainer.lastName}</td>
        <td>${currentTrainer.subject}</td>
        </c:forEach>
    </tr>

</table>


</body>
</html>


<%--<form:form action="control" method="POST">--%>
<%--<input type="text" hidden="true" name="action" value="delete"/>--%>
<%--@elvariable id="toBeDeletedTrainers" type="List<Trainer>"--%>


<%--<form:form action="delete" method="POST" modelAttribute="toBeDeletedTrainers">--%>


<%--&lt;%&ndash;    &lt;%&ndash;<c:forEach var="currentTrainer" items="${ListOfTrainers}" >&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;    <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;                    <td> <input type="checkbox" name="idToBeDel" value="${currentTrainer.idTrainer}"/></td>&ndash;%&gt;&ndash;%&gt;--%>

<%--    <td> <form:checkboxes path="ListOfTrainers.firstName" items="${ListOfTrainers}"/> </td>--%>

<%--    <c:forEach var="currentTrainer" items="${ListOfTrainers}">--%>
<%--        <tr>--%>
<%--        <td>${currentTrainer.firstName}</td>--%>
<%--        <td>${currentTrainer.lastName}</td>--%>
<%--        <td>${currentTrainer.subject}</td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>

<%--    </tr>--%>

<%--    <input type="submit"/>--%>
<%--    </form:form>--%>


<%--        <c:forEach var="currentTrainer" items="${ListOfTrainers}">--%>

<%--            &lt;%&ndash;@elvariable id="toBeDeletedTrainers" type="List<Trainer>"&ndash;%&gt;--%>
<%--            <form:form modelAttribute="toBeDeletedTrainers" action="delete" method="POST">--%>
<%--                <form:checkbox path="ListOfTrainers" label="currentTrainer.firstName"/>--%>


<%--            </form:form>--%>
<%--                </c:forEach>--%>
<%--    --%>
<%--    <form:form >--%>
<%--        <form:checkboxes path="ListOfTrainers" items="ListOfTrainers"/>--%>

<%--    </form:form>--%>

<%--    modelAttribute="ListOfTrainers"--%>

<%--    </table>--%>


<%--    </body>--%>
<%--    </html>--%>
