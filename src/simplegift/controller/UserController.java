package simplegift.controller;

import simplegift.DAO.UserDAO;
import simplegift.model.*;

public class UserController {
	
	public static User register(User user){
		UserDAO.addUser(user);
		return UserDAO.getUserByEmail(user.getUserEmail());
	}

	/**
	 * Check user for login.
	 * @param email
	 * @param pwd
	 * @return return user if succeed, otherwise null.
	 */
	public static User login(String email, String pwd){
		User user = UserDAO.getUserByEmail(email);
		System.out.println(email + "***" + pwd);
		if (user != null && user.getPassword().equals(pwd)){
			return user;
		} else {
			return null;
		}
	}
	
	public static User signUp(String userEmail, String password, String userName, String userImgURL) {
		User user = new User();
		user.setUserEmail(userEmail);
		user.setPassword(password);
		user.setUserName(userName);
		user.setUserImgURL(userImgURL);
		user.setUserId(UserDAO.addUser(user));
		return user;
	}
}
