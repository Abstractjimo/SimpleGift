package simplegift.controller;

import java.sql.Date;

import simplegift.DAO.ContacfInfoDAO;
import simplegift.DAO.GiftDAO;
import simplegift.model.*;

public class ContactInfoController {
	public static void addContactInfo(String contactName, String address, String email, String phone, int userId) {
		ContactInfo contactInfo = new ContactInfo();
		contactInfo.setAddress(address);
		contactInfo.setContactName(contactName);
		contactInfo.setEmail(email);
		contactInfo.setPhone(phone);
		contactInfo.setUserId(userId);
		ContacfInfoDAO.addContactInfo(contactInfo);
	}
}
