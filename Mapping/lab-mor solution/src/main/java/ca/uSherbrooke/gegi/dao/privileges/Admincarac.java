package ca.uSherbrooke.gegi.dao.privileges;

public class Admincarac {

    private static String[] temp = VueAdmin.Vue().toString().split(",");

    public static String getId_privilege() {
        return temp[0];
    }

    public static String getLibelle_privilege() {
        return temp[1];
    }

}