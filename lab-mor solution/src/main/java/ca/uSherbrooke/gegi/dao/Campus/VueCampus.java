package ca.uSherbrooke.gegi.dao.Campus;

import ca.uSherbrooke.gegi.dao.CampusMapper;
import ca.uSherbrooke.gegi.dao.VilleMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

import java.util.ArrayList;
import java.util.List;

public class VueCampus {

    public static List<Campus> Vue() {
        Injector injector = Guice.createInjector(new Module());
        CampusMapper campusMapper = injector.getInstance(CampusMapper.class);
        ArrayList<Campus> campuses = (ArrayList)campusMapper.selectCampus();
        return campuses;
    }

    public static int getIDCampus(String libelle)
    {
        Injector injector = Guice.createInjector(new Module());
        CampusMapper campusMapper = injector.getInstance(CampusMapper.class);
        int campuses = campusMapper.getIDCamp(libelle);
        return campuses;
    }
}

