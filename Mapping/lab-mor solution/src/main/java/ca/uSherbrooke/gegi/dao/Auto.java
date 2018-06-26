package ca.uSherbrooke.gegi.dao;


public class Auto {
    private int annee_car;
    private String marque;
    private String nom_car;
    private String cip;

    public int getAnnee() {
        return annee_car;
    }

    public void setAnnee(int annee) {
        this.annee_car = annee_car;
    }

    public String getMarque() {
        return marque;
    }

    public void setMarque(String marque) {
        this.marque = marque;
    }

    public String getModele() {
        return nom_car;
    }

    public void setModele(String nom_car) {
        this.nom_car = nom_car;
    }

    public String getCip() {
        return cip;
    }

    public void setCip(String cip) {
        this.cip = cip;
    }

    public String toString() {
        return this.cip + "," + this.marque + "," + this.nom_car + "," + this.annee_car;
    }
}
