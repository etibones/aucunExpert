<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import="ca.uSherbrooke.gegi.dao.Offre" %>
<%@ page import="ca.uSherbrooke.gegi.dao.Caracteristiques" %>
<%@ page import="java.util.ArrayList" %>
<%--
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
    <% Caracteristiques carac = new Caracteristiques();
        int taille = carac.getTaille();
        ArrayList<Offre> listee = (ArrayList)carac.getListe();
        int i = 0;
        request.setAttribute("Taille", taille);
    %>
    <c:forEach var="iii" begin = "0" end = "${Taille-1}">
        <tr>
            <td><%=listee.get(i).getNom()%></td>
            <td><%=listee.get(i).getPrenom()%></td>
            <td><%=listee.get(i).getVille()%></td>
            <td><%=listee.get(i).getLibelle()%></td>
            <td><%=listee.get(i).getDateoffre()%></td>
            <td><%=listee.get(i).getBagage()%></td>
            <td><%=listee.get(i).getNbplace()%></td>
            <td><%=listee.get(i).getAutonom()%></td>
            <td><%=listee.get(i).getAutoannee()%></td>
            <% i++;
                System.out.println(i);%>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
