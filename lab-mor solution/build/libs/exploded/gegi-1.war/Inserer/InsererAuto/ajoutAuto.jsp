<%--
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
<link rel='stylesheet' href='${pageContext.request.contextPath}/stylesheet.css' type='text/css' media='screen' charset='utf-8'>
<body>
<form method="post" action="process.jsp">

    Modele voiture<br>
    <input type="text" maxlength="200" name="nom_auto">
    <br>

    <tr>
        <td>Annee auto</td>
        <td> <select NAME="autoAnnee">
            <option>2018</option>
            <option>2017</option>
            <option>2016</option>
            <option>2015</option>
            <option>2014</option>
            <option>2013</option>
            <option>2012</option>
            <option>2011</option>
            <option>2010</option>
            <option>2009</option>
            <option>2008</option>
            <option>2007</option>
            <option>2006</option>
            <option>2005</option>
            <option>2004</option>
            <option>2003</option>
            <option>2002</option>
            <option>2001</option>
            <option>2000</option>
            <option>1999</option>
            <option>1998</option>
            <option>1997</option>
            <option>1996</option>
            <option>1995</option>
            <option>1994</option>
        </select></td>
    </tr>

    <br><br>

    Marque voiture<br>
    <input type="text" maxlength="200" name="marque">
    <br><br>
    <input type="submit" class="button" formaction="validationAjoutAuto.jsp" value="Valider">
    <input type = "button" class="button" value="Retourner au Menu principale" onclick="window.location.href='/Bienvenu'">
</form>
</body>
</html>
