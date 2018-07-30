<%@ page import="ca.uSherbrooke.gegi.dao.reservation.ReserverOffre" %>
<%@ page import="ca.uSherbrooke.gegi.dao.automobiles.deleteAuto" %><%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-07-05
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<link rel='stylesheet' href='${pageContext.request.contextPath}/stylesheet.css' type='text/css' media='screen' charset='utf-8'>
<head>
    <title>Validation Reservation</title>
</head>
<body>
    <%
        String modele = request.getParameter("modele");
        System.out.println(modele);
        deleteAuto.delete(request.getUserPrincipal().toString(),modele);
    %>
    <H1>Votre automobile as été Supprimé avec succes!!</H1>
    <input type = "button" class="button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
</body>
</html>
