<%@ page import="ca.uSherbrooke.gegi.dao.offres.Caracteristiques" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import="ca.uSherbrooke.gegi.dao.offres.Offre" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ca.uSherbrooke.gegi.dao.reservation.CaracteristiquesReservation" %>
<%@ page import="ca.uSherbrooke.gegi.dao.reservation.Reservation" %>
<%@ page import="ca.uSherbrooke.gegi.dao.reservation.ReservationAffichage" %><%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-05-31
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Affichage des réservations</title>
</head>
<body>
<table border=1>
    <thead>
    <tr>
        <th>Nom</th>
        <th>Prenom</th>
        <th>courriel</th>
        <th>Date de l'offre</th>
    </tr>
    </thead>
    <tbody>
    <%
        CaracteristiquesReservation carac = new CaracteristiquesReservation(request.getUserPrincipal().toString());
        int taille = carac.getTaille();
        ArrayList<ReservationAffichage> listee = (ArrayList)carac.getListe();
        int i = 0;
        request.setAttribute("Taille", taille);
    %>
    <tr>
        <c:if test = "${Taille > 0}">
            <c:forEach var="iii" begin = "0" end = "${Taille-1}">

                <td><%=listee.get(i).getNom()%></td>
                <td><%=listee.get(i).getPrenom()%></td>
                <td><%=listee.get(i).getCouriel()%></td>
                <td><%=listee.get(i).getDate()%></td>
                <% i++; %>

            </c:forEach>
        </c:if>
    </tr>
    </tbody>
</table>
<br>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
<br></body>
</html>
