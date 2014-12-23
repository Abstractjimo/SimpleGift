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
		<h2>Welcome to xxx gift registry</h2>
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
						<tr>
							<td class="col-sm-8 col-md-6">
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
							<td class="col-sm-1 col-md-1 text-center"><strong>3</strong></td>
							<td class="col-sm-1 col-md-1">
								<button type="button" class="btn btn-success"
									data-toggle="modal" data-target="#myModal">
									<span class="glyphicon glyphicon-shopping-cart"></span> Buy
								</button>
							</td>
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
							<td class="col-sm-1 col-md-1">$120</td>
							<td class="col-sm-1 col-md-1 text-center"><strong>1</strong></td>
							<td class="col-sm-1 col-md-1 text-center"><strong>1</strong></td>
							<td class="col-md-1">
								<button type="button" class="btn btn-success"
									data-toggle="modal" data-target="#myModal">
									<span class="glyphicon glyphicon-shopping-cart"></span> Buy
								</button>
							</td>
						</tr>
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
					<div class="modal-body">
						<h4>Receiver Address</h4>
						<p>PYQ w6th brooklyn New York, 11223</p>
						<hr>
						<p>
							I have bought &nbsp<input class="input-xs" type="text" value="1">
							of this item
						</p>
						<p>Order Number :&nbsp<input class="form-control" type="text" placeholder="input order number"></p>

						<hr>
						<h4>Your Contact Information</h4>
						<p><input class="form-control" name="yourname"
						placeholder="Your Full Name" type="text" /></p>
						<p>
							<textarea class="form-control" rows="3" name="youraddress" placeholder="Your Contact Address"></textarea>
						</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Finish gift
							buy</button>
					</div>
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