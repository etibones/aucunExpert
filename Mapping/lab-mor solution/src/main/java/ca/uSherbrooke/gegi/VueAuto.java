package ca.uSherbrooke.gegi;

import ca.uSherbrooke.gegi.dao.Auto;
import ca.uSherbrooke.gegi.dao.AutoMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

import java.util.List;

public class VueAuto {

    public static Auto Vue() {
        Injector injector = Guice.createInjector(new Module());
        AutoMapper autoMapper = injector.getInstance(AutoMapper.class);
        Auto auto = autoMapper.selectAuto();
        return auto;
    }

}