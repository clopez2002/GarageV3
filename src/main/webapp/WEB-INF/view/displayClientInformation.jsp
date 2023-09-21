<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 9/21/2023
  Time: 2:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Client Found</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>
</head>
<body>

        <h1>Client Information</h1>
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


            <!-- Aca no necesito c:forEach, dado que es un unico registro -->
            <tr>
                <td>${unClienteAttibutos.nombre}</td>
                <td>${unClienteAttibutos.apellido}</td>
                <td>${unClienteAttibutos.email}</td>
                <td>${unClienteAttibutos.calle}</td>
                <td>${unClienteAttibutos.numero}</td>
                <td>${unClienteAttibutos.piso}</td>
                <td>${unClienteAttibutos.departamento}</td>
                <td>${unClienteAttibutos.marca_auto}</td>
                <td>${unClienteAttibutos.modelo}</td>
                <td>${unClienteAttibutos.anio}</td>
                <td>${unClienteAttibutos.patente}</td>
            </tr>


        </table>

        <div style="text-align: center">

            <input type="button" value="Return Home" onclick="window.location.href='clientListURL'; return false;">

        </div>
</body>
</html>
