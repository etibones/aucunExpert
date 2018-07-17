<%@ page import="ca.uSherbrooke.gegi.dao.automobiles.Autocarac" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    </tr>
    </thead>
    <tbody>
    <tr>
        <% Autocarac carac = new Autocarac();
            int i = 0;
            int taille = carac.getTaille();
            request.setAttribute("Taille", taille);
        %>
<c:forEach var="iii" begin = "0" end = "${Taille-1}">
        <td><%=carac.getMarque(i)%></td>
        <td><%=carac.getModele(i)%></td>
        <td><%=carac.getAnnee(i)%></td>
        <% i++; %>
    </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
<input type = "button" value="Ajouter une auto" onclick="window.location.href='Inserer/InsererAuto/ajoutAuto.jsp'">
<br></body>
</html>
