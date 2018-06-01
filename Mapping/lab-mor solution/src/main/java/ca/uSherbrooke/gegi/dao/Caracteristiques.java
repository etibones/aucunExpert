package ca.uSherbrooke.gegi.dao;

import ca.uSherbrooke.gegi.VueOffre;


public class Caracteristiques {

    private static String[] temp = VueOffre.Vue().toString().split(",");

    public static String getNom(){
        return temp[0];
    }

    public static String getPrenom(){
        return temp[1];
    }

    public static String getVille(){
        return temp[2];
    }

    public static String getLibelle(){
        return temp[3];
    }

    public static String getDateOffre(){
        return temp[4];
    }
    public static String getNbPlace(){
        return temp[5];
    }
    public static String getBagage(){
        return temp[6];
    }
    public static String getAutoNom(){
        return temp[7];
    }
    public static String getAutoAnnee(){
        return temp[8];
    }


}
