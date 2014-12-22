package simplegift.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import simplegift.controller.DBController;
import simplegift.model.Order;

public class OrderDAO {

	public static int addOrder(Order order) {

		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			PreparedStatement stmt = conn
					.prepareStatement("call INSERT_Order(?,?,?,?)");
			stmt.setString(1, order.getOrderNumber());
			stmt.setInt(2, order.getContactId());
			stmt.setInt(3, order.getGiftId());
			stmt.setInt(4, order.getQuantity());
			return stmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return -1;
	}

	public static Order getOrder(int id) {
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_Order(" + id + ")");
			if (rs.next()) {
				Order order = new Order();
				order.setOrderId(id);;
				order.setOrderNumber(rs.getString("orderNumber"));;
				order.setContactId(rs.getInt("contactId"));
				order.setGiftId(rs.getInt("giftId"));
				order.setQuantity(rs.getInt("quantity"));
				return order;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	public static void deleteOrder(int id) {
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			stmt.executeQuery("call DELETE_Order(" + id + ")");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
}
