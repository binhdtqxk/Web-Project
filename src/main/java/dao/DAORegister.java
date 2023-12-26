package dao;

import context.DBContext;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAORegister {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public void addAccount(User user) {
        String query = null;
        try {
            conn = new DBContext().getConnection();
            System.out.println(conn);
            ps = conn.prepareStatement("INSERT INTO users(`lastName`,`firstName`,`phoneNumber`,`email`,`password`) VALUES(?,?,?,?,?)");
            ps.setString(1, user.getLastName());
            ps.setString(2, user.getFirstName());
            ps.setString(3, user.getPhoneNumber());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getPassword());

            ps.executeUpdate();
            conn.close();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public static void main(String[] args) {

    }
}
