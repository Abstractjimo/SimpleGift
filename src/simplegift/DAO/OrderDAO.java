package simplegift.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import simplegift.controller.DBController;
import simplegift.model.*;

public class OrderDAO {

	public static int addOrder(Order order) {

		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			String sql = "insert into `Order` values(null,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, order.getOrderNumber());
			stmt.setInt(2, order.getContactId());
			stmt.setInt(3, order.getGiftId());
			stmt.setInt(4, order.getQuantity());
			stmt.executeUpdate();
			ResultSet rs = stmt.getGeneratedKeys();
			if (rs.next()){
				return rs.getInt(1);
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
	
	public static List<GiftOrder> getGiftOrder(int userId){
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			String sql = "select * from ContactInfo JOIN Order JOIN Gift where userId=?";
			PreparedStatement stmt = conn
					.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			stmt.setInt(1, userId);
			ResultSet rs = stmt.executeQuery();
			List<GiftOrder> list = new ArrayList<GiftOrder>();
			if (rs.next()) {
				GiftOrder giftOrder = new GiftOrder();
				giftOrder.setOrderId(rs.getInt("giftId"));;
				giftOrder.setOrderNumber(rs.getString("orderNumber"));;
				giftOrder.setContactId(rs.getInt("contactId"));
				giftOrder.setGiftId(rs.getInt("giftId"));
				giftOrder.setQuantity(rs.getInt("quantity"));
				
				giftOrder.setAddress(rs.getString("address"));
				giftOrder.setContactName(rs.getString("contactName"));
				giftOrder.setEmail(rs.getString("email"));
				giftOrder.setPhone(rs.getString("phone"));
				
				giftOrder.setGiftName(rs.getString("giftName"));
				giftOrder.setDesired(rs.getInt("desired"));
				giftOrder.setReceived(rs.getInt("received"));
				giftOrder.setPrice(rs.getDouble("price"));
				giftOrder.setStoreURL(rs.getString("storeURL"));
				giftOrder.setDescription(rs.getString("description"));
				giftOrder.setPosttime(rs.getDate("posttime"));
				giftOrder.setPriority(rs.getInt("priority"));
				giftOrder.setCategory(rs.getString("category"));
				giftOrder.setUserId(rs.getInt(userId));
				giftOrder.setPrivacy(rs.getInt("privacy"));
				giftOrder.setGiftImgURL(rs.getString("giftImgURL"));
				
				list.add(giftOrder);
			}
			return list;
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
