
<html>
<head>
<title>Mini Store</title>
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
      <% if(session.getAttribute("vendorid")==null)
     {
         response.sendRedirect("vendorLogin.jsp");
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
                                                    <li class="active act"><a href="VendorHome.jsp" data-hover="VendorHome">VendorHome</a></li>
                                                     <li><a href="ViewMail.jsp" data-hover="View Mail">View Mail</a></li>
                                                     <li><a href="VendorViewOrders.jsp" data-hover="View Orders">View Orders</a></li>
                                                     <li><a href="DeliveryDetails.jsp" data-hover="Delivery Details">Delivery Details</a></li>
                                                       
                                                     <li><a href="LogOut.jsp" data-hover="Log Out">Log Out</a></li>
							
						</ul>
					</nav>
				</div>
			</nav>
			</div>
                 
			<div class="clearfix"> </div>
		</div>
	</div>
  

	<div class="banneradmin">
		<div class="container">
			<div class="wthree_banner_info">
				<section class="slider">
					<div class="flexslider">
                                            <button onclick="win1=window.open();win1.location.href='https://accounts.google.com/ServiceLogin?service=mail&passive=true&rm=false&continue=https://mail.google.com/mail/&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1#identifier'"><img style="width: 300px;height: 100px;" src="images/butemail.png"></button>
						
				</section>
							
	<script src="js/bootstrap.js"></script>
        <%}%>
</body>
</html>