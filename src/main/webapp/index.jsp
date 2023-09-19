<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>

  <!-- vamos a comentar esta linea y dejaremos la que nos redirecciona al inicio
  <a href="Servlet">Click AQUI!!</a>
  -->

  <% response.sendRedirect("garageHomeURL/clientListURL"); %>

</body>
</html>