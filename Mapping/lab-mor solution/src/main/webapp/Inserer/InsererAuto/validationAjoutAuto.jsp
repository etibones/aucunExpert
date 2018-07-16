<%@ page import="ca.uSherbrooke.gegi.dao.automobiles.Auto" %>
<%@ page import="ca.uSherbrooke.gegi.dao.automobiles.ajoutAuto" %><%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-06-14
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Auto ajouterAuto = new Auto();


    String cip=request.getUserPrincipal().toString();
    String nom_auto=request.getParameter("nom_auto");
    String marque=request.getParameter("marque");
    Integer autoAnnee= Integer.valueOf(request.getParameter("autoAnnee"));


    ajouterAuto.setCip(cip);
    ajouterAuto.setMarque(marque);
    ajouterAuto.setModele(nom_auto);
    ajouterAuto.setAnnee(autoAnnee);

    ajoutAuto.ajout(ajouterAuto);

%>
    <H1>Auto Enregistre!!</H1>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
</body>
</html>

