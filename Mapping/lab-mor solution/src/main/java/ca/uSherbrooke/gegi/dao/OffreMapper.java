package ca.uSherbrooke.gegi.dao;


import org.apache.ibatis.annotations.Param;

public interface OffreMapper {

    Offre selectOffre();

    void UpdateOffre (@Param("cip") String cip,@Param("nombre_de_place") int nombre_de_place);

}