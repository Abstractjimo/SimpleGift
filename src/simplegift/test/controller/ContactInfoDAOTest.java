package simplegift.test.controller;

import static org.junit.Assert.*;

import org.junit.Test;

import simplegift.DAO.ContacfInfoDAO;
import simplegift.model.ContactInfo;

public class ContactInfoDAOTest {

	@Test
	public void test() {
		ContacfInfoDAO c = new ContacfInfoDAO();
		ContactInfo info = new ContactInfo();
		info.setContactName("grant");
		info.setAddress("1212 36ST");
		info.setEmail("g@g.com");
		info.setPhone("123123123");
		info.setUserId(4);
		c.addContactInfo(info);
//		System.out.println("finished");
		System.out.println(c.getContactInfo(1).getAddress());
	}

}
