package ca.uSherbrooke.gegi.dao.automobiles;

import ca.uSherbrooke.gegi.dao.AutoMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

import java.util.List;

public class VueAuto {

    public static List<Auto> Vue(String cip) {
        Injector injector = Guice.createInjector(new Module());
        AutoMapper autoMapper = injector.getInstance(AutoMapper.class);
        List<Auto> auto = autoMapper.selectAuto(cip);
        return auto;
    }

}