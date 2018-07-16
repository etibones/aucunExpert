package ca.uSherbrooke.gegi.dao.reservation;

import ca.uSherbrooke.gegi.dao.OffreMapper;
import ca.uSherbrooke.gegi.dao.offres.Offre;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

import java.util.ArrayList;
import java.util.List;

public class ReserverOffre {

    public static void reserv(){
        Injector injector = Guice.createInjector(new Module());
        OffreMapper offreMapper = injector.getInstance(OffreMapper.class);
        List<Offre> offre = offreMapper.selectOffre();
        offreMapper.ReserverOffre("boua2263",offre.get(0).getNbplace()- 1);/*va falloir faire une fonction getCip()*/

    }

}

