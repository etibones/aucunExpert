<%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-07-05
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mon Compte</title>
</head>
<body>
    <H1>Bonjour!! <%=request.getUserPrincipal()%> bienvenu dans vos paramètres de compte</H1>
    <br>
    Nom:<br>
    <%%>
    <br>
    Prenom:<br>
    <%%>
    <br>
    Statut:<br>
    <%%>
    <br>
    Couriel:<br>
    <%%>
    <br>
    <input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
    <input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
</body>
</html>
