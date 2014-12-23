package simplegift.controller;

import simplegift.DAO.GiftDAO;
import simplegift.DAO.OrderDAO;
import simplegift.model.*;

public class OrderController {

	public static Order addOrder(String orderNumber, int contactId, int giftId, int quantity){
		Order order = new Order();
		order.setOrderNumber(orderNumber);
		order.setContactId(contactId);
		order.setGiftId(giftId);
		order.setQuantity(quantity);
		int id = OrderDAO.addOrder(order);
		order.setGiftId(id);
		Gift gift = GiftDAO.getGift(giftId);
		gift.setReceived(gift.getReceived() + quantity);
		GiftDAO.updateGift(gift);
		return order;
	}
}
