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
        <td><%=Autocarac.getMarque()%></td>
        <td><%=Autocarac.getModele()%></td>
        <td><%=Autocarac.getAnnee()%></td>
    </tr>
    </tbody>
</table>
<br>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
<input type = "button" value="Ajouter une auto" onclick="window.location.href='Inserer/InsererAuto/ajoutAuto.jsp'">
<br></body>
</html>
