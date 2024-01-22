package control;

import jakarta.mail.Session;
import mail.MailService;
import until.Verification;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(value = "/ForgotPass")
public class ForgotPassServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email= req.getParameter("email");
        int code= Verification.createCode();
        MailService.send(email,"Quen Mat Khau","Ma xac thuc cua ban la: "+code);
        HttpSession session = req.getSession();
        session.setAttribute("code",code);
        req.getRequestDispatcher("VerifyMail.jsp").forward(req,resp);
    }
}
