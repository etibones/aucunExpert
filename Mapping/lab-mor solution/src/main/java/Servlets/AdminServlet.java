package Servlets;

import ca.uSherbrooke.gegi.dao.offres.Offre;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/administrateurs", loadOnStartup = 1)
public class AdminServlet extends HttpServlet {

    public AdminServlet() {
        System.err.println("Servlet initialized!");
    }

    private Offre offre = new Offre();
    private String nom = "initiale vide";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.getWriter().println("Bienvenu" + request.getUserPrincipal().toString());
        nom = request.getParameter("nom");
        RequestDispatcher view = request.getRequestDispatcher("Afficher/afficherPrivilege.jsp");
        view.forward(request, response);

    }
}
