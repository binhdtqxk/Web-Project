package control;

import dao.DAORegister;
import entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(value = "/VerifyCodeForgot")
public class VerifyCodeFG extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getAttribute("user") == null) {
            String error = "";
            int codeIn = Integer.parseInt(req.getParameter("code"));
            HttpSession session = req.getSession();
            int codeReal = (int) session.getAttribute("code");
            if (codeIn == codeReal) {
                resp.sendRedirect("resetpass.jsp");
            } else {
                error = "Bạn đã nhập sai mã,vui lòng nhập lại";
                req.setAttribute("error", error);
                req.getRequestDispatcher("VerifyMail.jsp").forward(req, resp);
            }
        }    else{
            DAORegister dao= new DAORegister();
            User user= (User) req.getAttribute("user");
            dao.addAccount(user);
            String error = "";
            int codeIn = Integer.parseInt(req.getParameter("code"));
            HttpSession session = req.getSession();
            int codeReal = (int) session.getAttribute("code");
            if (codeIn == codeReal) {
                resp.sendRedirect("resetpass.jsp");
            } else {
                error = "Bạn đã nhập sai mã,vui lòng nhập lại";
                req.setAttribute("error", error);
                req.setAttribute("user",user);
                req.getRequestDispatcher("VerifyMail.jsp").forward(req, resp);
            }
        }
    }

}
