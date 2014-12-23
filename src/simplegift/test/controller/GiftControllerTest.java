package simplegift.test.controller;

import static org.junit.Assert.*;

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

}
