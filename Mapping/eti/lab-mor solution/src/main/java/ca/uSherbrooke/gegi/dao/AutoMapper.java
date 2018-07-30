package ca.uSherbrooke.gegi.dao;

import ca.uSherbrooke.gegi.dao.automobiles.Auto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AutoMapper {

    List<Auto> selectAuto(@Param("cip") String cip);

    void insertAuto(@Param("cip") String cip, @Param("nom_car") String nom_car,
                    @Param("marque") String marque, @Param("annee_car") int annee_car);

    void deleteAuto(@Param("cip") String cip, @Param("nom_car") String nom_car);
}
