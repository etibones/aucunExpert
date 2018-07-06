package ca.uSherbrooke.gegi.dao;


import ca.uSherbrooke.gegi.dao.privileges.Privilege;
import org.apache.ibatis.annotations.Param;


public interface PrivilegeMapper {

    Privilege selectPrivilege();
    void insertPrivilege(@Param("libelle_privilege") String libelle_privilege, @Param("id_privilege") int id_privilege);
}