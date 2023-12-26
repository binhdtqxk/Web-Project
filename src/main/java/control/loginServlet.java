package control;

import dao.DAOLogin;
import entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/login")
public class loginServlet extends HttpServlet {
    DAOLogin dao= new DAOLogin();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String username=req.getParameter("email");
    String password=req.getParameter("password");
    User user= new User(username,password);
    boolean result=dao.checkUser(user);
    if(result==true)
        resp.sendRedirect(req.getContextPath() +"/index.jsp");
    }
}
