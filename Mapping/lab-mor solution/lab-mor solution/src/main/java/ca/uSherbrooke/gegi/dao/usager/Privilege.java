package ca.uSherbrooke.gegi.dao.usager;


public class Privilege {

    private int id_privilege;

    public int getPrivilege() {
        return id_privilege;
    }

    public void setPrivilege(int privilege) {
        this.id_privilege = privilege;
    }

    public String toString() {
        return String.valueOf(id_privilege);
    }
}
