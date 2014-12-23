<%@ page import="simplegift.model.*,simplegift.controller.*,java.util.*" %>
<%
List<Gift> gifts = null;
if (session.getAttribute("userName") == null){
	%><script type="text/javascript">
	alert("Only registered users have access to their own wishlist, please login first.");
	window.location.replace("/SimpleGift/login.html");
</script> <%
} else {
	int userId = Integer.parseInt(session.getAttribute("userId").toString());
	gifts = GiftController.getGiftByUser(userId);
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
<title>SigmaGift Wish List</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"/>
</head>
<body>
<jsp:include page="navigation.jsp" />
<div class="container" style="margin-top: 80px">
		<div class="bs-example">
			<ul class="nav nav-tabs" id="myTab">
				<li class="active"><a data-toggle="tab" href="#sectionA">My
						Wish Gift List</a></li>
				<li><a data-toggle="tab" href="#sectionB">Received Gift
						List</a></li>
				<li class="dropdown">
					<button type="button" class="btn btn-success dropdown-toggle"
						data-toggle="dropdown" aria-expanded="false">
						Add Gifts<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a data-toggle="tab" href="#dropdown1">Item Gift</a></li>
					</ul>
				</li>
			</ul>
			<div class="tab-content">
			
			<!-- Wish Gift Tab -->
				<div id="sectionA" class="tab-pane fade in active">
					<h2>Your gift registry</h2>
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
								<% 
								if (gifts != null){
									for (Gift gift : gifts){%>
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
															<a  id="productname" href="#"><%=gift.getGiftName() %></a>
														</h4>
														<h5 class="media-heading">
															by <a  id="storeurl" href="#"><%=gift.getStoreURL() %></a>
														</h5>
														Description:
														<span class="text-success"><strong>
														<a id="description" href="#"><%=gift.getDescription() %></a> </strong></span>
													</div>
												</div>
											</td>
											<td class="col-sm-1 col-md-1">$<a href="#" id="unitprice"><%=gift.getPrice() %></a></td>
											<td class="col-sm-1 col-md-1 text-center"><strong><a href="#" id="desired"><%=gift.getDesired() %></a></strong></td>
											<td class="col-sm-1 col-md-1 text-center"><strong><a href="#" id="receuved"><%=gift.getReceived() %></a></strong></td>
											<td class="col-sm-1 col-md-1">
												<button type="button" class="btn btn-danger"
													data-toggle="modal" data-target="#myModal">
													<span class="glyphicon glyphicon-remove"></span> Delete
												</button>
											</td>
										</tr>
									<% }
									}%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
			<!-- Received Gift part -->
				<div id="sectionB" class="tab-pane fade">
					<h2>Received Gift Histroy</h2>
					<div class="row">
						<div class="col-sm-12 col-md-10 col-md-offset-1">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>Gift</th>
										<th>price</th>
										<th class="text-center">received</th>
										<th class="text-center">time</th>
										<th>Purchaser</th>
									</tr>
								</thead>
								<tbody>
								<% %>
									<tr>
										<td class="col-sm-6 col-md-6">
											<div class="media">
												<a class="thumbnail pull-left" href="#"> <img
													class="media-object"
													src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png"
													style="width: 72px; height: 72px;">
												</a>
												<div class="media-body">
													<h4 class="media-heading">
														<a href="#">Product name</a>
													</h4>
													<h5 class="media-heading">
														by <a href="#">store url</a>
													</h5>
													<span>Some description: </span><span class="text-success"><strong>this
															is an apple </strong></span>
												</div>
											</div>
										</td>
										<td class="col-sm-1 col-md-1">$10</td>
										<td class="col-sm-1 col-md-1 text-center"><strong>10</strong></td>
										<td class="col-sm-3 col-md-3 text-center"><strong>2014/12/23</strong></td>
										<td class="col-sm-1 col-md-1"><strong>pyq</strong></td>
									</tr>
									<tr>
										<td class="col-md-6">
											<div class="media">
												<a class="thumbnail pull-left" href="#"> <img
													class="media-object"
													src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png"
													style="width: 72px; height: 72px;">
												</a>
												<div class="media-body">
													<h4 class="media-heading">
														<a href="#">Product name</a>
													</h4>
													<h5 class="media-heading">
														by <a href="#">store url</a>
													</h5>
													<span>Description: </span><span class="text-warning"><strong>I
															prefer red color</strong></span>
												</div>
											</div>
										</td>
										<td class="col-sm-1 col-md-1">$10</td>
										<td class="col-sm-1 col-md-1 text-center"><strong>1</strong></td>
										<td class="col-sm-3 col-md-3 text-center"><strong>2014/12/19</strong></td>
										<td class="col-sm-1 col-md-1"><strong>Huansong
												Wang</strong></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div id="dropdown1" class="tab-pane fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">Create a new Gift</h4>
							</div>
							<div class="modal-body">
								<form role="form" method="POST" action="addgift_callback.jsp" enctype="multipart/form-data">
									<div class="form-group">
										<input type="text" class="form-control" name="giftName"
											placeholder="Enter GiftName"/>
									</div>
									<div class="form-group">
										<input type="text" class="form-control" name="storeURL"
											placeholder="Enter gift URL"/>
									</div>
									<div class="form-group">
										<input type="text" class="form-control" name="price"
											placeholder="Enter gift price"/>
									</div>
									<div class="form-group">
										<input type="text" class="form-control" name="desired"
											placeholder="Enter gift quantity"/>
									</div>
									<div class="form-group">
										<input type="text" class="form-control" name="description"
											placeholder="Enter gift description"/>
									</div>
									<div class="form-group">
										<label for="giftImage">Upload your gift image</label> 
										<input
											type="file" name="giftImage" accept="image/*"/>
										<p class="help-block">Upload your gift image</p>
									</div>
									<div class="modal-footer">
										<input type="button" class="btn btn-info" value="Cancel"></input>
										<input type="submit" class="btn btn-primary" value="Submit"></input>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
	<jsp:include page="footer.jsp" />
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
	<script type="text/javascript">
		<script type="text/javascript">
		$(document).ready(function() {
			$('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
				var activeTab = $(e.target).text(); // Get the name of active tab
				var previousTab = $(e.relatedTarget).text(); // Get the name of previous tab
				$(".active-tab span").html(activeTab);
				$(".previous-tab span").html(previousTab);
			});
		});
	</script>
	<!-- main.js -->
	<script src="js/main.js"></script>
</body>
</html>