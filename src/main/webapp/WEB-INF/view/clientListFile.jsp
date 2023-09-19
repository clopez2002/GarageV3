<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 9/19/2023
  Time: 10:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  Aca mostraremos a los clientes del GARAGE

    <table>

            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>

            </tr>

            <c:forEach var="clientTMP" items="${garageClientsAttributes}">

                <tr>
                    <td>${clientTMP.nombre}</td>
                    <td>${clientTMP.apellido}</td>
                    <td>${clientTMP.email}</td>

                </tr>


            </c:forEach>


    </table>

</body>
</html>
<<