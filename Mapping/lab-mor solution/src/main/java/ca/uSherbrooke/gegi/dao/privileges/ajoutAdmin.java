package ca.uSherbrooke.gegi.dao.privileges;

import ca.uSherbrooke.gegi.dao.AdminMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;


public class ajoutAdmin {


    public static void ajout(Admin admin) {

        Injector injector = Guice.createInjector(new Module());
        AdminMapper adminMapper = injector.getInstance(AdminMapper.class);
        adminMapper.insertAdmin(admin.getLibelle_privilege(),admin.getId_privilege());

    }

}

