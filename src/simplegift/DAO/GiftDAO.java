package simplegift.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import simplegift.controller.DBController;
import simplegift.model.Gift;

public class GiftDAO {
	
public static int addGift(Gift gift){
		
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
//			String sql = "call INSERT_Gift(?,?,?,?,?,?,?,?,?,?,?,?)";
			String sql = "insert into Gift values(null,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, gift.getGiftName());
			stmt.setInt(2, gift.getDesired());
			stmt.setInt(3, gift.getReceived());
			stmt.setDouble(4, gift.getPrice());
			stmt.setString(5, gift.getStoreURL());
			stmt.setString(6, gift.getDescription());
			stmt.setTimestamp(7, gift.getPosttime());
			stmt.setInt(8, gift.getPriority());
			stmt.setString(9, gift.getCategory());
			stmt.setInt(10, gift.getUserId());
			stmt.setInt(11, gift.getPrivacy());
			stmt.setString(12, gift.getGiftImgURL());
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

	public static Gift getGift(int id){
		Connection conn = null;
		try {
			conn=  DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_Gift("+id+")");
			if (rs.next()){
				Gift gift = new Gift();
				gift.setGiftId(rs.getInt("giftId"));
				gift.setGiftName(rs.getString("giftName"));
				gift.setDesired(rs.getInt("desired"));
				gift.setReceived(rs.getInt("received"));
				gift.setPrice(rs.getDouble("price"));
				gift.setStoreURL(rs.getString("storeURL"));
				gift.setDescription(rs.getString("description"));
				gift.setPosttime(rs.getTimestamp("posttime"));
				gift.setPriority(rs.getInt("priority"));
				gift.setCategory(rs.getString("category"));
				gift.setUserId(rs.getInt("userId"));
				gift.setPrivacy(rs.getInt("privacy"));
				gift.setGiftImgURL(rs.getString("giftImgURL"));
				return gift;
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
	
	public static List<Gift> getLatestGifts(){
		Connection conn = null;
		try {
			conn=  DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_Latest_Gifts()");
			List<Gift> gifts = new ArrayList<Gift>();
			while (rs.next()){
				Gift gift = new Gift();
				gift.setGiftId(rs.getInt("giftId"));
				gift.setGiftName(rs.getString("giftName"));
				gift.setDesired(rs.getInt("desired"));
				gift.setReceived(rs.getInt("received"));
				gift.setPrice(rs.getDouble("price"));
				gift.setStoreURL(rs.getString("storeURL"));
				gift.setDescription(rs.getString("description"));
				gift.setPosttime(rs.getTimestamp("posttime"));
				gift.setPriority(rs.getInt("priority"));
				gift.setCategory(rs.getString("category"));
				gift.setUserId(rs.getInt("userId"));
				gift.setPrivacy(rs.getInt("privacy"));
				gift.setGiftImgURL(rs.getString("giftImgURL"));
				gifts.add(gift);
			}
			return gifts;
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
	
	public static int updateGift(Gift gift){
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			PreparedStatement stmt = conn.prepareStatement("call UPDATE_Gift(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stmt.setInt(1, gift.getGiftId());
			stmt.setString(2, gift.getGiftName());
			stmt.setInt(3, gift.getDesired());
			stmt.setInt(4, gift.getReceived());
			stmt.setDouble(5, gift.getPrice());
			stmt.setString(6, gift.getStoreURL());
			stmt.setString(7, gift.getDescription());
			stmt.setTimestamp(8, gift.getPosttime());
			stmt.setInt(9, gift.getPriority());
			stmt.setString(10, gift.getCategory());
			stmt.setInt(11, gift.getUserId());
			stmt.setInt(12, gift.getPrivacy());
			stmt.setString(13, gift.getGiftImgURL());
			return stmt.executeUpdate();
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
	
	public static List<Gift> getGiftByUid(int uid){
		Connection conn = null;
		try {
			conn=  DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("call SELECT_GiftList_By_User("+uid+")");
			List<Gift> list = new ArrayList<Gift>();
			while (rs.next()){
				Gift gift = new Gift();
				gift.setGiftId(rs.getInt("giftId"));
				gift.setGiftName(rs.getString("giftName"));
				gift.setDesired(rs.getInt("desired"));
				gift.setReceived(rs.getInt("received"));
				gift.setPrice(rs.getDouble("price"));
				gift.setStoreURL(rs.getString("storeURL"));
				gift.setDescription(rs.getString("description"));
				gift.setPosttime(rs.getTimestamp("posttime"));
				gift.setPriority(rs.getInt("priority"));
				gift.setCategory(rs.getString("category"));
				gift.setUserId(rs.getInt("userId"));
				gift.setPrivacy(rs.getInt("privacy"));
				gift.setGiftImgURL(rs.getString("giftImgURL"));
				list.add(gift);
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
	
	public static void deleteGift(int id){
		Connection conn = null;
		try {
			conn = DBController.getDBConnection();
			Statement stmt = conn.createStatement();
			stmt.executeQuery("call DELETE_Gift("+id+")");
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
