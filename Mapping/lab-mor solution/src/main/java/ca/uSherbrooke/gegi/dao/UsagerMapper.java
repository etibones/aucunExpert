package ca.uSherbrooke.gegi.dao;


import ca.uSherbrooke.gegi.dao.usager.Usager;
import org.apache.ibatis.annotations.Param;


public interface UsagerMapper {
    Usager selectUsager(@Param("cip") String cip);
    void modifierPrivilege(@Param("cip") String cip, @Param("newPrivilege") int newPrivilege);
}