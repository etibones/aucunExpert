<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Affichage des offres</title>
</head>
<body>
<table border=1>
    <thead>
    <tr>
        <th>Nom</th>
        <th>Prenom</th>
        <th>Ville</th>
        <th>Description</th>
        <th>Date de l'offre</th>
        <th>Nombre de place</th>
        <th>Bagages</th>
        <th>Modele auto</th>
        <th>Annee de l'auto</th>
        <th colspan=2>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${offres}" var="offre">
        <tr>
            <td><c:out value="${offre.nom}" /></td>
            <td><c:out value="${offre.prenom}" /></td>
            <td><c:out value="${offre.ville}" /></td>
            <td><c:out value="${offre.libelle}" /></td>
            <td><c:out value="${offre.dateoffre}" /></td>
            <td><c:out value="${offre.nbplace}" /></td>
            <td><c:out value="${offre.bagage}" /></td>
            <td><c:out value="${offre.autonom}" /></td>
            <td><c:out value="${offre.autoannee}" /></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<p><a href="Servlet?action=Afficher">Afficher Offres</a></p>
</body>
</html>