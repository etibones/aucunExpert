create function fusion_user_privilege()
  returns TABLE(cip varchar(8),nom text, prenom text, couriel text, privilege text)
language sql
as $$
SELECT c1.cip,c1.nom_usager,c1.prenom_usager,c1.couriel,c2.libelle_privilege
from projets3.usagers as c1
  JOIN projets3.privileges as c2
    on c1.id_privilege = c2.id_privilege
$$;

