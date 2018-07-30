package ca.uSherbrooke.gegi.dao;



import ca.uSherbrooke.gegi.dao.Campus.Campus;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CampusMapper {

    List<Campus> selectCampus();
    int getIDCamp(@Param("nom_campus") String nom_campus);


}