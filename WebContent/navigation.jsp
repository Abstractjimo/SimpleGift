<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Navigation Menu</title>

<!-- Bootstrap -->
<link href="styles/bootstrap.min.css" rel="stylesheet">
<link href="index.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">SimpleGift</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="giftboard.jsp">Gift Board </a></li>
				<li><a href="friendcircle.jsp">Friend Circle </a></li>
			</ul>

			<form class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" name ="keyword"  class="form-control"
						placeholder="Find a Registry by Full Name" style="width: 520px">
				</div>
				<button type="submit" class="btn btn-primary">Search</button>
			</form>

			<ul class="nav navbar-nav navbar-right">
				<%
				if (session.getAttribute("userName") != null){
					%>
					 <li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Welcome <b><%=session.getAttribute("userName").toString()%></b><span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="/SimpleGift/mywishlist.jsp">My Wishlist</a></li>
						<li class="divider"></li>
						<li><a href="/SimpleGift/logout_callback.jsp">Logout</a></li>
					</ul>
				</li>
					<%
				} else {
					%>
					<li class="dropdown">
				<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Sign
						In <span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="login.html">Log in with Email</a></li>
						<li><a href="#">Log in with FaceBook</a></li>
						<li class="divider"></li>
						<li><a href="signup.html">Sign Up</a></li>
					</ul>
				</li>
					<%
				}
				%>
			</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	</nav>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>