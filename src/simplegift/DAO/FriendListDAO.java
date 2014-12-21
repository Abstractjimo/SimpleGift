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


public class FriendListDAO {

	public static void addFriendList(FriendList friendList) {

		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			PreparedStatement stmt = conn
					.prepareStatement("call INSERT_FriendList(?,?,?,?)");
			stmt.setInt(1, friendList.getFacebookId());
			stmt.setString(2, friendList.getFacebookName());
			stmt.setString(3, friendList.getEmail());
			stmt.setInt(4, friendList.getUserId());
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

	public static FriendList getFriendList(int id) {
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_FriendList(" + id + ")");
			if (rs.next()) {
				FriendList friendList = new FriendList();
				friendList.setFacebookId(id);
				friendList.setFacebookName(rs.getString("facebookName"));
				friendList.setEmail(rs.getString("email"));
				friendList.setUserId(rs.getInt("userId"));
				return friendList;
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
	
	public static List<FriendList> getWishListByUser(int uid) {
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_WishList_By_FriendList_By_User(" + uid + ")");
			List<FriendList> list = new ArrayList<FriendList>();
			if (rs.next()) {
				FriendList friendList = new FriendList();
				friendList.setFacebookId(uid);
				friendList.setFacebookName(rs.getString("facebookName"));
				friendList.setEmail(rs.getString("email"));
				friendList.setUserId(uid);
				list.add(friendList);
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

	public static void deleteFriendList(int id) {
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			stmt.executeQuery("call DELETE_FriendList(" + id + ")");
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
