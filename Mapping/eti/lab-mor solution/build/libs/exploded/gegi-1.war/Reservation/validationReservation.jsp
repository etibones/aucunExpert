<%@ page import="ca.uSherbrooke.gegi.dao.reservation.ReserverOffre" %>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="ca.uSherbrooke.gegi.dao.offres.Offre" %>
<%@ page import="ca.uSherbrooke.gegi.dao.reservation.Reservation" %>
<%@ page import="java.sql.Date" %>
<%@ page import="ca.uSherbrooke.gegi.Email" %>
<%@ page import="ca.uSherbrooke.gegi.dao.reservation.VueReservation" %>
<%@ page import="ca.uSherbrooke.gegi.dao.reservation.ReservationAffichage" %>
<%@ page import="java.sql.Timestamp" %><%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-07-05
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Validation Reservation</title>
</head>
<body>
    <%
        int id_offre = Integer.valueOf(request.getParameter("id_offree"));
        System.out.println(id_offre);
        ReserverOffre.reserv(request.getUserPrincipal().toString(),id_offre);
    %>
    <%
        Offre offre = ReserverOffre.selectOffre(id_offre);

            Reservation reserverOffre = new Reservation();

            reserverOffre.setCip(request.getUserPrincipal().toString());
            reserverOffre.setAutoNom(offre.getAutonom());
            reserverOffre.setCampus(offre.getCampus());
            reserverOffre.setOff_Cip(offre.getCip());
            reserverOffre.setOffre(id_offre);
            Date date = new Date(System.currentTimeMillis());
            reserverOffre.setDateoffre(date);
            reserverOffre.setVille(offre.getIdVille());

            ReserverOffre.AjoutReservation(reserverOffre);

        ReservationAffichage reservation = new ReservationAffichage();
        System.out.println((VueReservation.Vue(request.getUserPrincipal().toString())).get(0));
        reservation = (VueReservation.Vue(request.getUserPrincipal().toString())).get(0);


        String email = offre.getCip()+"@usherbrooke.ca";
        String message = "Salut,\n"+reservation.getNom()+" "+reservation.getPrenom()+" à réservé une offre contactez le : "
                +request.getUserPrincipal()+"@usherbrooke.ca .";
        Email mail = new Email(email,message);
        mail.mail();

    %>
    <H1>Votre reservation as été Enregistre avec succes!!</H1>
    <input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
</body>
</html>
