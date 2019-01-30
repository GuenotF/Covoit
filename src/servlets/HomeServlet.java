package servlets;

import dao.UsersDAO;
import forms.LoginForm;
import models.UsersEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "/home")
public class HomeServlet extends HttpServlet {
    private boolean isLoggedIn = true;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UsersEntity usrTemp = new UsersEntity();
        UsersDAO usrDAO = new UsersDAO();

        usrTemp.setFirstName(request.getParameter("firstName"));
        usrTemp.setLastName(request.getParameter("lastName"));
        usrTemp.setEmail(request.getParameter("email"));
        usrTemp.setPassword(request.getParameter("password"));

        usrDAO.createUser(usrTemp.getFirstName(), usrTemp.getLastName(), usrTemp.getEmail(), "#", (byte) 1, (byte) 1, (byte) 1, (byte) 1, "2 rue des fleurs", 1.2, 1.2, 1, 1, usrTemp.getPassword());

        this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(!isLoggedIn){
            this.getServletContext().getRequestDispatcher("/WEB-INF/user/login.jsp").forward(request, response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
        }

        UsersDAO usrDAO = new UsersDAO();

        List<UsersEntity> UsrList = usrDAO.findAllUsers();

        request.setAttribute("UsrList", UsrList);

    }
}
