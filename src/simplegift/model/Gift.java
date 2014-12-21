package simplegift.model;

import java.sql.Date;

public class Gift {

	private int giftId;
	private String giftName;;
	private int desired;
	private int received;
	private double price;
	private String storeURL;
	private String description;
	private Date posttime;
	private int priority;
	private String category;
	private int userId;
	private int privacy;
	private String giftImgURL;
	///////////////////////static
	public static int PRIORITY_VERY_HIGH = 0;
	public static int PRIORITY_HIGH = 1;
	public static int PRIORITY_MEDIUM = 2;
	public static int PRIORITY_LOW = 3;
	public static int PRIORITY_VERY_LOW = 4;
	///////////////////////
	public int getGiftId() {
		return giftId;
	}
	public void setGiftId(int giftId) {
		this.giftId = giftId;
	}
	public String getGiftName() {
		return giftName;
	}
	public void setGiftName(String giftName) {
		this.giftName = giftName;
	}
	public int getDesired() {
		return desired;
	}
	public void setDesired(int desired) {
		this.desired = desired;
	}
	public int getReceived() {
		return received;
	}
	public void setReceived(int received) {
		this.received = received;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getStoreURL() {
		return storeURL;
	}
	public void setStoreURL(String storeURL) {
		this.storeURL = storeURL;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getPosttime() {
		return posttime;
	}
	public void setPosttime(Date posttime) {
		this.posttime = posttime;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getPrivacy() {
		return privacy;
	}
	public void setPrivacy(int privacy) {
		this.privacy = privacy;
	}
	public String getGiftImgURL() {
		return giftImgURL;
	}
	public void setGiftImgURL(String giftImgURL) {
		this.giftImgURL = giftImgURL;
	}
	
	
}
