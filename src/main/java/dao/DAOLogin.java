package dao;

import context.DBContext;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAOLogin {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public boolean checkUser(User user){
        User user1 = null;
        String username=user.getEmail();
        String password=user.getPassword();
        String query = "Select * from users "+"where users.email="+"'"+username+"'"+" AND "+"users.password="+"'"+password+"'";
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if(rs.next())
                return true;
            conn.close();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    public static void main(String[] args) {
        DAOLogin d= new DAOLogin();
        User user= new User("phanthanhbinh2003@gmail.com","123456");
        System.out.println(d.checkUser(user));
    }
}
