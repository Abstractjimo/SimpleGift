<%@ page import="simplegift.controller.*,simplegift.model.*,java.util.*" %>
<%
int userId = 0;
User user = null;
ContactInfo contactInfo = null;
List<Gift> gifts = null;
int giftId = 0;
if (request.getParameter("userId") != null){
	userId = Integer.parseInt(request.getParameter("userId"));
	user = UserController.getUser(userId);
	contactInfo = UserController.getUserContact(userId);
	gifts = GiftController.getGiftByUser(userId);
} else {
    response.sendRedirect("/SimpleGift/");
}

%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SigmaGift</title>

<!-- Bootstrap -->
<link href="styles/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<jsp:include page="navigation.jsp" />
	<div class="container" style="margin-top: 80px">
		<%if (user != null){ %>
		<h2>Welcome to <b><%=user.getUserName() %>'s</b> gift registry</h2>
		<%} %>
		<div class="row">
			<div class="col-sm-12 col-md-10 col-md-offset-1">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Gift</th>
							<th>Price</th>
							<th class="text-center">desired</th>
							<th class="text-center">received</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<%if (gifts != null){
						for (Gift gift : gifts){
							if (gift.getDesired() <= gift.getReceived()){
								continue;
							}
						%>
						<tr>
							<td class="col-sm-8 col-md-6">
								<div class="media">
									<a class="thumbnail pull-left" href="#"> <img
										class="media-object"
										src="<%=gift.getGiftImgURL() %>"
										style="width: 72px; height: 72px;">
									</a>
									<div class="media-body">
										<h4 class="media-heading">
											<a href="#"><%=gift.getGiftName() %></a>
										</h4>
										<h5 class="media-heading">
											by <a href="#"><%=gift.getStoreURL() %></a>
										</h5>
										<span>Some description: </span><span class="text-success"><strong><%=gift.getDescription() %></strong></span>
									</div>
								</div>
							</td>
							<td class="col-sm-1 col-md-1"><%=gift.getPrice() %></td>
							<td class="col-sm-1 col-md-1 text-center"><strong><%=gift.getDesired() %></strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong><%=gift.getReceived() %></strong></td>
							<td class="col-sm-1 col-md-1">
								<button type="button" class="btn btn-success"
									data-toggle="modal" data-target="#myModal" onclick="<%giftId = gift.getGiftId(); %>">
									<span class="glyphicon glyphicon-shopping-cart"></span> Buy
								</button>
							</td>
						</tr>	
						<%}
					}%>
						

					</tbody>
				</table>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h2 class="modal-title" id="myModalLabel">Buy Buy Buy</h2>
					</div>
					<form method="POST" action="ordergift_callback.jsp" encrypt="multipart/mix">
					<div class="modal-body">
						<h4>Receiver Address</h4>
						<%if (contactInfo != null){ %>
						<p><%=contactInfo.getAddress() %></p>
						<%} %>
						<hr>
						<p>
							I have bought &nbsp<input class="input-xs" type="text" name="quantity" value="1">
							of this item
						</p>
						<p>Order Number :&nbsp<input class="form-control" type="text" name="orderNumber" placeholder="input order number"></p>

						<hr>
						<h4>Your Contact Information</h4>
						<p><input class="form-control" name="contactName"
						placeholder="Your Full Name" type="text" /></p>
						<p>
							<input class="form-control" rows="3" name="address" placeholder="Your Contact Address"></textarea>
						</p>
					</div>
					<div class="modal-footer">
						<input type="hidden" value="<%=userId %>" name="userId"/>
						<input type="hidden" value="<%=giftId %>" name="giftId"/>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<input type="submit" class="btn btn-primary"></input>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>