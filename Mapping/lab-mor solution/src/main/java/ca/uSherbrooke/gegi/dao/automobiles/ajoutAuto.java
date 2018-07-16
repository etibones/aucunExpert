package ca.uSherbrooke.gegi.dao.automobiles;

import ca.uSherbrooke.gegi.dao.AutoMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;


public class ajoutAuto {


    public static void ajout(Auto auto) {

        Injector injector = Guice.createInjector(new Module());
        AutoMapper autoMapper = injector.getInstance(AutoMapper.class);
        autoMapper.insertAuto(auto.getCip(),auto.getModele(),auto.getMarque(),auto.getAnnee());

    }

}

