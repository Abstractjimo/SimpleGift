<%@ page import="java.lang.*,simplegift.controller.*"%>
<%
int quantity = Integer.parseInt(request.getParameter("quantity"));
String orderNumber = request.getParameter("orderNumber");
String contactName = request.getParameter("contactName");
String address = request.getParameter("address");
int userId = Integer.parseInt(request.getParameter("userId"));
int giftId = Integer.parseInt(request.getParameter("giftId"));
int contactId = ContactInfoController.addContactInfo(contactName, address, "", "", 17);
OrderController.addOrder(orderNumber, contactId, giftId, quantity);
response.sendRedirect("/SimpleGift/myregistry.jsp?userId="+userId);
%>