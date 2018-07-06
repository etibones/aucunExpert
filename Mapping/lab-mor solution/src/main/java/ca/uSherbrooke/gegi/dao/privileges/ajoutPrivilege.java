package ca.uSherbrooke.gegi.dao.privileges;

import ca.uSherbrooke.gegi.dao.PrivilegeMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;


public class ajoutPrivilege {


    public static void ajout(Privilege privilege) {

        Injector injector = Guice.createInjector(new Module());
        PrivilegeMapper adminMapper = injector.getInstance(PrivilegeMapper.class);
        adminMapper.insertPrivilege(privilege.getLibelle_privilege(), privilege.getId_privilege());

    }

}

