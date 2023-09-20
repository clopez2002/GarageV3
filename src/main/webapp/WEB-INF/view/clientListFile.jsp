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
    <title>Garage Control</title>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>


</head>
<body>

    <table border="1">

            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
                <th>Calle</th>
                <th>Numero</th>
                <th>Piso</th>
                <th>Depto</th>
                <th>Marca Auto</th>
                <th>Modelo</th>
                <th>Anio</th>
                <th>Patente</th>
            </tr>

            <c:forEach var="clientTMP" items="${garageClientsAttributes}">

                <tr>
                    <td>${clientTMP.nombre}</td>
                    <td>${clientTMP.apellido}</td>
                    <td>${clientTMP.email}</td>
                    <td>${clientTMP.calle}</td>
                    <td>${clientTMP.numero}</td>
                    <td>${clientTMP.piso}</td>
                    <td>${clientTMP.departamento}</td>
                    <td>${clientTMP.marca_auto}</td>
                    <td>${clientTMP.modelo}</td>
                    <td>${clientTMP.anio}</td>
                    <td>${clientTMP.patente}</td>
                </tr>


            </c:forEach>


    </table>

</body>
</html>
<<