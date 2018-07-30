package ca.uSherbrooke.gegi.dao;

import ca.uSherbrooke.gegi.dao.offres.Offre;
import ca.uSherbrooke.gegi.dao.reservation.Reservation;
import org.apache.ibatis.annotations.Param;

import java.sql.Date;
import java.util.List;

public interface ReservationMapper {

    int selectVille(@Param("ville") String ville);

    //int selectCampus(@Param("campus") String campus);

    //int selectOffre(@Param("offre") String offre);

    void insertReservation(@Param("cip") String cip, @Param("off_cip") String off_cip,
                           @Param("nom_car") String nom_car,
                           @Param("id_ville") int id_ville,
                           @Param("id_campus") int id_campus, @Param("id_offre") int id_offre,
                           @Param("date_reservation") Date date_reservation,
                           @Param("confirmation") Boolean confirmation);
    Offre selectOffre(@Param("id_offre") Integer id_offre);

    List<Reservation> selectReservations(@Param("cip") String cip);
}
