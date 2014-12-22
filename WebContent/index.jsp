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
    
<style>
.jumbotron {
  text-shadow: #444 0 1px 1px;
  text-align: center;
  background: url('images/jumbotron.jpeg') no-repeat;
  background-size:cover;
}

.mycarouselimage {
  width: 1200px;
  height: 350px;
  max-height: 350px;
}
</style>
</head>
<body>
<jsp:include page="navigation.jsp" />
	<div class="container">
		<!-- jumbotron  -->
		<div class="bg"></div>
		<div class="jumbotron" style="margin-top:80px;">
			<h1>This is the simplest gift registry!</h1>
			<p>Try it Now</p>
			<p>
				<a class="btn btn-success btn-lg" href="signup.html" role="button">SignUp Today!</a>
			</p>
		</div>
		
		<!-- carousel  -->
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img class="mycarouselimage" src="images/pinkgift.png" alt="first image">
					<div class="carousel-caption">
						<h2>Add any gifts you want</h2>
					</div>
				</div>
				<div class="item">
					<img class="mycarouselimage" src="images/whitewallgift.png" alt="second image">
					<div class="carousel-caption">
						<h2>Get inspired from others' ideas</h2>
					</div>
				</div>
				<div class="item">
					<img class="mycarouselimage" src="images/happygift.png" alt="third image">
					<div class="carousel-caption">
						<h2>Use very easy</h2>
					</div>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
		<!-- Carousel -->
	</div>
	<jsp:include page="footer.jsp" />
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script>
		$('.carousel').carousel({
			interval : 3000
		})
	</script>
</body>
</html>