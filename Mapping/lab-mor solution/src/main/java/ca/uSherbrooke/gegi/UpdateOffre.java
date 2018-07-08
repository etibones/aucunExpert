package ca.uSherbrooke.gegi;

import ca.uSherbrooke.gegi.dao.Offre;
import ca.uSherbrooke.gegi.dao.OffreMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;
import org.apache.ibatis.annotations.Param;

public class UpdateOffre {
    public static Offre Vue() {
        Injector injector = Guice.createInjector(new Module());
        OffreMapper offreMapper = injector.getInstance(OffreMapper.class);
        Offre offre = offreMapper.selectOffre();
        System.out.println("Test");
        offreMapper.UpdateOffre("boua2263",offre.getNbplace()- 1);/*va falloir faire une fonction getCip()*/
        System.out.println("Test1");
        return offre;
    }
}
