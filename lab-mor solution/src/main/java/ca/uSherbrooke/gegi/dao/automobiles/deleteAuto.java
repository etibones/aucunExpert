package ca.uSherbrooke.gegi.dao.automobiles;

import ca.uSherbrooke.gegi.dao.AutoMapper;
import ca.uSherbrooke.gegi.dao.OffreMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;


public class deleteAuto {


    public static void delete(String cip ,String modele) {

        Injector injector = Guice.createInjector(new Module());
        OffreMapper offreMapper = injector.getInstance(OffreMapper.class);
        offreMapper.deleteOffre2(cip,modele);

        Injector injector1 = Guice.createInjector(new Module());
        AutoMapper autoMapper = injector1.getInstance(AutoMapper.class);
        autoMapper.deleteAuto(cip,modele);

    }

}

