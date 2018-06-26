package Test;

import ca.uSherbrooke.gegi.dao.Auto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/auto", loadOnStartup = 1)
public class ServletAuto extends HttpServlet {

    public ServletAuto() {
        System.err.println("Servlet initialized!");
    }

    private Auto offre = new Auto();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.getWriter().println("Bienvenue" + request.getUserPrincipal().toString());
        RequestDispatcher view = request.getRequestDispatcher("/afficherAuto.jsp");
        view.forward(request, response);
    }
}
