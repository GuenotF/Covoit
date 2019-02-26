package servlets;

import dao.AgenciesDAO;
import dao.UsersDAO;
import forms.LoginForm;
import models.AgenciesEntity;
import models.EntityManagerAccess;
import models.UsersEntity;

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
    private static final String VIEW_HOME = "homeloggedpassenger";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        LoginForm form = new LoginForm();
        UsersEntity user = form.login(request);
        HttpSession session = request.getSession();

        if ( form.getErrors().isEmpty() ) {
            session.setAttribute( SESSION, user );
            response.sendRedirect(VIEW_HOME);
        } else {
            session.setAttribute( SESSION, null );
            this.getServletContext().getRequestDispatcher( VIEW ).forward( request, response );
        }

        request.setAttribute( FORM, form );
        request.setAttribute( USER, user );
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
}
