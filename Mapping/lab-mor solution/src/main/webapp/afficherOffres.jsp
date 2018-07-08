<%@ page import="ca.uSherbrooke.gegi.dao.Offre" %>
<%@ page import="Test.ServletOffre" %>
<%@ page import="ca.uSherbrooke.gegi.VueOffre" %>
<%@ page import="ca.uSherbrooke.gegi.dao.Caracteristiques" %><%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-05-31
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Affichage des offres</title>
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
        <th>Nombre de place</th>
        <th>Bagages</th>
        <th>Modele auto</th>
        <th>Annee de l'auto</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td><%=Caracteristiques.getNom()%></td>
            <td><%=Caracteristiques.getPrenom()%></td>
            <td><%=Caracteristiques.getVille()%></td>
            <td><%=Caracteristiques.getLibelle()%></td>
            <td><%=Caracteristiques.getDateOffre()%></td>
            <td><%=Caracteristiques.getNbPlace()%></td>
            <td><%=Caracteristiques.getBagage()%></td>
            <td><%=Caracteristiques.getAutoNom()%></td>
            <td><%=Caracteristiques.getAutoAnnee()%></td>
            <td>
                <form action = confirmationReservation.jsp>
                    <input type="submit" value="Reserver l'offre">
                </form>
            </td>
        </tr>
    </tbody>
</table>
</body>
</html>









