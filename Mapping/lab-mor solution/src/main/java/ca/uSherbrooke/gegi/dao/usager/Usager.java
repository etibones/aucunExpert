package ca.uSherbrooke.gegi.dao.usager;


public class Usager {
    private static String privilege;
    private static String couriel;
    private static String nom;
    private static String prenom;
    private static String cip;

    public static String getPrivilege() {
        return privilege;
    }

    public void setPrivilege(String privilege) {
        this.privilege = privilege;
    }

    public static String getCouriel() {
        return couriel;
    }

    public void setCouriel(String couriel) {
        this.couriel = couriel;
    }

    public static String getCip() {
        return cip;
    }

    public void setCip(String cip) {
        this.cip = cip;
    }

    public static String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public static String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String toString() {
        return nom + "," + prenom+ "," +couriel+ "," +privilege ;
    }
}
