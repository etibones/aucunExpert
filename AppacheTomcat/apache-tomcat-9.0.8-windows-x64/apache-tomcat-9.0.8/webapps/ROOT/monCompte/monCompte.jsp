<%@ page import="ca.uSherbrooke.gegi.dao.usager.Usagercarac" %>
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
    <%
        Usagercarac usager = new Usagercarac(request.getUserPrincipal().getName());
    %>
    <H1>Bonjour!! <%=request.getUserPrincipal()%> bienvenue dans vos paramètres de compte</H1>
    <br>
    Nom:
    <%=usager.getNom()%>
    <br>
    Prenom:
    <%=usager.getPrenom()%>
    <br>
    Statut:
    <%=usager.getPrivilege()%>
    <br>
    Couriel:
    <%=usager.getCouriel()%>
    <br>
    <input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenue'">

</body>
</html>
