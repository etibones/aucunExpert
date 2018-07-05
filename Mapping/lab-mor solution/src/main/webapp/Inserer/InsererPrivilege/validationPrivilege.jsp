<%@ page import="ca.uSherbrooke.gegi.dao.privileges.ajoutAdmin" %>
<%@ page import="ca.uSherbrooke.gegi.dao.privileges.Admin" %><%--
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
    Admin ajouterAdmin = new Admin();


    String libelle_privilege=request.getParameter("libelle_privilege");
    Integer id_privilege= Integer.valueOf(request.getParameter("id_privilege"));


    ajouterAdmin.setId_privilege(id_privilege);
    ajouterAdmin.setLibelle_privilege(libelle_privilege);

    ajoutAdmin.ajout(ajouterAdmin);

%>
<H1>Admin Enregistre!!</H1>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu.jsp'">
</body>
</html>

