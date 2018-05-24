BEGIN ;

/*-----------------------------Trigger log évènement-----------------------------*/
CREATE FUNCTION trigg_offre() RETURNS TRIGGER AS $offre$
BEGIN
  insert INTO projets3.log (id_evenement, cip, description )
  VALUES (new.id_offre,new.cip,'reservé');
  RETURN NULL;
END;
$offre$ LANGUAGE plpgsql;

CREATE TRIGGER log_update
  AFTER INSERT ON projets3.offres
  FOR EACH ROW
EXECUTE PROCEDURE trigg_offre();
/*----------------------------------------------------------*/
COMMIT