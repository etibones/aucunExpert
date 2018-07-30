package Servlets;

import ca.uSherbrooke.gegi.dao.offres.Offre;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/auto", loadOnStartup = 1)
public class AutoServlet extends HttpServlet {

    public AutoServlet() {
        System.err.println("Servlet initialized!");
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher view = request.getRequestDispatcher("Afficher/afficherAuto.jsp");
        view.forward(request, response);
    }
}