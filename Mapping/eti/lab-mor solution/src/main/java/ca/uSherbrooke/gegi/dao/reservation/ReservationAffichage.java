package ca.uSherbrooke.gegi.dao.reservation;

import java.sql.Date;

public class ReservationAffichage {
    private   String prenom;
    private   String nom;
    private   String cip;
    private   String couriel;
    private Date date;

    public   String getCip() { return cip;}
    public   String getCouriel() { return couriel;}
    public   String getNom() { return nom;}
    public   String getPrenom() { return prenom;}
    public   Date getDate() { return date;}

    public   void setCip(String cip) { this.cip = cip;}
    public   void setCouriel( String couriel) { this.couriel = couriel;}
    public   void setNom(String nom) { this.nom = nom;}
    public   void setPrenom(String prenom) { this.prenom = prenom;}
    public   void setDate(Date date) { this.date = date;}

    @Override
    public String toString() {

        return (cip+ ","+date);
    }
}
