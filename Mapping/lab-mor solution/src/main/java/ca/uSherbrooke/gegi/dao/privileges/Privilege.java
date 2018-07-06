package ca.uSherbrooke.gegi.dao.privileges;


public class Privilege {
    private static int id_privilege;
    private static String libelle_privilege;

    public static int getId_privilege() {
        return id_privilege;
    }

    public void setId_privilege(int id_privilege) {
        this.id_privilege = id_privilege;
    }

    public static String getLibelle_privilege() {
        return libelle_privilege;
    }

    public void setLibelle_privilege(String libelle_privilege) {
        this.libelle_privilege = libelle_privilege;
    }

    public String toString() {
        return id_privilege + "," + libelle_privilege ;
    }
}
