package simplegift.test.controller;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import simplegift.controller.GiftController;
import simplegift.model.*;

public class GiftControllerTest {

	@Test
	public void test() {
		Gift gift = GiftController.addGift("gift", 1, 10.6, "storeURL", "description", 0, "default", 4, 0, "giftImgURL");
		gift.setGiftImgURL("giftURL");
		System.out.println(gift.getGiftId());
		GiftController.modifyGift(gift.getGiftId(), gift);
	}

	@Test
	public void listTest(){
		List<Gift> gifts = GiftController.getGiftByUser(4);
		assert gifts != null;
		assert gifts.get(0).getGiftId() == 22;
	}
	
	@Test
	public void latestGiftsTest(){
		List<Gift> gifts = GiftController.getLatestGifts();
		System.out.println(gifts.size());
	}
}
