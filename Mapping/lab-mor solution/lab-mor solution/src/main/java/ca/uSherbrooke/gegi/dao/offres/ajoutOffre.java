package ca.uSherbrooke.gegi.dao.offres;

import ca.uSherbrooke.gegi.dao.OffreMapper;
import ca.uSherbrooke.gegi.server.guice.Module;
import com.google.inject.Guice;
import com.google.inject.Injector;

import java.sql.Date;
import java.sql.Timestamp;

public class ajoutOffre {


    public static void ajout(Offre offre) {
        Date date = new Date(2018, 06,25);
        Timestamp tsmp = new Timestamp(118,05,22,10,49,31,527299);

        Injector injector = Guice.createInjector(new Module());
        OffreMapper offreMapper = injector.getInstance(OffreMapper.class);
        System.out.println(offre +","+ tsmp);

        offreMapper.insertOffre(offre.getCip(),Integer.valueOf(offre.getVille()),offre.getLibelle(),tsmp,
                               offre.getNbplace(),offre.getBagage(),offre.getAutonom(),offre.getCampus(),tsmp);
    }

}
