package ca.uSherbrooke.gegi.dao.automobiles;


public class Auto {
    private static int annee_car;
    private static String marque;
    private static String nom_car;
    private static String cip;

    public static int getAnnee() {
        return annee_car;
    }

    public void setAnnee(int annee) {
        this.annee_car = annee;
    }

    public static String getMarque() {
        return marque;
    }

    public void setMarque(String marque) {
        this.marque = marque;
    }

    public static String getModele() {
        return nom_car;
    }

    public void setModele(String nom_car) {
        this.nom_car = nom_car;
    }

    public static String getCip() {
        return cip;
    }

    public void setCip(String cip) {
        this.cip = cip;
    }

    public String toString() {
        return cip + "," + marque + "," + nom_car + "," + annee_car;
    }
}
