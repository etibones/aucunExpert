package ca.uSherbrooke.gegi.dao.usager;

import ca.uSherbrooke.gegi.dao.UsagerMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;


public class updatePrivilege {


    public static void ajout(Usager usager) {
        int chauffeur = 2;
        Injector injector = Guice.createInjector(new Module());
        UsagerMapper adminMapper = injector.getInstance(UsagerMapper.class);
        adminMapper.modifierPrivilege(usager.getCip(),chauffeur);

    }

}
