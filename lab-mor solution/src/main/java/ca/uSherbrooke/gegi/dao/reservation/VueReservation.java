package ca.uSherbrooke.gegi.dao.reservation;

import ca.uSherbrooke.gegi.dao.OffreMapper;
import ca.uSherbrooke.gegi.dao.ReservationMapper;
import ca.uSherbrooke.gegi.dao.offres.Offre;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

import java.util.ArrayList;
import java.util.List;

public class VueReservation {

    public static List<ReservationAffichage> Vue(String cip) {
        Injector injector = Guice.createInjector(new Module());
        ReservationMapper reservationMapper = injector.getInstance(ReservationMapper.class);
        ArrayList<ReservationAffichage> reservations = (ArrayList)reservationMapper.selectReservations(cip);
        return reservations;
    }

}

