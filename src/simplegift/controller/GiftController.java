package simplegift.controller;

import java.sql.Date;

import simplegift.DAO.GiftDAO;
import simplegift.model.*;

public class GiftController {

	public static Gift addGift(String giftName, int desired, double price, String storeURL, 
			String description, int priority, String category, int userId, int privacy, String giftImgURL){
		Date date = new Date(new java.util.Date().getTime());
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
}
