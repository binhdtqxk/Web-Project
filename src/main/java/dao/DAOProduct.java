package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Product;

public class DAOProduct {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() throws SQLException {
        System.out.println("getAllproduct");
        List<Product> list = new ArrayList<>();
        String query = "Select * from Product";
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
//				System.out.println("product"+rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        conn.close();
        return list;
    }

    public int addProduct(Product product) {
        String query = "Insert into product(ImgOfShoe, TypeOfShoe, NameOfShoe, IDOfShoe, PriceOfShoe) values (?,?,?,?,?)";
        int rs = 0;
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getImgOfShoe());
            ps.setString(2, product.getTypeOfShoe());
            ps.setString(3, product.getNameOfShoe());
            ps.setString(4, product.getIdOfShoe());
            ps.setInt(5, product.getPriceOfShoe());

            rs = ps.executeUpdate();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return rs;
    }
    public int deleteProduct(String idShoe) {
        String query = "delete from product where IDOfShoe = ?";
        int rs = 0;
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            ps.setString(1, idShoe);
            rs = ps.executeUpdate();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return rs;
    }


    public static void main(String[] args) {
        System.out.println(new DAOProduct().deleteProduct("đ"));

//        System.out.println(new DAOProduct().addProduct(new Product("d", "d", "e", "d", 5)));
    }

}
