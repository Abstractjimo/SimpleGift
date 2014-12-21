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

public class ContacfInfoDAO {
	
	public static void addContactInfo(ContactInfo cinfo){
		
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			PreparedStatement stmt = conn.prepareStatement("call INSERT_ContactInfo(?,?,?,?,?)");
			stmt.setString(1, cinfo.getContactName());
			stmt.setString(2, cinfo.getAddress());
			stmt.setString(3, cinfo.getEmail());
			stmt.setString(4, cinfo.getPhone());
			stmt.setInt(5, cinfo.getUserId());
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

	public static ContactInfo getContactInfo(int id){
		Connection conn = null;
		try {
			conn=  DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_ContactInfo("+id+")");
			if (rs.next()){
				ContactInfo cinfo = new ContactInfo();
				cinfo.setAddress(rs.getString("address"));
				cinfo.setContactId(id);
				cinfo.setContactName(rs.getString("contactName"));
				cinfo.setEmail(rs.getString("email"));
				cinfo.setPhone(rs.getString("phone"));
				cinfo.setUserId(rs.getInt("userId"));
				return cinfo;
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
	
	public static List<ContactInfo> getContactInfoByUid(int uid){
		Connection conn = null;
		try {
			conn=  DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_ContactInfo("+uid+")");
			List<ContactInfo> list = new ArrayList<ContactInfo>();
			if (rs.next()){
				ContactInfo cinfo = new ContactInfo();
				cinfo.setAddress(rs.getString("address"));
				cinfo.setContactId(rs.getInt("contactId"));
				cinfo.setContactName(rs.getString("contactName"));
				cinfo.setEmail(rs.getString("email"));
				cinfo.setPhone(rs.getString("phone"));
				cinfo.setUserId(rs.getInt("userId"));
				list.add(cinfo);
			}
			return list;
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
	
	public static void deleteContactInfo(int id){
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			stmt.executeQuery("call DELETE_ContactInfo("+id+")");
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
