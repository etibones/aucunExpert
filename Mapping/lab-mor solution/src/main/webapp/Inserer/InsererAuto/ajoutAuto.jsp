<%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-06-14
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body><!--Je vais essayer ici d'ajouter un usager d'abord parceque c'est plus facile-->
<form method="post" action="process.jsp">

    Cip<br>
    <input type="text" name="cip">
    <br>

    Modele voiture<br>
    <input type="text" name="nom_auto">
    <br>

    Annee voiture<br>
    <input type="number" name="autoAnnee">
    <br>

    Marque voiture<br>
    <input type="text" name="marque">
    <br><br>
    <input type="submit" formaction="validationAjoutAuto.jsp" value="Valider">
    <input type = "button" value="Retourner au Menu principale" onclick="window.location.href='/Bienvenu.jsp'">
    <input type = "button" value="Retourner a Autos" onclick="window.location.href='/Afficher/afficherAuto.jsp'">
</form>
</body>
</html>