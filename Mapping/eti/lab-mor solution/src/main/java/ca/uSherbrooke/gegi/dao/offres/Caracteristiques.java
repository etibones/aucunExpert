package ca.uSherbrooke.gegi.dao.offres;

import ca.uSherbrooke.gegi.MyBatisUtil;
import ca.uSherbrooke.gegi.dao.offres.VueOffre;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;


public class Caracteristiques {
    List<Offre> temp;

    public Caracteristiques() {
        temp = VueOffre.Vue();
        System.out.println("sgag");
    }

    public int getTaille()
    {
        return temp.size();
    }
    public List<Offre> getListe() {
        return temp;
    }
    public  String getNom(int i){
        return temp.get(i).getNom();
    }

    public  String getPrenom(int i){
        return temp.get(i).getPrenom();
    }

    public  String getVille(int i){

        return temp.get(i).getVille();
    }

    public  String getLibelle(int i){
        return temp.get(i).getLibelle();
    }

    public  String getDateOffre(int i){
        return temp.get(i).getDateoffre();
    }
    public  int getNbPlace(int i){
        return temp.get(i).getNbplace();
    }
    public  String getBagage(int i){
        return temp.get(i).getBagage();
    }
    public  String getAutoNom(int i){
        return temp.get(i).getAutonom();
    }
    public  int getAutoAnnee(int i){
        return temp.get(i).getAutoannee();
    }


}

