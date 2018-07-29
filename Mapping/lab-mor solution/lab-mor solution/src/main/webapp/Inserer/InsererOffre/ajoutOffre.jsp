<%@ page import="javax.servlet.annotation.WebServlet" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ca.uSherbrooke.gegi.dao.automobiles.Autocarac" %>
<%@ page import="ca.uSherbrooke.gegi.dao.automobiles.Auto" %>
<%@ page import="ca.uSherbrooke.gegi.dao.Ville.CaracVille" %>
<%@ page import="ca.uSherbrooke.gegi.dao.Ville.Ville" %>
<%@ page import="ca.uSherbrooke.gegi.dao.Campus.CaracCampus" %>
<%@ page import="ca.uSherbrooke.gegi.dao.Campus.Campus" %><%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-06-14
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>
<form method="post" action="dynamicForm.jsp">

    <tr>
        <td>Ville de Destination:</td>
        <td> <select NAME="ville">
            <% CaracVille caracVille = new CaracVille();
                ArrayList<Ville> listee = (ArrayList) caracVille.getListe();
                for(int i=0; i<listee.size(); i++)
                {
            %>
            <option><%=listee.get(i).getLibelle()%></option>
            <% } %>
        </select></td>
    </tr>
    <br><br>
    <tr>
        <td>Départ (Campus):</td>
        <td> <select NAME="campus">
            <% CaracCampus caracCampus = new CaracCampus();
                ArrayList<Campus> listeCamp = (ArrayList) caracCampus.getListe();
                for(int i=0; i<listeCamp.size(); i++)
                {

            %>
            <option><%=listeCamp.get(i).getCampus()%></option>
            <% } %>
        </select></td>
    </tr>
    <br><br>
    Description:<br>
    <input type="text" name="libelle">
    <br>
    Date de l'offre<br>
    <input type="text" name="dateOffre">
    <br>
    Nombre de Places:<br>
    <input type="number" name="nbPlace">
    <br><br>
    <tr>
        <td>Description bagage:</td>
        <td> <select NAME="bagage">
            <option>Aucun Bagage</option>
            <option>Petit Bagage</option>
            <option>Moyen Bagage</option>
            <option>Grand Bagage</option>
        </select></td>
    </tr>
    <br><br>
    <tr>
        <td>Nom de voiture:</td>
        <td> <select NAME="autoNom">
            <%
                Autocarac carac = new Autocarac(request.getUserPrincipal().toString());
                for(int i=0; i<carac.getTaille(); i++)
                {
            %>
            <option><%=carac.getModele(i)%></option>
            <% } %>
        </select></td>
    </tr>

    <br><br>


    <input type="submit" formaction="validationAjoutOffre.jsp" value="Valider">
    <input type = "button" value="Retourner au Menu principale" onclick="window.location.href='/Bienvenu'">
</form>
</body>
</html>
