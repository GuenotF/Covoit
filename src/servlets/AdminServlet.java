package servlets;

import dao.AgenciesDAO;
import dao.CarsDAO;
import dao.UsersDAO;
import forms.LoginForm;
import models.AgenciesEntity;
import models.CarsEntity;
import models.UsersEntity;
import utility.DistanceCalcul;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminServlet", urlPatterns = "/admin")
public class AdminServlet extends HttpServlet {
    private boolean isLoggedIn = true;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UsersEntity usrTemp = new UsersEntity();
        UsersDAO usrDAO = new UsersDAO();

        usrTemp.setFirstName(request.getParameter("firstName"));
        usrTemp.setLastName(request.getParameter("lastName"));
        usrTemp.setEmail(request.getParameter("email"));
        usrTemp.setPassword(request.getParameter("password"));

        CarsDAO carsDAO = new CarsDAO();
        CarsEntity carsTemp = carsDAO.findCarsById(1);

        AgenciesDAO agenciesDAO = new AgenciesDAO();
        AgenciesEntity agenciesTemp = agenciesDAO.findAgencyById(1);


        usrDAO.createUser(usrTemp.getFirstName(), usrTemp.getLastName(), usrTemp.getEmail(), "#", (byte) 1, (byte) 1, (byte) 1, (byte) 1, "2 rue des fleurs", 1.2, 1.2, agenciesTemp, carsTemp, usrTemp.getPassword());


        List<UsersEntity> UsrList = usrDAO.findAllUsers();

        request.setAttribute("UsrList", UsrList);


        this.getServletContext().getRequestDispatcher("/WEB-INF/admin.jsp").forward(request, response);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UsersDAO usrDAO = new UsersDAO();

        List<UsersEntity> UsrList = usrDAO.findAllUsers();

        request.setAttribute("UsrList", UsrList);

        DistanceCalcul dist = new DistanceCalcul();
        double rslt = dist.distBtw2Pts(43.6315,1.3973,43.6251,1.3986);
        System.out.println(rslt);
        if(!isLoggedIn){
            this.getServletContext().getRequestDispatcher("/WEB-INF/user/login.jsp").forward(request, response);
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
        }

    }
}
