
create function projets3.fusion_offre() returns TABLE(nom text, prenom text, ville text, libelle text, dateoffre timestamp without time zone, nbplace integer, bagage character, autonom text, autoannee integer)
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
    on c2.id_campus = c5.id_campus;
$$
;


create view projets3.v_auto as
  SELECT automobiles.cip,
    automobiles.nom_car,
    automobiles.annee_car,
    automobiles.marque
  FROM projets3.automobiles;

CREATE RULE vue AS
ON INSERT TO projets3.v_auto DO INSTEAD  INSERT INTO projets3.automobiles (cip, nom_car, annee_car, marque)
VALUES (new.cip, new.nom_car, new.annee_car, new.marque);

create view projets3.v_offres as
  SELECT fusion_offre.nom,
    fusion_offre.prenom,
    fusion_offre.ville,
    fusion_offre.libelle,
    fusion_offre.dateoffre,
    fusion_offre.nbplace,
    fusion_offre.bagage,
    fusion_offre.autonom,
    fusion_offre.autoannee
  FROM projets3.fusion_offre() fusion_offre(nom, prenom, ville, libelle, dateoffre, nbplace, bagage, autonom, autoannee);

create view projets3.v_privilege as
  SELECT privileges.id_privilege,
    privileges.libelle_privilege
  FROM projets3.privileges;

-- No source code for s3info04.projets3.v_privilege.vue
;

