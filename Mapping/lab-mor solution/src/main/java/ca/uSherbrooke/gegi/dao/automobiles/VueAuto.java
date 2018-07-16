package ca.uSherbrooke.gegi.dao.automobiles;

import ca.uSherbrooke.gegi.dao.AutoMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

public class VueAuto {

    public static Auto Vue() {
        Injector injector = Guice.createInjector(new Module());
        AutoMapper autoMapper = injector.getInstance(AutoMapper.class);
        Auto auto = autoMapper.selectAuto();
        return auto;
    }

}