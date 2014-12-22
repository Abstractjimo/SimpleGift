package simplegift.test.controller;

import static org.junit.Assert.*;

import org.junit.Test;

import simplegift.controller.UserController;
import simplegift.model.User;

public class UserControllerTest {

	@Test
	public void test() {
		User user = UserController.login("g@g.com", "123");
		assert user != null;
		assert user.getUserId() == 4;
		assert user.getPassword() == "123";
	}

}
