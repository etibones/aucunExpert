<%@ page import="ca.uSherbrooke.gegi.dao.usager.Usagercarac" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Affichage des Administrateurs</title>
</head>
<body>
    <%Usagercarac.setCip(request.getUserPrincipal().toString());%>
    <br> Nom : <%=Usagercarac.getNom()%><br>
    <br> Prenom : <%=Usagercarac.getPrenom()%><br>
    <br> Couriel : <%=Usagercarac.getCouriel()%><br>
    <br> Cip : <%=request.getUserPrincipal().toString()%><br>
    <br> Privilege : <%=Usagercarac.getPrivilege()%>
    <input type = "button" value="Devenir Conducteur" onclick="window.location.href='Inserer/ModifierPrivilege/validationPrivilege.jsp'">
    <br>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
<br></body>
</html>
