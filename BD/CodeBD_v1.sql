BEGIN ;


/*Insert

INSERT INTO
*/

/*-----------------------------Trigger log évènement-----------------------------*/
drop trigger log_update
on projets3.offres;
drop function projets3.trigg_offre();

CREATE FUNCTION trigg_offre() RETURNS TRIGGER AS $offre$
BEGIN
  insert INTO projets3.log (id_evenement,cip, description )
  VALUES (1,new.cip,'offre');
  RETURN NEW;
END;
$offre$ LANGUAGE plpgsql;

CREATE TRIGGER log_update
  BEFORE INSERT or update ON projets3.offres
  FOR EACH ROW
EXECUTE PROCEDURE trigg_offre();
/*-------------------------------------------------------------------------------*/
DROP FUNCTION projets3.fusion_offre() CASCADE ;
CREATE FUNCTION projets3.fusion_offre() returns TABLE(nom text, prenom text, ville text,libelle text, dateOffre timestamp, nbPlace int, bagage char, autoNom text, autoAnnee int) as $$
SELECT c1.nom_usager,c1.prenom_usager,c4.libelle_ville,c2.libelle_offre,c2.dateoffre,c2.nombre_de_place, c2.bagage, c3.nom_car, c3.annee_car from projets3.usagers as c1
JOIN projets3.offres as c2
on c1.cip = c2.cip
join projets3.automobiles as c3
on c3.nom_car = c2.nom_car
join projets3.ville as c4
  on c2.id_ville = c4.id_ville
join projets3.campus as c5
  on c2.id_campus = c5.id_campus;
$$ language sql;

/*-----------------------------Vue offre-----------------------------*/
CREATE VIEW projets3.v_offres as SELECT * from fusion_offre();
/*CREATE OR REPLACE RULE regle_v_offres as on INSERT to projets3.v_offres
DO INSTEAD
  INSERT INTO projets3.offres (cip, nom_car, id_ville, id_campus, id_offre, libelle_offre, datepresentement, dateoffre, nombre_de_place, bagage)
    --values (new.cip, new.nom_car, new.id_ville, new.id_campus, new.id_offre, new.libelle_offre, new.datepresentement, new.dateoffre, new.nombre_de_place, new.bagage);
    select nom , prenom , ville ,libelle , dateOffre , nbPlace , bagage , autoNom , autoAnnee from
*/

COMMIT