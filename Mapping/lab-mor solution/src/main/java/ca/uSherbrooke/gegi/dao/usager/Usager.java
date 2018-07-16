package ca.uSherbrooke.gegi.dao.usager;


public class Usager {
    private String privilege;
    private String couriel;
    private String nom;
    private String prenom;
    private String cip;

    public String getPrivilege() {
        return privilege;
    }

    public void setPrivilege(String privilege) {
        this.privilege = privilege;
    }

    public String getCouriel() {
        return couriel;
    }

    public void setCouriel(String couriel) {
        this.couriel = couriel;
    }

    public String getCip() {
        return cip;
    }

    public void setCip(String cip) {
        this.cip = cip;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String toString() {
        return nom + "," + prenom+ "," +couriel+ "," +privilege ;
    }
}
