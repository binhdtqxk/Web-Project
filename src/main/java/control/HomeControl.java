//package control;
//
//import java.io.IOException;
//import java.util.List;
//
////import org.apache.catalina.connector.Response;
//
//import dao.DAO;
//import entity.Product;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet(value = "/index")
//public class HomeControl extends HttpServlet {
//    DAO dao = new DAO();
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        // TODO Auto-generated method stub
//        doPost(req, resp);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        // TODO Auto-generated method stub
//        resp.setContentType("text/html;charset=UTF-8");
//
//        List<Product> list = dao.getAllProduct();
//        System.out.println("list"+list);
//        req.setAttribute("ListP", list);
//
//        getServletContext().getRequestDispatcher("index.jsp").forward(req, resp);
//    }
//
//    public static void main(String[] args) {
//
//    }
//}
