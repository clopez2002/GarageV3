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

    <h1> Garage Client List</h1>

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
                <th>Update</th>
            </tr>

            <c:forEach var="clientTMP" items="${garageClientsAttributes}">

                <!-- aca: var="linkUpdate" debe coincidor como en el boton de abajo-->
                <c:url var="linkUpdate" value="/garageHomeURL/updateClientURL">
                    <c:param name="clientID" value="${clientTMP.id}"/>
                </c:url>

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

                    <!-- Aca va el boton para ACTUALIZAR registros, uno por cada cliente-->
                    <td><a href="${linkUpdate}"><input type="button" value="Update Client"/></a> </td>

                </tr>


            </c:forEach>


    </table>

    <br/>


    <!--  esto del DIV es para que el boton quede a la mitad de la pagina -->

        <div style="text-align: center">
        <input type="button" value="Add Client" onclick="window.location.href='addNewClientURL'; return false;"/>
        </div>

</body>
</html>
