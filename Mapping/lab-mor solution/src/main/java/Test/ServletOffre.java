package Test;

import ca.uSherbrooke.gegi.VueOffre;
import ca.uSherbrooke.gegi.dao.Offre;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/offre", loadOnStartup = 1)
public class ServletOffre extends HttpServlet {

    public ServletOffre() {
        System.err.println("Servlet initialized!");
    }

    private Offre offre = new Offre();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // System.out.println( VueOffre.Vue());
        response.getWriter().println("Bienvenue" + request.getUserPrincipal().toString());
        RequestDispatcher view = request.getRequestDispatcher("/afficherOffres.jsp");
        view.forward(request, response);
    }
}
