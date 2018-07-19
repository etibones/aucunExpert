package ca.uSherbrooke.gegi.dao;


import ca.uSherbrooke.gegi.dao.offres.Offre;
import org.apache.ibatis.annotations.Param;
import java.util.List;

import java.sql.Timestamp;

public interface OffreMapper {

    List<Offre> selectOffre();

    void insertOffre(@Param("cip") String cip,@Param("id_ville") Integer id_ville,
                     @Param("libelle_offre") String libelle_offre,
                     @Param("dateoffre")Timestamp dateoffre,@Param("nombre_de_place") int nombre_de_place,
                     @Param("bagage") String bagage,@Param("nom_car") String nom_car,
                     @Param("id_campus") int id_campus,
                     @Param("datepresentement") Timestamp datepresentement);

    void ReserverOffre (@Param("id_offre") int id_offre);

    void deleteOffre();

}