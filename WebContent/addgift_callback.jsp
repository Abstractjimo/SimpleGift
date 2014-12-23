<%@ page import="simplegift.controller.GiftController, java.io.*, simplegift.model.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>

<%

String giftName = "";
int desired = 0;
double price = 0.0;
String storeURL = "";
String description = "";

String contentType = request.getContentType();
String giftImgURL = "";
String itemName = "";
FileItem imgItem = null;
String savePath = config.getServletContext().getRealPath("/")+"images/"+itemName+".png";
if (contentType != null && contentType.indexOf("multipart/form-data") >= 0){
	FileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	
	List<FileItem> items = upload.parseRequest(request);
	Iterator itr = items.iterator();
	while (itr.hasNext()){
		FileItem item = (FileItem)itr.next();
		if (item.isFormField()){
			String name = item.getFieldName();
			String value = item.getString();
			if(name.equals("giftName"))
			{
				giftName = value;
			} else if(name.equals("desired")){
				desired = Integer.parseInt(value);
			} else if(name.equals("price")){
				price = Double.parseDouble(value);
			} else if(name.equals("storeURL")){
				storeURL = value;
			} else if(name.equals("description")){
				description = value;
			}
		} else {
			try
			{
				itemName = item.getName();
				imgItem = item;
			}
			catch (Exception e)
			{
				out.println("Error"+e.getMessage());
			}
		}
	}
}
int userId = Integer.parseInt(session.getAttribute("userId").toString());
Gift gift = GiftController.addGift(giftName, desired, price, storeURL, description, 0, "default", userId, 0, giftImgURL);

String path = config.getServletContext().getRealPath("/")+"images/"+gift.getGiftId()+".png";
giftImgURL = "/SimpleGift/images/"+gift.getGiftId()+".png";
gift.setGiftImgURL(giftImgURL);
GiftController.modifyGift(gift.getGiftId(), gift);
%>alert(<%=path%>); <%
File savedFile = new File(path);

imgItem.write(savedFile);

%>
<script>

window.location.replace("/SimpleGift/mywishlist.jsp")</script>