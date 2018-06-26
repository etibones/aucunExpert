package ca.uSherbrooke.gegi.dao;


public class Auto {
    private int annee;
    private String marque;
    private String modele;
    private String cip;

    public int getAnnee() {
        return annee;
    }

    public void setAnnee(int annee) {
        this.annee = annee;
    }

    public String getMarque() {
        return marque;
    }

    public void setMarque(String marque) {
        this.marque = marque;
    }

    public String getModele() {
        return modele;
    }

    public void setModele(String modele) {
        this.modele = modele;
    }

    public String getCip() {
        return cip;
    }

    public void setCip(String cip) {
        this.cip = cip;
    }

    public String toString() {
        return this.cip + "," + this.marque + "," + this.modele + "," + this.annee;
    }
}
