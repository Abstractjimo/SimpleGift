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
</head>
<body>
	<jsp:include page="navigation.jsp" />

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
												class="glyphicon glyphicon-time"></i> 2014/12/22</small>
										</p>
									</div>
									<div class="timeline-body">
										<p><a>buy</a> a gift</p>
										<img src="images/1998.jpg" data-src="holder.js/300x300" alt="...">
										<p>
											<a href="#" class="btn btn-info" role="button">View</a> 
											<a href="#" class="btn btn-danger" role="button">Like</a>
										</p>
									</div>
								</div>
							</li>
							<li class="timeline-inverted">
								<div class="timeline-badge warning">
									<i class="glyphicon glyphicon-credit-card"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Dengdeng</h4>
										<p>
											<small class="text-muted"><i class="glyphicon glyphicon-time"></i> 2014/12/22</small>
										</p>
									</div>
									<div class="timeline-body">
										<p><a>buy</a> a gift</p>
										<img src="images/glasses.jpg" data-src="holder.js/300x300" alt="...">
										<p>
										<a href="#" class="btn btn-info" role="button">View</a> 
										<a href="#" class="btn btn-danger" role="button">Like</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-badge danger">
									<i class="glyphicon glyphicon-credit-card"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Mussum ipsum cacilds</h4>
									</div>
									<div class="timeline-body">
										add a gift
									</div>
								</div>
							</li>
							<li class="timeline-inverted">
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Mussum ipsum cacilds</h4>
									</div>
									<div class="timeline-body">
										<p>buy a gift</p>
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
										<p>buy a gift</p>
										<hr>
										<div class="btn-group">
											<button type="button"
												class="btn btn-primary btn-sm dropdown-toggle"
												data-toggle="dropdown">
												<i class="glyphicon glyphicon-cog"></i> <span class="caret"></span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Action</a></li>
												<li><a href="#">Another action</a></li>
												<li><a href="#">Something else here</a></li>
												<li class="divider"></li>
												<li><a href="#">Separated link</a></li>
											</ul>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Mussum ipsum cacilds</h4>
									</div>
									<div class="timeline-body">
										<p>remove a gift</p>
									</div>
								</div>
							</li>
							<li class="timeline-inverted">
								<div class="timeline-badge success">
									<i class="glyphicon glyphicon-thumbs-up"></i>
								</div>
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h4 class="timeline-title">Mussum ipsum cacilds</h4>
									</div>
									<div class="timeline-body">
										<p>like a gift</p>
										<img src="img/1998.jpg" data-src="holder.js/300x300" alt="...">
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
									<p>email: <a> hm123@nyu.com </a></p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="blockquote-box blockquote-info clearfix">
									<div class="square pull-left">
										<span class="glyphicon glyphicon-info-sign glyphicon-lg"></span>
									</div>
									<h4>YiYi</h4>
									<p>personal page: <a> www.facebook.com </a></p>
									<p>email: <a> hm123@nyu.com </a></p>
								</div>
								<div class="blockquote-box blockquote-warning clearfix">
									<div class="square pull-left">
										<span class="glyphicon glyphicon-warning-sign glyphicon-lg"></span>
									</div>
									<h4>erer</h4>
									<p>personal page: <a> www.facebook.com </a></p>
									<p>email: <a> hm123@nyu.com </a></p>
								</div>
								<div class="blockquote-box blockquote-danger clearfix">
									<div class="square pull-left">
										<span class="glyphicon glyphicon-record glyphicon-lg"></span>
									</div>
									<h4>heihei</h4>
									<p>personal page: <a> www.facebook.com </a></p>
									<p>email: <a> hm123@nyu.com </a></p>
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
</body>
</html>