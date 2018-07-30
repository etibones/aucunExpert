package ca.uSherbrooke.gegi.dao.reservation;

import ca.uSherbrooke.gegi.dao.offres.Offre;
import ca.uSherbrooke.gegi.dao.offres.VueOffre;

import java.util.List;


public class CaracteristiquesReservation {
    List<ReservationAffichage> temp;

    public CaracteristiquesReservation(String cip) {
        temp = VueReservation.Vue(cip);
    }

    public int getTaille()
    {
        return temp.size();
    }
    public List<ReservationAffichage> getListe() {
        return temp;
    }


}

