
<html>
<head>
<title>Mini store</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Barter Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Maven+Pro:400,500,700,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>


</head>
	
<body>
     <script>
        window.history.forward();
        </script>
     <% if(session.getAttribute("logid")==null)
     {
         response.sendRedirect("loginn.html");
     }else{
     %>
	<div class="header" id="ban">
		<div class="container">
			<div class="w3l_social_icons">	
			</div>
			<div class="w3ls_logo">
				<h1><a href="index.html">MINI STORE</a></h1>
			</div>
			<div class="header_right">
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>

				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav class="link-effect-7" id="link-effect-7">
						<ul class="nav navbar-nav">
                                                    <li class="active act"><a href="AccountantHome.jsp" data-hover="AccountantHome">AccountantHome</a></li>
                                                    <li><a href="stockReport.jsp" data-hover="Stock Reports">Stock Reports</a></li>
                                                    <li><a href="SalesReports.jsp" data-hover="Sales Reports">Sales Reports</a></li>
                                                    <li><a href="PurchaseReports.jsp" data-hover="Purchase Reports">Purchase Reports</a></li>
                                                    <li><a href="LogOut.jsp" data-hover="Log Out">Log Out</a></li>
							
						</ul>
					</nav>
				</div>
			</nav>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>


	<div class="banner">
		<div class="container">
			<div class="wthree_banner_info">
				<section class="slider">
				
				</section>
							<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
							<script defer src="js/jquery.flexslider.js"></script>
							<script type="text/javascript">
							$(window).load(function(){
							  $('.flexslider').flexslider({
								animation: "slide",
								start: function(slider){
								  $('body').removeClass('loading');
								}
							  });
							});
						  </script>
			</div>
		</div>
	</div>

		<div class="container">
			<div class="w3agile_footer_grids">
			  <div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
			<div class="copy-right">
				<p>MINI STORE</p>
			</div>
			<div class="copy-right-social1">
				<div class="w3l_social_icons w3l_social_icons1">
					
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>

	<script src="js/bootstrap.js"></script>
        <%}%>
</body>
</html>