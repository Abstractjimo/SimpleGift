package simplegift.controller;

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
		return order;
	}
}
