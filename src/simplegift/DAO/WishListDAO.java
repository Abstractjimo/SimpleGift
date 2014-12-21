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

public class WishListDAO {

	public static void addWishList(WishList wishList) {

		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			PreparedStatement stmt = conn
					.prepareStatement("call INSERT_WishList(?,?,?)");
			stmt.setString(1, wishList.getListName());
			stmt.setString(2, wishList.getListURL());
			stmt.setInt(3, wishList.getUserId());
			System.out.println(stmt.executeUpdate());
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

	public static WishList getWishList(int id) {
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_WishList(" + id + ")");
			if (rs.next()) {
				WishList wishList = new WishList();
				wishList.setListId(id);;
				wishList.setListName(rs.getString("listName"));
				wishList.setListURL(rs.getString("listURL"));
				wishList.setUserId(rs.getInt("userId"));
				return wishList;
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
	
	public static List<WishList> getWishListByUser(int uid) {
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_WishList_By_User(" + uid + ")");
			List<WishList> list = new ArrayList<WishList>();
			if (rs.next()) {
				WishList wishList = new WishList();
				wishList.setListId(rs.getInt("listId"));;
				wishList.setListName(rs.getString("listName"));
				wishList.setListURL(rs.getString("listURL"));
				wishList.setUserId(uid);
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

	public static void deleteWishList(int id) {
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			stmt.executeQuery("call DELETE_WishList(" + id + ")");
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
