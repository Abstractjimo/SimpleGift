<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Search Result</title>

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
							<tr>
								<td>Kilgore</td>
								<td>1823 w6, Brooklyn, NewYork</td>
								<td>kkkk@nyu.edu</td>
								<td><a href="#">mysigma.nuy.com</a></td>
							</tr>
							<tr>
								<td>Bob</td>
								<td>1111 5th avenue, Manhattan, NewYork </td>
								<td>BobBobBob@Bob.com</td>
								<td><a href="#">Bob.mywish.com</a></td>
							</tr>
							<tr>
								<td>Holden</td>
								<td>098 5th avenue, city, Miami</td>
								<td>qwe123@123.com</td>
								<td><a href="#">www.google.com</a></td>
							</tr>
							<tr>
								<td>Song Ge</td>
								<td>098 5th avenue, city, Miami</td>
								<td>qwe123@123.com</td>
								<td><a href="#">www.facebook.com</a></td>
							</tr>
						</tbody>
					</table>
				</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/filter.js"></script>
</body>
</html>