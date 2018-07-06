<%@ page import="ca.uSherbrooke.gegi.dao.offres.CaracteristiquesOffres" %><%--
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
        <th>Reserver</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td><%=CaracteristiquesOffres.getNom()%></td>
            <td><%=CaracteristiquesOffres.getPrenom()%></td>
            <td><%=CaracteristiquesOffres.getVille()%></td>
            <td><%=CaracteristiquesOffres.getLibelle()%></td>
            <td><%=CaracteristiquesOffres.getDateOffre()%></td>
            <td><%=CaracteristiquesOffres.getNbPlace()%></td>
            <td><%=CaracteristiquesOffres.getBagage()%></td>
            <td><%=CaracteristiquesOffres.getAutoNom()%></td>
            <td><%=CaracteristiquesOffres.getAutoAnnee()%></td>
            <td>
                <form action =Reservation/validationReservation.jsp>
                    <input type="submit" value="Reserver l'offre">
                </form>
            </td>
        </tr>
    </tbody>
</table>
<br>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
<input type = "button" value="Ajouter une offre" onclick="window.location.href='Inserer/InsererOffre/ajoutOffre.jsp'">
<br></body>
</html>
