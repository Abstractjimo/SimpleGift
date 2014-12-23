<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Friends Circle</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/timeline.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
.timeline-body img{
	max-width:300px;
}
.timeline-body h4{
color: red;
}
</style>

</head>
<body>
	<jsp:include page="navigation.jsp" />


	<!-- Not done yet -->
	<div class="container" style="margin-top: 80px">
		<div class="row clearfix">
			<div class="tabbable" id="tabs">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#section1" data-toggle="tab">Friends
							Status </a></li>
					<li><a href="#section2" data-toggle="tab">Friends</a></li>
				</ul>

				<div class="tab-content">
					<div class="tab-pane active" id="section1">

						<ul class="timeline">
							<li>
								<div class="timeline-badge">
									<i class="glyphicon glyphicon-check"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Yongqing</h4>
										<p>
											<small class="text-muted"><i
												class="glyphicon glyphicon-time"></i>   2014/12/22</small>
										</p>
									</div>
									<div class="timeline-body">
										<div class="col-md-8">
											<img src="images/Tv.png" alt="tv image">
											<p>
												<a href="#" class="btn btn-info" role="button" onclick="openWin1()" >View</a> 
												<a href="#" class="btn btn-danger" role="button">Like</a>
											</p>

										</div>
										<div class="col-md-4">
												<h4>Buy a gift</h4>
											<ul class="list-group">
												<li class="list-group-item">Amazon Fire TV</li>
												<li class="list-group-item">price: 120</li>
												<li class="list-group-item">quantity: 1</li>
											</ul>
										</div>
									</div>
								</div>
							</li>
							<li class="timeline-inverted">
								<div class="timeline-badge warning">
									<i class="glyphicon glyphicon-credit-card"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Huansong Wang</h4>
										<p>
											<small class="text-muted"><i class="glyphicon glyphicon-time"></i> 2014/12/21</small>
										</p>
									</div>
									<div class="timeline-body">
										<div class="col-md-4">
											<h4>Add a gift</h4>
											<ul class="list-group">
												<li class="list-group-item">Air Jordan 4Lab1</li>
												<li class="list-group-item">price: 185</li>
												<li class="list-group-item">quantity: 1</li>
											</ul>
										</div>
										<div class="col-md-8">
											<img src="images/shoe.png" alt="product image">
											<p>
												<a href="#" class="btn btn-info" role="button" onclick="openWin2()">View</a> 
												<a href="#" class="btn btn-danger" role="button">Like</a>
											</p>

										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-badge danger">
									<i class="glyphicon glyphicon-credit-card"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Mussum Sahu</h4>
									</div>
									<div class="timeline-body">
										<div class="col-md-8">
											<img src="images/Hair Dryer.png" alt="tv image">
											<p>
												<a href="http://shop.panasonic.com/shop/model/EH-NA65-K?cm_mmc=AffiliateDefault-_-Ecommerce-_-Default-_-Default" class="btn btn-info" role="button">View</a> 
												<a href="#" class="btn btn-danger" role="button">Like</a>
											</p>

										</div>
										<div class="col-md-4">
												<h4>Recieved a gift</h4>
											<ul class="list-group">
												<li class="list-group-item">Hair Dryer</li>
												<li class="list-group-item">price: 179.99</li>
												<li class="list-group-item">quantity: 2</li>
											</ul>
										</div>
									</div>
								</div>
							</li>
							<li class="timeline-inverted">
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Lebron James</h4>
									</div>
									<div class="timeline-body">
										<div class="col-md-4">
											<h4>like a gift</h4>
											<ul class="list-group">
												<li class="list-group-item">Air Jordan 4Lab1</li>
												<li class="list-group-item">price: 185</li>
												<li class="list-group-item">quantity: 1</li>
											</ul>
										</div>
										<div class="col-md-8">
											<img src="images/shoe.png" alt="product image">
											<p>
												<a href="#" class="btn btn-info" role="button" onclick="openWin2()">View</a> 
												<a href="#" class="btn btn-danger" role="button">Like</a>
											</p>

										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-badge info">
									<i class="glyphicon glyphicon-floppy-disk"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Mussum ipsum cacilds</h4>
									</div>
									<div class="timeline-body">
										<div class="col-md-8">
											<img src="images/Tv.png" alt="tv image">
											<p>
												<a href="#" class="btn btn-info" role="button" onclick="openWin1()">View</a> 
												<a href="#" class="btn btn-danger" role="button">Like</a>
											</p>

										</div>
										<div class="col-md-4">
												<h4>Recieved a gift</h4>
											<ul class="list-group">
												<li class="list-group-item">Amazon Fire TV</li>
												<li class="list-group-item">price: 120</li>
												<li class="list-group-item">quantity: 1</li>
											</ul>
										</div>
									</div>
								</div>
							</li>
						</ul>

					</div>
					<div class="tab-pane" id="section2">
					
						<button type="button" class="btn btn-success">Synchronize</button>
						<div class="row">
							<h2>Friends List</h2>
							<div class="col-md-6">
								<div class="blockquote-box clearfix">
									<div class="square pull-left">
										<img src="http://placehold.it/60/8e44ad/FFF&text=B" alt=""
											class="" />
									</div>
									<h4>Yongqing Peng</h4>
									<p>personal page: <a> www.123.com </a></p>
									<p>email: <a> pyq@126.com </a></p>
								</div>
								<div class="blockquote-box blockquote-primary clearfix">
									<div class="square pull-left">
										<span class="glyphicon glyphicon-music glyphicon-lg"></span>
									</div>
									<h4>Huansong Wang</h4>
									<p>personal page: <a> www.whs.com </a></p>
									<p>email: <a> hm123@nyu.com </a></p>
								</div>
								<div class="blockquote-box blockquote-success clearfix">
									<div class="square pull-left">
										<span class="glyphicon glyphicon-tree-conifer glyphicon-lg"></span>
									</div>
									<h4>Xiaohuanxiong</h4>
									<p>personal page: <a> www.facebook.com </a></p>
									<p>email: <a> dahaha@yahoo.com </a></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="blockquote-box blockquote-info clearfix">
									<div class="square pull-left">
										<span class="glyphicon glyphicon-info-sign glyphicon-lg"></span>
									</div>
									<h4>YiYi</h4>
									<p>personal page: <a> www.yiyier.me </a></p>
									<p>email: <a> appledzzz@gmail.com </a></p>
								</div>
								<div class="blockquote-box blockquote-warning clearfix">
									<div class="square pull-left">
										<span class="glyphicon glyphicon-warning-sign glyphicon-lg"></span>
									</div>
									<h4>Hengheng Hahei</h4>
									<p>personal page: <a> www.hahei.com </a></p>
									<p>email: <a> hhhh@126.com </a></p>
								</div>
								<div class="blockquote-box blockquote-danger clearfix">
									<div class="square pull-left">
										<span class="glyphicon glyphicon-record glyphicon-lg"></span>
									</div>
									<h4>Heihei</h4>
									<p>personal page: <a> www.iamheihei.com </a></p>
									<p>email: <a> hheiei@gmail.com </a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	
	 <script>
	 function openWin1()
	{
	 	var myWindow = window.open("http://www.amazon.com/dp/B00CX5P8FC?_encoding=UTF8&showFS=1","name","width=1400,height=800");
	}
	function openWin2()
	{
		 var myWindow = window.open("http://store.nike.com/us/en_us/pd/air-jordan-4lab1-shoe/pid-10276838/pgid-10284817","name","width=1400,height=800");
	}
	</script>
</body>
</html>