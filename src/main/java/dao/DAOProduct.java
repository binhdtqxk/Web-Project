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
	public static void main(String[] args) {

	}

}
