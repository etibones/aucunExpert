<%@ page import="ca.uSherbrooke.gegi.dao.usager.Usagercarac" %>
<%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-07-05
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel='stylesheet' href='${pageContext.request.contextPath}/stylesheet.css' type='text/css' media='screen' charset='utf-8'>
<head>
    <title>Mon Compte</title>
</head>
<body>
    <%
        Usagercarac usager = new Usagercarac(request.getUserPrincipal().getName());
    %>
    <H1>Bonjour!! <%=request.getUserPrincipal()%> bienvenue dans vos paramètres de compte</H1>
    <FONT size="5pt">
    <br>
        <B>Nom:</B>
    <%=usager.getNom()%>
    <br>
        <B>Prenom:</B>
    <%=usager.getPrenom()%>
    <br>
    <B>Statut:</B>
    <%=usager.getPrivilege()%>      <input type = "button" class="button" value="Changer privilege" onclick="window.location.href='Inserer/ModifierPrivilege/validationPrivilege.jsp'">

        <br>
        <B>Couriel:</B>
    <%=usager.getCouriel()%>
    <br>
        <br>
        <form action="/auto">
            <input type="submit" class="button" value="Mes autos">
        </form>
        <input type = "button" class="button" value="Ajouter une offre" onclick="window.location.href='Inserer/InsererOffre/ajoutOffre.jsp'">
        <input type = "button" class="button" value="Voir les places réservées" onclick="window.location.href='Afficher/afficherReservation.jsp'">
        <br>
    <input type = "button" class="button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
    </FONT>
</body>
</html>
