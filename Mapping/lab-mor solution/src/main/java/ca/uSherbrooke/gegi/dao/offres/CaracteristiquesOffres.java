package ca.uSherbrooke.gegi.dao.offres;


public class CaracteristiquesOffres {

    private static String[] temp = VueOffre.Vue().toString().split(",");

    public static String getNom(){
        //System.out.println(temp[0]);
        return temp[0];
    }

    public static String getPrenom(){
        //System.out.println(temp[1]);
        return temp[1];
    }

    public static String getVille(){
        //System.out.println(temp[2]);
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
