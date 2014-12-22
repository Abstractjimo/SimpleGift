<%@ page import="" %>
<%
String giftName = request.getParameter("giftName");
int desired = Integer.parseInt(request.getParameter("desired"));
double price = Double.parseDouble(request.getParameter("price"));
String storeURL = request.getParameter("storeURL");
String description = request.getParameter("description");
%>