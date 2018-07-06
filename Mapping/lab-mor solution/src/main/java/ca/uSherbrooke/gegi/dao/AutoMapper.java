package ca.uSherbrooke.gegi.dao;

import ca.uSherbrooke.gegi.dao.automobiles.Auto;
import org.apache.ibatis.annotations.Param;

public interface AutoMapper {

    Auto selectAuto();

    void insertAuto(@Param("cip") String cip, @Param("nom_car") String nom_car,
                    @Param("marque") String marque, @Param("annee_car") int annee_car);
}
