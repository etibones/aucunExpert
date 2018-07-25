package ca.uSherbrooke.gegi.dao.Ville;

import ca.uSherbrooke.gegi.dao.VilleMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

import java.util.ArrayList;
import java.util.List;

public class VueVille {

    public static List<Ville> Vue() {
        Injector injector = Guice.createInjector(new Module());
        VilleMapper villeMapper = injector.getInstance(VilleMapper.class);
        ArrayList<Ville> villes = (ArrayList)villeMapper.selectVille();
        return villes;
    }

}

