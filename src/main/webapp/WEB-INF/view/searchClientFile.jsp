<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 9/21/2023
  Time: 12:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>>
<html>
<head>
    <title>Search client by plate</title>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/>

</head>
<body>
    <h1> Aca buscaremos los cliente por patente </h1>

    <!-- no podemos usar @RequestParam, dado que no recibimos cliente.. recibimos la patenten -->

    <div style="text-align: center">
        <form action="processClientDataURL" method="get">

            <input type="text" name="plateToSearch">
            <input type="submit">

        </form>
    </div>


</body>
</html>
