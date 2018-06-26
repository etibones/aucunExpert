package ca.uSherbrooke.gegi.dao;


import ca.uSherbrooke.gegi.VueAuto;

public class Autocarac {

    private static String[] temp = VueAuto.Vue().toString().split(",");

    public static String getAnnee() { return temp[2]; }


    public static String getMarque() { return temp[1];
    }


    public static String getModele() { return temp[3];
    }


    public static String getCip() {
        return temp[0];
    }
}