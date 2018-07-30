<%@ page import="ca.uSherbrooke.gegi.dao.offres.ajoutOffre" %>
<%@ page import="ca.uSherbrooke.gegi.dao.offres.Offre" %>
<%@ page import="ca.uSherbrooke.gegi.dao.Ville.VueVille" %>
<%@ page import="ca.uSherbrooke.gegi.dao.Campus.VueCampus" %>
<%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-06-14
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Validation offre</title>
</head>
<body>
<%
    Offre ajouterOffre = new Offre();
    VueVille vueville = new VueVille();
    VueCampus vuecampus = new VueCampus();

    String cip=request.getUserPrincipal().toString();
    String nomVille=request.getParameter("ville");
    String camp= request.getParameter("campus");
    int campus = vuecampus.getIDCampus(camp);
    int ville = vueville.getIDVille(nomVille);
    String libelle=request.getParameter("libelle");
    String dateOffre=String.valueOf(request.getParameter("time"));
    Integer nbPlace= Integer.valueOf(request.getParameter("nbPlace"));
    String bagage=request.getParameter("bagage");
    String autoNom=request.getParameter("autoNom");

    ajouterOffre.setCip(cip);
    ajouterOffre.setIDVille(ville);
    ajouterOffre.setLibelle(libelle);
    ajouterOffre.setDateoffre(dateOffre);
    ajouterOffre.setNbplace(nbPlace);
    ajouterOffre.setBagage(bagage);
    ajouterOffre.setAutoNom(autoNom);
    ajouterOffre.setCampus(campus);
    ajoutOffre.ajout(ajouterOffre);

%>
<H1>Offre Enregistre!!</H1>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
</body>
</html>

