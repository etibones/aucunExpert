package Servlets;

import ca.uSherbrooke.gegi.dao.offres.Offre;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/Bienvenu", loadOnStartup = 1)
public class MainServlet extends HttpServlet {

    private String CIP;

    public String getCIP() {
        return CIP;
    }

    public MainServlet() {
        System.err.println("Servlet initialized!");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CIP = request.getUserPrincipal().toString();
        RequestDispatcher view = request.getRequestDispatcher("/Bienvenu.jsp");
        view.forward(request, response);


    }
}
