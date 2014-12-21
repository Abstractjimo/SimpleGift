package simplegift.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import simplegift.controller.DBController;
import simplegift.model.*;

public class MessageDAO {

	public static void addMessage(Message message) {

		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			PreparedStatement stmt = conn
					.prepareStatement("call INSERT_Message(?,?,?)");
			stmt.setString(1, message.getContent());
			stmt.setInt(2, message.getFromUserId());
			stmt.setInt(3, message.getToUserId());
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

	public static Message getMessage(int id) {
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_Message(" + id + ")");
			if (rs.next()) {
				Message message = new Message();
				message.setMessageId(id);
				message.setContent(rs.getString("content"));
				message.setFromUserId(rs.getInt("fromUserId"));
				message.setToUserId(rs.getInt("toUserId"));
				return message;
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

	public static void deleteMessage(int id) {
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			stmt.executeQuery("call DELETE_Message(" + id + ")");
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
