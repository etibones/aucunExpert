package ca.uSherbrooke.gegi.dao;


import ca.uSherbrooke.gegi.dao.Ville.Ville;
import ca.uSherbrooke.gegi.dao.offres.Offre;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;

public interface VilleMapper {

    List<Ville> selectVille();


}