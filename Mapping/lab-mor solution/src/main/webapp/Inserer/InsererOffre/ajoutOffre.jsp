<%@ page import="javax.servlet.annotation.WebServlet" %><%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-06-14
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>
<form method="post" action="process.jsp">
    Nom:<br>
    <input type="text" name="nom">
    <br>
    Prenom:<br>
    <input type="text" name="prenom">
    <br>
    Cip<br>
    <input type="text" name="cip">
    <br>
    Ville de Destination:<br>
    <input type="number" name="ville">
    <br>
    Départ (Campus):<br>
    <input type="number" name="campus">
    <br>
    Description:<br>
    <input type="text" name="libelle">
    <br>
    Date de l'offre<br>
    <input type="text" name="dateOffre">
    <br>
    Nombre de Places:<br>
    <input type="number" name="nbPlace">
    <br>
    Description bagage:<br>
    <input type="text" name="bagage">
    <br>
    Nom voiture<br>
    <input type="text" name="autoNom">
    <br><br>
    <input type="submit" formaction="validationAjoutOffre.jsp" value="Valider">
    <input type = "button" value="Retourner au Menu principale" onclick="window.location.href='/Bienvenu'">
</form>
</body>
</html>
