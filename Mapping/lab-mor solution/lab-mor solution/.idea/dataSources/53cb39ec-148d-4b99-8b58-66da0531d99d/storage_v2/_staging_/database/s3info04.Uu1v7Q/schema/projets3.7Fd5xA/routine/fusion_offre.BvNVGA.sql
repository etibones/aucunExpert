create function fusion_offre()
  returns TABLE(nom text, prenom text, ville text, libelle text, dateoffre timestamp without time zone, nbplace integer, bagage character, autonom text, autoannee integer)
language sql
as $$
SELECT c1.nom_usager,c1.prenom_usager,c4.libelle_ville,c2.libelle_offre,c2.dateoffre,c2.nombre_de_place, c2.bagage, c3.nom_car, c3.annee_car from projets3.usagers as c1
  JOIN projets3.offres as c2
    on c1.cip = c2.cip
  join projets3.automobiles as c3
    on c3.nom_car = c2.nom_car
  join projets3.ville as c4
    on c2.id_ville = c4.id_ville
  join projets3.campus as c5
    on c2.id_campus = c5.id_campus
  order by id_offre;
$$;

