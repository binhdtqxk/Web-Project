package control;

import dao.DAOLogin;
import dao.DAORegister;
import entity.User;
import mail.MailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(value = "/register")
public class RegisterServlet extends HttpServlet {
    DAORegister dao= new DAORegister();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int errcode=0;
        MailService mail= new MailService();
        req.setCharacterEncoding("UTF-8");
        String error="";
        String lastName=req.getParameter("lastName");
        String firstName=req.getParameter("firstName");
        String phone=req.getParameter("phone");
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        try {
            if(dao.checkPhone(phone)){
                errcode++;
                error="Số điện thoại đã tồn tại";
                req.setAttribute("error",error);
                req.getRequestDispatcher("register.jsp").forward(req,resp);
            }else if(dao.checkEmail(email)){
                errcode++;
                error="email đã tồn tại";
                req.setAttribute("error",error);
                req.getRequestDispatcher("register.jsp").forward(req,resp);
            }else{
                User user= new User(lastName,firstName,phone,email,service.EnCode.toSHA1(password),0);
                dao.addAccount(user);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
