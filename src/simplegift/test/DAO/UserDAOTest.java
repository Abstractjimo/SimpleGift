package simplegift.test.DAO;

import static org.junit.Assert.*;

import org.junit.Test;

import simplegift.DAO.UserDAO;
import simplegift.model.User;

public class UserDAOTest {

	@Test
	public void test() {
		User user = UserDAO.getUserByEmail("g@g.com");
		System.out.println(user.getPassword());
		//assert user.getUserId() == 4;
	}
	
	@Test
	public void testGetUser(){
		User user = UserDAO.getUser(4);
		assert user.getUserEmail() == "g@g.com";
		System.out.println(user.getPassword());
	}

}
