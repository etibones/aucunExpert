package ca.uSherbrooke.gegi.dao.privileges;

import ca.uSherbrooke.gegi.dao.PrivilegeMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

public class VuePrivilege {

    public static Privilege Vue() {
        Injector injector = Guice.createInjector(new Module());
        PrivilegeMapper privilegeMapper = injector.getInstance(PrivilegeMapper.class);
        Privilege privilege = privilegeMapper.selectPrivilege();
        return privilege;
    }

}