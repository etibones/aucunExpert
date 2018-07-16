<%@ page import="ca.uSherbrooke.gegi.dao.reservation.ReserverOffre" %><%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-07-05
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Validation Reservation</title>
</head>
<body>
    <% ReserverOffre.reserv();%>
    <H1>Votre reservation as été Enregistre avec succes!!</H1>
    <input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
</body>
</html>
