package control;

import dao.DAOLogin;
import dao.DAORegister;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/register")
public class RegisterServlet extends HttpServlet {
    DAORegister dao= new DAORegister();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");

        String lastName=req.getParameter("lastName");
        String firstName=req.getParameter("firstName");
        String phone=req.getParameter("phone");
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        User user= new User(lastName,firstName,phone,email,password);

        dao.addAccount(user);
    }
}
