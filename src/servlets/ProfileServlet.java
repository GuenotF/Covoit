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

@WebServlet(name = "ProfileServlet", urlPatterns = "/profile")
public class ProfileServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String comment = request.getParameter("comment");
        String smoker = request.getParameter("smoker");
        String pet = request.getParameter("pet");
        String music = request.getParameter("music");

        /*UsersDAO usersDAO = new UsersDAO();
        HttpSession session = request.getSession();
        UsersEntity user = new UsersEntity();
        user = (UsersEntity)session.getAttribute("session");

        usersDAO.updateUserById(usersDAO.getId(),
                usersDAO.getFirstName(),
                usersDAO.getLastName(),
                usersDAO.getEmail(),
                usersDAO.getAdress(), usersDAO.getIsAdmin());*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/WEB-INF/user/profile.jsp").forward(request,response);
        }
    }
