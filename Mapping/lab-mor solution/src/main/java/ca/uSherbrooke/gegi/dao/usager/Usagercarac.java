package ca.uSherbrooke.gegi.dao.usager;
public class Usagercarac {

    private static String cip ;

    public static void setCip(String n_cip) {
        cip = n_cip;
        System.out.println(cip+", "+n_cip);
    }

    private static String[] temp = VueUsager.Vue(cip).toString().split(",");

    public static String getNom() {
        return temp[0];
    }

    public static String getPrenom() {
        return temp[1];
    }

    public static String getCouriel() {
        return temp[2];
    }

    public static String getPrivilege() {
        return temp[3];
    }

}