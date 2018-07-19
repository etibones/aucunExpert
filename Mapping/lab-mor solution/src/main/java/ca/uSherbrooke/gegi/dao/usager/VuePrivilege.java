package ca.uSherbrooke.gegi.dao.usager;

import ca.uSherbrooke.gegi.dao.UsagerMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

public class VuePrivilege {

    public static Privilege Vue(String cip) {
        Injector injector = Guice.createInjector(new Module());
        UsagerMapper privilegeMapper = injector.getInstance(UsagerMapper.class);
        Privilege privilege = privilegeMapper.selectPrivilege(cip);
        return privilege;
    }

}