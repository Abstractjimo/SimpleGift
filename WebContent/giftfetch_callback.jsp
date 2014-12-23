<%@ page import="java.io.*" %>
<%
if (request.getParameter("json") != null){
	String json = request.getParameter("json");
	String path = config.getServletContext().getRealPath("/")+"data/gifts.json";
	Writer writer = new BufferedWriter(new OutputStreamWriter(
	        new FileOutputStream(path), "utf-8"));
	System.out.println("this json" +json);
	writer.write(json);
	writer.close();
}
%>