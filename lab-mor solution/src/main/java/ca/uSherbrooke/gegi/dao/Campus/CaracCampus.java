package ca.uSherbrooke.gegi.dao.Campus;

import java.util.List;


public class CaracCampus {
    List<Campus> temp;

    public CaracCampus() {
        temp = VueCampus.Vue();
    }

    public int getTaille()
    {
        return temp.size();
    }
    public List<Campus> getListe() {
        return temp;
    }

    public  int getId(int i){
        return temp.get(i).getId();
    }

    public  String getLibelle(int i){
        return temp.get(i).getCampus();
    }


}

