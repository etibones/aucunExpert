package ca.uSherbrooke.gegi.dao.reservation;

import java.sql.Date;

public class Reservation {
    private   Integer offre;
    private   String off_cip;
    private   Integer ville;
    private   String autonom;
    private   String cip;
    private   Integer campus;
    private Date dateoffre;

    public   String getCip() { return cip;}
    public   Integer getVille() { return ville;}
    public   String getAutonom() { return autonom;}
    public   Integer getCampus() { return campus;}
    public   Integer getOffre() { return offre;}
    public   String getOff_Cip() { return off_cip;}
    public   Date getDateoffre() { return dateoffre;}

    public void setAutoNom(String autonom) {
        this.autonom = autonom;
    }

    public void setDateoffre(Date dateoffre) {
        this.dateoffre = dateoffre;
    }

    public void setVille(Integer ville) {
        this.ville = ville;
    }

    public void setCip (String cip){
        this.cip = cip;
    }

    public void setCampus(Integer campus){
        this.campus = campus;
    }

    public void setOffre(Integer offre){
        this.offre = offre;
    }

    public void setOff_Cip(String off_cip){
        this.off_cip = off_cip;
    }

    @Override
    public String toString() {

        return (cip+","+off_cip+","+ville+","+autonom+","+campus+","+offre + ","+ dateoffre);
    }
}
