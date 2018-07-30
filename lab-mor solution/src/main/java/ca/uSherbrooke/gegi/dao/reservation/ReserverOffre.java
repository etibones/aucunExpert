package ca.uSherbrooke.gegi.dao.reservation;

import ca.uSherbrooke.gegi.dao.OffreMapper;
import ca.uSherbrooke.gegi.dao.ReservationMapper;
import ca.uSherbrooke.gegi.dao.offres.Offre;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

import java.util.ArrayList;
import java.util.List;

public class ReserverOffre {

    public static void reserv(String cip,int id_offre){
        Injector injector = Guice.createInjector(new Module());
        OffreMapper offreMapper = injector.getInstance(OffreMapper.class);
        List<Offre> offre = offreMapper.selectOffre();
        offreMapper.ReserverOffre(id_offre);

    }
    public static void AjoutReservation(Reservation reservation){
        Injector injector = Guice.createInjector(new Module());
        ReservationMapper reserverMapper = injector.getInstance(ReservationMapper.class);

        reserverMapper.insertReservation(reservation.getCip(), reservation.getOff_Cip(), reservation.getAutonom(),
                reservation.getVille(), reservation.getCampus(), reservation.getOffre(), reservation.getDateoffre(),true);
    }

    /*@Param("cip") String cip, @Param("off_cip") String off_cip,
                           @Param("nom_car") String nom_car,
                           @Param("id_ville") int id_ville,
                           @Param("id_campus") int id_campus, @Param("id_offre") int id_offre,
                           @Param("date_reservation") Date date_reservation,
                           @Param("confirmation") Boolean confirmation);*/

    public static Integer selectVille(String ville){
        Injector injector = Guice.createInjector(new Module());
        ReservationMapper reserverMapper = injector.getInstance(ReservationMapper.class);

        return reserverMapper.selectVille(ville);
    }
    public static Offre selectOffre(int id_offre){
        Injector injector = Guice.createInjector(new Module());
        ReservationMapper reserverMapper = injector.getInstance(ReservationMapper.class);

        return reserverMapper.selectOffre(id_offre);
    }


}

