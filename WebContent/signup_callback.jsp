<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    
<%@ page import="simplegift.controller.*, simplegift.model.*, simplegift.DAO.*" %> 
<script>   
<%
String firstName = request.getParameter("firstname");
String lastName = request.getParameter("lastname");
String contactName = firstName + " " + lastName;
String loginEmail = request.getParameter("youremail");
String password = request.getParameter("password");
String userName = request.getParameter("yourusername");
UserController.signUp(loginEmail, password, userName, "");
User user = UserDAO.getUserByEmail(loginEmail);
System.out.println(contactName + "-" + loginEmail + "-" + password );
System.out.println(userName);
if (user == null){
	%>alert("fail to sign up!")<%
} else {
	int userId = user.getUserId();
	String address = request.getParameter("youraddress");
	String phone = request.getParameter("yourphonenumber");
	System.out.println(contactName+address+loginEmail+phone+userId);
	ContactInfoController.addContactInfo(contactName, address, loginEmail, phone, userId);
	UserController.login(loginEmail, password);
	session.setAttribute("userId", user.getUserId());
	session.setAttribute("userName", user.getUserName());
	%>window.location.replace("/SimpleGift");<%
}
%>
</script>