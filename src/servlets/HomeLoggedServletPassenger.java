package servlets;

import com.google.gson.Gson;
import dao.UsersDAO;
import models.UsersEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "HomeLoggedServletPassenger", urlPatterns = "/homeloggedpassenger")
public class HomeLoggedServletPassenger extends HttpServlet {
    private boolean isLoggedIn = true;
    private Gson gson = new Gson();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       String latitude = request.getParameter("latitude");
       String longitude = request.getParameter("longitude");
       UsersDAO usersDAO = new UsersDAO();
       String gsonresponse = gson.toJson(usersDAO.findAllUsers());
       PrintWriter out = response.getWriter();
       out.print(gsonresponse);
       out.flush();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/WEB-INF/homeloggedpassenger.jsp").forward(request, response);

    }
}
