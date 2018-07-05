<%@ page import="ca.uSherbrooke.gegi.dao.privileges.Admincarac" %>

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
        <th>Cip de l'admin</th>
        <th>Caracteristique Admin</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><%=Admincarac.getId_privilege()%></td>
        <td><%=Admincarac.getLibelle_privilege()%></td>
    </tr>
    </tbody>
</table>
<br>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu.jsp'">
<input type = "button" value="Ajouter un Admin" onclick="window.location.href='Inserer/InsererPrivilege/ajoutPrivilege.jsp'">
<br></body>
</html>
