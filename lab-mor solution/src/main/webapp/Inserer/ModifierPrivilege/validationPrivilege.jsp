<%@ page import="ca.uSherbrooke.gegi.dao.usager.updatePrivilege" %>
<%@ page import="ca.uSherbrooke.gegi.dao.usager.Usager" %>
<%@ page import="ca.uSherbrooke.gegi.dao.usager.Privilege" %>
<%@ page import="ca.uSherbrooke.gegi.dao.usager.VuePrivilege" %>
<%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-06-14
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel='stylesheet' href='${pageContext.request.contextPath}/stylesheet.css' type='text/css' media='screen' charset='utf-8'>
<head>
    <title>Privilege mis a jour</title>
</head>
<body>
<%
    Usager updateP = new Usager();
    Privilege privilege;
    privilege = VuePrivilege.Vue(request.getUserPrincipal().toString());
    if (Integer.valueOf(privilege.getPrivilege()) == 2) {
        updatePrivilege.ajout(updateP,request.getUserPrincipal().toString(),1);
    }

    else {
        updatePrivilege.ajout(updateP,request.getUserPrincipal().toString(),2);
    }

%>
<H1>Privilege Sauvegarder!!</H1>
<input type = "button" class="button" value="Retourner au menu principale" onclick="window.location.href='/Bienvenu'">
</body>
</html>

