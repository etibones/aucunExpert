package ca.uSherbrooke.gegi.dao.offres;

import ca.uSherbrooke.gegi.dao.offres.Offre;
import ca.uSherbrooke.gegi.dao.OffreMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

import java.util.ArrayList;
import java.util.List;

public class VueOffre {

    public static List<Offre> Vue() {
        Injector injector = Guice.createInjector(new Module());
        OffreMapper offreMapper = injector.getInstance(OffreMapper.class);
        offreMapper.deleteOffre();
        System.out.println("hello");
        ArrayList<Offre> offres = (ArrayList)offreMapper.selectOffre();
        System.out.println("hello1");
        System.out.println(offres.toString());
        return offres;
    }

}

