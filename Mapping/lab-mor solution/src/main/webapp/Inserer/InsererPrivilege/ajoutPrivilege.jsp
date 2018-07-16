<%--
  Created by IntelliJ IDEA.
  User: Nadir
  Date: 2018-06-14
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<body>
<form method="post" action="process.jsp">

    Cip<br>
    <input type="text" name="id_privilege">
    <br>

    Type d'administrateur<br>
    <input type="text" name="libelle_privilege">
    <br><br>
    <input type="submit" formaction="validationAjoutPrivilege.jsp" value="Valider">
    <input type = "button" value="Retourner au Menu principale" onclick="window.location.href='/Bienvenu'">
</form>
</body>
</html>
