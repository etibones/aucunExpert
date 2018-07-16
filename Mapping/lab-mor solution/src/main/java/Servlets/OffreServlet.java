package Servlets;

import ca.uSherbrooke.gegi.dao.offres.Offre;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/offre", loadOnStartup = 1)
public class OffreServlet extends HttpServlet {

    public OffreServlet() {
        System.err.println("Servlet initialized!");
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //request.getSession().setAttribute(request.getUserPrincipal().toString(),);
        RequestDispatcher view = request.getRequestDispatcher("Afficher/afficherOffres.jsp");
        view.forward(request, response);

    }
}
