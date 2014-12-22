<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="simplegift.controller.*, simplegift.model.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	<% 
	String email = request.getParameter("loginEmail");
	String password = request.getParameter("password");
	User user = UserController.login(email, password);
	if (user == null){
		%>alert("Incorrect username or password!")<%
	} else {
		session.setAttribute("userId", user.getUserId());
		session.setAttribute("userName", user.getUserName());
		%>window.location.replace("/SimpleGift");<%
	}
	
	%>
</script>
<title>Insert title here</title>
</head>
<body>

</body>
</html>