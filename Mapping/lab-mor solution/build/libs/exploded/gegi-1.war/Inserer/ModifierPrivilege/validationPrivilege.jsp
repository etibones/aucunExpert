<%@ page import="ca.uSherbrooke.gegi.dao.usager.updatePrivilege" %>
<%@ page import="ca.uSherbrooke.gegi.dao.usager.Usager" %>
<%--
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
    Usager updateP = new Usager();

    updatePrivilege.ajout(updateP);
%>
<H1>Privilege Sauvegarder!!</H1>
<input type = "button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
</body>
</html>

