<%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-06-26
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel='stylesheet' href='${pageContext.request.contextPath}/stylesheet.css' type='text/css' media='screen' charset='utf-8'>
    <head>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
            <title>Home</title>
        </head>
    </head>
    <body>
        <form action="/offre">
            <input type="submit" class="button" value="Offres">
        </form>

        <form action="/monCompte">
            <input type="submit" class="button" value="Mon Compte">
        </form>
    </body>
</html>
