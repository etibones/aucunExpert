package ca.uSherbrooke.gegi.dao;


import ca.uSherbrooke.gegi.dao.offres.Offre;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;

public interface OffreMapper {

    Offre selectOffre();
    //void insertOffre(@Param("id_ville") int id_ville,@Param("libelle_ville") String libelle_ville);

    void insertOffre(@Param("cip") String cip,@Param("id_ville") int id_ville,
                     @Param("libelle_offre") String libelle_offre,
                     @Param("dateoffre")Timestamp dateoffre,@Param("nombre_de_place") int nombre_de_place,
                     @Param("bagage") String bagage,@Param("nom_car") String nom_car,
                     @Param("id_campus") int id_campus,@Param("id_offre") int id_offre,
                     @Param("datepresentement") Timestamp datepresentement);
}