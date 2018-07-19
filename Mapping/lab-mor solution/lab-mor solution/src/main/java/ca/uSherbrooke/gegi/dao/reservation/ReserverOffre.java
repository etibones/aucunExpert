package ca.uSherbrooke.gegi.dao.reservation;

import ca.uSherbrooke.gegi.dao.OffreMapper;
import ca.uSherbrooke.gegi.dao.offres.Offre;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

import java.util.ArrayList;
import java.util.List;

public class ReserverOffre {

    public static void reserv(String cip,int id_offre){
        int id_offres = id_offre+1;
        System.out.println("id_offre : "+ id_offre + " vs id_offres"+ id_offres);
        Injector injector = Guice.createInjector(new Module());
        OffreMapper offreMapper = injector.getInstance(OffreMapper.class);
        List<Offre> offre = offreMapper.selectOffre();
        offreMapper.ReserverOffre(id_offres,offre.get(id_offre).getNbplace()- 1);

    }

}

