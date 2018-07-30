<%@ page import="ca.uSherbrooke.gegi.dao.automobiles.Autocarac" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
<html>
<link rel='stylesheet' href='${pageContext.request.contextPath}/stylesheet.css' type='text/css' media='screen' charset='utf-8'>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Affichage des autos</title>
</head>
<body>
<table border=1>
    <thead>
    <tr>
        <th>Marque</th>
        <th>Modele</th>
        <th>Annee</th>
        <th>Supprimer l'auto</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <% Autocarac carac = new Autocarac(request.getUserPrincipal().toString());
            int i = 0;
            int taille = carac.getTaille();
            request.setAttribute("Taille", taille);
        %>
        <c:if test = "${Taille > 0}">
        <c:forEach var="iii" begin = "0" end = "${Taille-1}">
        <td><%=carac.getMarque(i)%></td>
        <td><%=carac.getModele(i)%></td>
        <td><%=carac.getAnnee(i)%></td>
        <% int id = i+1;%>
        <td>
            <form action =Supression/validationSuppressionAuto.jsp>
                <input type="hidden" name="modele" value=<%=carac.getModele(i)%>>
                <input type="submit" class="button" name = "idd" value="Supprimer">
            </form>
        </td>
        <% i++; %>
    </tr>
    </c:forEach>
    </c:if>
    </tbody>
</table>
<br>
<input type = "button" class="button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
<input type = "button" class="button" value="Ajouter une auto" onclick="window.location.href='Inserer/InsererAuto/ajoutAuto.jsp'">
<br></body>
</html>
