package ca.uSherbrooke.gegi.dao;



import ca.uSherbrooke.gegi.dao.Ville.Ville;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;

public interface VilleMapper {

    List<Ville> selectVille();
    int selectVilleID(@Param("libelle_ville") String libelle_ville);
    String selectCity(@Param("id_ville") int id_ville);

}