<%@ page import="ca.uSherbrooke.gegi.dao.Offre" %>
<%@ page import="Test.ServletOffre" %>
<%@ page import="ca.uSherbrooke.gegi.VueOffre" %>
<%@ page import="ca.uSherbrooke.gegi.dao.Caracteristiques" %>
<%@ page import="ca.uSherbrooke.gegi.dao.CaracteristiqueUpdater" %><%--
  Created by IntelliJ IDEA.
  User: Guillaume et Antoine
  Date: 2018-05-31
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Confirmation de réservation</title>
        <b>Voici la réservation effectué</b>
        <br>
</head>
<body>
<table border=1>
    <thead>
    <tr>
        <th>Nom</th>
        <th>Prenom</th>
        <th>Ville</th>
        <th>Description</th>
        <th>Date de l'offre</th>
        <th>Bagages</th>
        <th>Modele auto</th>
        <th>Annee de l'auto</th>
        <th>Nombre de place</th>

    </tr>
    </thead>
    <tbody>
    <tr>
        <td><%=CaracteristiqueUpdater.getNom()%></td>
        <td><%=CaracteristiqueUpdater.getPrenom()%></td>
        <td><%=CaracteristiqueUpdater.getVille()%></td>
        <td><%=CaracteristiqueUpdater.getLibelle()%></td>
        <td><%=CaracteristiqueUpdater.getDateOffre()%></td>
        <td><%=CaracteristiqueUpdater.getBagage()%></td>
        <td><%=CaracteristiqueUpdater.getAutoNom()%></td>
        <td><%=CaracteristiqueUpdater.getAutoAnnee()%></td>
        <td><%=CaracteristiqueUpdater.getNbPlace()%></td>

    </tr>
    </tbody>
</table>
</body>
</html>










