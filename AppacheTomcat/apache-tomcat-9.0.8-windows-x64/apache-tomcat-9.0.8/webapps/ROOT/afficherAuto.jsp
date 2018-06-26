

<%@ page import="ca.uSherbrooke.gegi.dao.Autocarac" %>

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
        <th>Cip du propriétaire</th>
        <th>Marque</th>
        <th>Modele</th>
        <th>Annee</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><%=Autocarac.getCip()%></td>
        <td><%=Autocarac.getMarque()%></td>
        <td><%=Autocarac.getModele()%></td>
        <td><%=Autocarac.getAnnee()%></td>
    </tr>
    </tbody>
</table>
</body>
</html>
