package Servlets;

import ca.uSherbrooke.gegi.dao.usager.Privilege;
import ca.uSherbrooke.gegi.dao.usager.VuePrivilege;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/monCompte", loadOnStartup = 1)
public class MonCompteServlet extends HttpServlet {

    public MonCompteServlet() {
        System.err.println("Servlet initialized!");
    }

    Privilege privilege = new Privilege();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        privilege = VuePrivilege.Vue(request.getUserPrincipal().toString());
        if (Integer.valueOf(privilege.getPrivilege()) == 2) {
            RequestDispatcher view = request.getRequestDispatcher("monCompte/monCompteChauffeur.jsp");
            view.forward(request, response);
        }
        else {
            RequestDispatcher view = request.getRequestDispatcher("monCompte/monComptePassager.jsp");
            view.forward(request, response);
        }

    }
}
