package servlets;

import dao.AgenciesDAO;
import forms.LoginForm;
import models.AgenciesEntity;
import models.EntityManagerAccess;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

    private static final String FORM = "form";
    private static final String USER = "user";
    private static final String SESSION = "session";
    private static final String VIEW = "/WEB-INF/user/login.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        LoginForm form = new LoginForm();

//        User user = form.login( request );
        AgenciesDAO agenciesDAO = new AgenciesDAO();
        AgenciesEntity agenciesEntity = agenciesDAO.findAgencyById(1);
        System.out.println(agenciesEntity.getName());

        HttpSession session = request.getSession();

        if ( form.getErrors().isEmpty() ) {
//            session.setAttribute( SESSION, user );
        } else {
            session.setAttribute( SESSION, null );
        }

        request.setAttribute( FORM, form );
//        request.setAttribute( USER, user );

        this.getServletContext().getRequestDispatcher( VIEW ).forward( request, response );
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("OK");

        //AgenciesDAO agenceDAO = new AgenciesDAO();

        //AgenciesEntity agence = agenceDAO.findAgencyById(1);

        //System.out.println(agence.getName());



        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
}
