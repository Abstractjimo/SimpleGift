package simplegift.model;

public class User {

	private int userId;
	private String userEmail;
	private String password;
	private String userName;
	private String userImgURL;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserImgURL() {
		return userImgURL;
	}
	public void setUserImgURL(String userImgURL) {
		this.userImgURL = userImgURL;
	}
	
	
}
