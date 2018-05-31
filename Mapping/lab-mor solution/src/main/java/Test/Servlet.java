package Test;


import ca.uSherbrooke.gegi.dao.OffreDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by raye2601 on 2018-05-31.
 */
public class Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String Afficher_Offre = "/afficherOffres.jsp";
    private OffreDao dao;


    // database connection settings
    private String dbURL = "jdbc:postgresql://zeus.gel.usherbrooke.ca:5432/s3info08";
    private String dbUser = "s3info08";
    private String dbPass = "s3info08";

    public Servlet()
    {
        super();
        dao = new OffreDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("Afficher")) {
            forward = Afficher_Offre;
            request.setAttribute("offre", dao.selectOffre());
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}