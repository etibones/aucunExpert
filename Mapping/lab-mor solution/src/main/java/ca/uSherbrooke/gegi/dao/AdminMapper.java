package ca.uSherbrooke.gegi.dao;


import ca.uSherbrooke.gegi.dao.privileges.Admin;
import org.apache.ibatis.annotations.Param;


public interface AdminMapper {

    Admin selectAdmin();
    void insertAdmin(@Param("libelle_privilege") String libelle_privilege, @Param("id_privilege") int id_privilege);
}