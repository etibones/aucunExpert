<%@ page import="ca.uSherbrooke.gegi.dao.privileges.Privilegecarac" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Affichage des Administrateurs</title>
</head>
<body>
<table border=1>
    <thead>
    <tr>
        <th>Cip de l'privilege</th>
        <th>Type de privilege</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><%=Privilegecarac.getId_privilege()%></td>
        <td><%=Privilegecarac.getLibelle_privilege()%></td>
    </tr>
    </tbody>
</table>
<br>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
<input type = "button" value="Ajouter un Admin" onclick="window.location.href='Inserer/InsererPrivilege/ajoutPrivilege.jsp'">
<br></body>
</html>
