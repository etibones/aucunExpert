<%@ page import="ca.uSherbrooke.gegi.dao.offres.ajoutOffre" %>
<%@ page import="ca.uSherbrooke.gegi.dao.offres.Offre" %><%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-06-14
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Validation offre</title>
</head>
<body>
<%
    Offre ajouterOffre = new Offre();

    String cip=request.getUserPrincipal().toString();
    String ville=request.getParameter("ville");
    String campus=request.getParameter("campus");
    String libelle=request.getParameter("libelle");
    String dateOffre=request.getParameter("dateOffre");
    Integer nbPlace= Integer.valueOf(request.getParameter("nbPlace"));
    String bagage=request.getParameter("bagage");
    String autoNom=request.getParameter("autoNom");
    Integer autoAnnee= Integer.valueOf(request.getParameter("autoAnnee"));



    ajouterOffre.setCip(cip);
    ajouterOffre.setVille(ville);
    ajouterOffre.setLibelle(libelle);
    ajouterOffre.setDateoffre(dateOffre);
    ajouterOffre.setNbplace(nbPlace);
    ajouterOffre.setBagage(bagage);
    ajouterOffre.setAutoNom(autoNom);
    ajouterOffre.setAutoAnnee(autoAnnee);
    //ajouterOffre.setCampus(campus);

 ajoutOffre.ajout(ajouterOffre);

%>
    <H1>Offre Enregistre!!</H1>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
</body>
</html>

