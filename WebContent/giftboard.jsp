<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Gift Board</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="index.css" rel="stylesheet">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/waterfall.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<jsp:include page="navigation.jsp" />
	
	<div id="container" style="margin-top: 80px"></div>
	
	<jsp:include page="footer.jsp" />
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>

	<script type="text/x-handlebars-template" id="waterfall-tpl">
	{{#result}}
    <div class="item" style="width:222px">
        <img src="{{image}}" width="{{width}}" height="{{height}}" />
		<div class="caption">
				<h3>Gift name</h3>
				<p>.this is a food gift you can buy it at some store..</p>
				<p><a href="#" class="btn btn-info" role="button">View</a> <a href="#" class="btn btn-danger" role="button">Like</a>
				</p>
		</div>
    </div>
	{{/result}}
	</script>
	<script src="js/libs/jquery/jquery.js"></script>
	<script src="js/libs/handlebars/handlebars.js"></script>
	<script src="js/waterfall.min.js"></script>
	<script>
	
	$('#container').waterfall({
	    itemCls: 'item',
	    colWidth: 222,
	    gutterWidth: 15,
	    gutterHeight: 15,
	    fitWidth: false,
	    checkImagesLoaded: false,
	    path: function(page) {
	        return 'data/data5.json?page=' + page;
	    }
	});
	</script>
	<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-1245097-16']);
	_gaq.push(['_trackPageview']);
	_gaq.push(['_trackPageLoadTime']);
	(function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = 'https://ssl.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
	</script>
</body>
</html>