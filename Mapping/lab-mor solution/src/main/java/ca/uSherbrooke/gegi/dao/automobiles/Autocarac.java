package ca.uSherbrooke.gegi.dao.automobiles;


public class Autocarac {

    private static String[] temp = VueAuto.Vue().toString().split(",");

    public static String getCip() {
        return temp[0];
    }

    public static String getMarque() {
        return temp[1];
    }

    public static String getModele() {
        return temp[2];
    }

    public static String getAnnee() {
        return temp[3];
    }

}