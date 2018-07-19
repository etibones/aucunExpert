package ca.uSherbrooke.gegi.dao.usager;

import ca.uSherbrooke.gegi.dao.UsagerMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

public class VueUsager {

    public static Usager Vue(String cip) {
        Injector injector = Guice.createInjector(new Module());
        UsagerMapper privilegeMapper = injector.getInstance(UsagerMapper.class);
        Usager usager = privilegeMapper.selectUsager(cip);
        return usager;
    }

}