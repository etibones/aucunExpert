CREATE OR REPLACE VIEW  app.v_etudiant_app
(etudiant_app_id, cip, nom, courriel, programme,
    programme_nom, app, app_titre, ap, departement,
    faculte, universite)
  AS SELECT  etudiant_app_id, cip, nom, courriel, programme,
       programme_nom, app, app_titre, ap, departement,
       faculte, universite FROM app.etudiant_app;


CREATE OR REPLACE RULE ins_etudiant_app AS ON
INSERT to app.v_etudiant_app
DO INSTEAD INSERT INTO app.etudiant_app VALUES (
  new.etudiant_app_id, new.cip, new.nom, new.courriel, new.programme,
                       new.programme_nom, new.app, new.app_titre, new.ap, new.departement,
                       new.faculte, new.universite);

CREATE OR REPLACE RULE upd_etudiant_app AS ON
UPDATE to app.v_etudiant_app
DO INSTEAD UPDATE  app.etudiant_app  set
  cip = new.cip,
  nom = new.nom,
  courriel =   new.courriel,
  programme = new.programme,
  programme_nom = new.programme_nom,
  app = new.app,
  app_titre = new.app_titre,
  ap = new.ap,
  departement = new.departement,
  faculte = new.faculte,
  universite = new.universite
WHERE etudiant_app_id = new.etudiant_app_id;


CREATE OR REPLACE RULE del_etudiant_app AS ON
UPDATE to app.v_etudiant_app
DO INSTEAD DELETE FROM   app.etudiant_app
WHERE etudiant_app_id = old.etudiant_app_id;


