package control;

import dao.DAOProduct;
import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(value = "/addProduct")
public class AddProductServlet extends HttpServlet {
    List<Product> listP=new ArrayList<>();
    DAOProduct dao =new DAOProduct();
    Map<Integer,Integer> numberSaving= new HashMap<>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    HttpSession session=req.getSession();
    Product p= new Product();
    String size=req.getParameter("option1");
    String color=req.getParameter("option2");
    String num=req.getParameter("quantity");
        System.out.println(num);
    int number=Integer.parseInt(num);
    String ma= req.getParameter("id");
    int id= Integer.parseInt(ma);
        try {
            p=dao.getProductById(id);
            p.setTypeOfShoe(" - "+p.getIdOfShoe()+" - "+size+" / "+color);
            if(numberSaving.containsKey(p.getIdOfShoe())){
                int currentNumber=numberSaving.get(p.getIdOfShoe());
                numberSaving.put(p.getIdOfShoe(), currentNumber+number);
            }else{
                listP.add(p);
                numberSaving.put(p.getIdOfShoe(),number);
            }
            session.setAttribute("listPr",listP);
            session.setAttribute("mapP",numberSaving);
            req.getRequestDispatcher("ShoppingCart.jsp").forward(req,resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
