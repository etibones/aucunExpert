package ca.uSherbrooke.gegi.dao;

import ca.uSherbrooke.gegi.server.guice.DbUtil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by raye2601 on 2018-05-31.
 */
public class OffreDao implements OffreMapper{


    private Connection connection;

    public OffreDao() {
        connection = DbUtil.getConnection();
    }

    @Override
    public List<Offre> selectOffre() {
        List<Offre> offres = new ArrayList<Offre>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from v_offres");
            while (rs.next()) {
                Offre offre = new Offre();
                offre.setNbplace(rs.getInt("nbplace"));
                offre.setLibelle(rs.getString("libelle"));
                offre.setBagage(rs.getString("bagage"));
                offre.setAutonom(rs.getString("autonom"));
                offre.setAutoannee(rs.getInt("autoannee"));
                offre.setNom(rs.getString("nom"));
                offre.setPrenom(rs.getString("prenom"));
                offre.setVille(rs.getString("ville"));
                offres.add(offre);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return offres;
    }
}
