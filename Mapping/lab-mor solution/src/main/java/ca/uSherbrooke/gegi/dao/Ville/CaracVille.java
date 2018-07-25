package ca.uSherbrooke.gegi.dao.Ville;

import ca.uSherbrooke.gegi.dao.offres.Offre;
import ca.uSherbrooke.gegi.dao.offres.VueOffre;

import java.util.List;


public class CaracVille {
    List<Ville> temp;

    public CaracVille() {
        temp = VueVille.Vue();
    }

    public int getTaille()
    {
        return temp.size();
    }
    public List<Ville> getListe() {
        return temp;
    }
    public  int getId(int i){
        return temp.get(i).getId();
    }

    public  String getLibelle(int i){
        return temp.get(i).getLibelle();
    }


}

