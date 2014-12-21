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

public static void addUser(User user){
		
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			PreparedStatement stmt = conn.prepareStatement("call INSERT_User(?,?,?,?)");
			stmt.setString(1, user.getUserEmail());
			stmt.setString(2, user.getPassword());
			stmt.setString(3, user.getUserName());
			stmt.setString(4, user.getUserImgURL());
			System.out.println(stmt.executeUpdate());
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

	public static User getUsers(int id){
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
