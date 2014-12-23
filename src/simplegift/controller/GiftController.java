package simplegift.controller;

import java.sql.Timestamp;
import java.util.List;

import simplegift.DAO.GiftDAO;
import simplegift.model.*;

public class GiftController {

	public static Gift addGift(String giftName, int desired, double price, String storeURL, 
			String description, int priority, String category, int userId, int privacy, String giftImgURL){
		java.util.Date currentTime = new java.util.Date();
		Timestamp date = new Timestamp(currentTime.getTime());
		Gift gift = new Gift();
		gift.setCategory(category);
		gift.setDescription(description);
		gift.setDesired(desired);
		gift.setGiftImgURL(giftImgURL);
		gift.setGiftName(giftName);
		gift.setPosttime(date);
		gift.setPrice(price);
		gift.setPriority(priority);
		gift.setPrivacy(privacy);
		gift.setReceived(0);
		gift.setStoreURL(storeURL);
		gift.setUserId(userId);
		int id = GiftDAO.addGift(gift);
		gift.setGiftId(id);
		return gift;
	}
	
	public static int modifyGift(int giftId, Gift gift){
		gift.setGiftId(giftId);
		return GiftDAO.updateGift(gift);
	}
	
	public static Gift getGift(int giftId){
		return GiftDAO.getGift(giftId);
	}
	
	public static List<Gift> getGiftByUser(int userId){
		return GiftDAO.getGiftByUid(userId);
	}
	
	public static List<Gift> getLatestGifts(){
		return GiftDAO.getLatestGifts();
	}
}
