<%@ page import="ca.uSherbrooke.gegi.dao.privileges.ajoutPrivilege" %>
<%@ page import="ca.uSherbrooke.gegi.dao.privileges.Privilege" %><%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-06-14
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Privilege ajouterPrivilege = new Privilege();


    String libelle_privilege=request.getParameter("libelle_privilege");
    Integer id_privilege= Integer.valueOf(request.getParameter("id_privilege"));


    ajouterPrivilege.setId_privilege(id_privilege);
    ajouterPrivilege.setLibelle_privilege(libelle_privilege);

    ajoutPrivilege.ajout(ajouterPrivilege);

%>
<H1>Privilege Sauvegarder!!</H1>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
</body>
</html>

