package simplegift.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import simplegift.controller.DBController;
import simplegift.model.ContactInfo;
import simplegift.model.User;

public class UserDAO {

public static int addUser(User user){
		
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
//			String sql = "call INSERT_User(?,?,?,?)";
			String sql = "insert into User values(null,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, user.getUserEmail());
			stmt.setString(2, user.getPassword());
			stmt.setString(3, user.getUserName());
			stmt.setString(4, user.getUserImgURL());
			stmt.executeUpdate();
			ResultSet rs = stmt.getGeneratedKeys();
			if (rs.next()){
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				if (conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return -1;
	}

	public static User getUser(int id){
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_User("+id+")");
			if (rs.next()){
				User user = new User();
				user.setUserId(id);
				user.setPassword(rs.getString("password"));
				user.setUserEmail(rs.getString("loginEmail"));
				user.setUserName(rs.getString("userName"));
				user.setUserImgURL(rs.getString("userImgURL"));
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				if (conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public static User getUserByEmail(String email){
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			String sql = "call SELECT_User_By_Email(?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, email);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()){
				User user = new User();
				user.setUserId(rs.getInt("userId"));
				user.setPassword(rs.getString("password"));
				user.setUserEmail(email);
				user.setUserName(rs.getString("userName"));
				user.setUserImgURL(rs.getString("userImgURL"));
				return user;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				if (conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public static void deleteUser(int id){
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			stmt.executeQuery("call DELETE_User("+id+")");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				if (conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
}
