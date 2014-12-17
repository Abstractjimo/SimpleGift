package simplegift.model;

public class WishList {

	private int listId;
	private String listName;
	private String listURL;
	private int userId;
	
	public int getListId() {
		return listId;
	}
	public void setListId(int listId) {
		this.listId = listId;
	}
	public String getListName() {
		return listName;
	}
	public void setListName(String listName) {
		this.listName = listName;
	}
	public String getListURL() {
		return listURL;
	}
	public void setListURL(String listURL) {
		this.listURL = listURL;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
}
