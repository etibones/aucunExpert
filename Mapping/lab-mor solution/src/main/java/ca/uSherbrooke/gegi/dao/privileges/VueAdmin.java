package ca.uSherbrooke.gegi.dao.privileges;

import ca.uSherbrooke.gegi.dao.AdminMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

public class VueAdmin {

    public static Admin Vue() {
        Injector injector = Guice.createInjector(new Module());
        AdminMapper adminMapper = injector.getInstance(AdminMapper.class);
        Admin admin = adminMapper.selectAdmin();
        return admin;
    }

}