<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ page import= "java.util.List, simplegift.model.ContactInfo, simplegift.controller.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registry</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
        
<style type="text/css">
.row {
	margin-top: 40px;
	padding: 0 10px;
}

.clickable {
	cursor: pointer;
}

.panel-heading div {
	margin-top: -18px;
	font-size: 15px;
}

.panel-heading div span {
	margin-left: 5px;
}

.panel-body {
	display: none;
}
</style>
</head>
<body>

<jsp:include page="navigation.jsp" />

<div class="container" style="margin-top: 80px">
	<%  
		String keyword = request.getParameter("keyword");
		List<ContactInfo> result = ContactInfoController.getContactInfoByKeyword(keyword);
		System.out.println(result.size());
	%>
    <h1>Click the filter icon <small>(<i class="glyphicon glyphicon-filter"></i>)</small></h1>
    	<div class="row">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Result</h3>
						<div class="pull-right">
							<span class="clickable filter" data-toggle="tooltip" title="Toggle table filter" data-container="body">
								<i class="glyphicon glyphicon-filter"></i>
							</span>
						</div>
					</div>
					<div class="panel-body">
						<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Input some keyword like 'city'"/>
					</div>
					<table class="table table-hover" id="dev-table">
						<thead>
							<tr>
								<th>Full Name</th>
								<th>Address</th>
								<th>E-mail</th>
								<th>Wishlist URL</th>
								
							</tr>
						</thead>
						<tbody>
						
							<%
								for(int i = 0; i < result.size(); ++i) {
									ContactInfo cInfo = result.get(i);
							%>
							<tr>
								<td><%=cInfo.getContactName() %></td>
								<td><%=cInfo.getAddress() %></td>
								<td><%=cInfo.getEmail()%></td>
								<td><a href="myregistry.jsp?userId=<%=cInfo.getUserId()%>"> Go </a></td>
							</tr>
							<%} 								
							%>
							
						</tbody>
					</table>
				</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp" />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/filter.js"></script>
</body>
</html>