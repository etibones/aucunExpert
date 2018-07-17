package ca.uSherbrooke.gegi.dao.automobiles;


import java.util.List;

public class Autocarac {

    private List<Auto> temp;

    public Autocarac()
    {
        temp = VueAuto.Vue();
    }
    public int getTaille() {return temp.size();}
    public  String getCip(int i) {
        return temp.get(i).getCip();
    }

    public String getMarque(int i) {
        return temp.get(i).getMarque();
    }

    public String getModele(int i) {
        return temp.get(i).getModele();
    }

    public int getAnnee(int i) {
        return temp.get(i).getAnnee();
    }

}