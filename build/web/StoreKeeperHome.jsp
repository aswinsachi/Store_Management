
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
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


<style>
.banner0{
	
	background-size:cover;
	height: 100px;
	padding-top:14em;
	text-align:center;
        margin-left: -100px;
}</style>
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
                                                         <li class="active act"><a href="StoreKeeperHome.jsp" data-hover="SK Home">SK Home</a></li>
                                                        <li><a href="AddItems.jsp" data-hover="Add Stock">Add Stock</a></li>
							<li><a href="stock.jsp" data-hover="Manage Stock">Manage Stock</a></li>
                                                        <li><a href="AddOrder.jsp" data-hover="Place Order">Place Order</a></li>
                                                         <li><a href="OrderDetails.jsp" data-hover="Order Details">Order Details</a></li>
                                                         <li><a href="purchasedetails.jsp" data-hover="Purchase Details">Purchase Details</a></li>
                                                         <li><a href="AddBill.jsp" data-hover="Bill">Bill</a></li>
                                                         <li><a href="LogOut.jsp" data-hover="Logout">Logout</a></li>			
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
                  <%  
                       String sql="select * from item where stockval<minlevel";
                      ResultSet rs=obj.Retrievedata(sql);
                      if(!rs.isBeforeFirst())
                      {
                          %>
                  
         <!--    <marquee direction="right" scrollamount="12"  style="color: blue;font-size: 40;font-style: italic;">Amrita Stores.....</marquee>   -->    
                    <%
                      }else{
                  %>
                    <div class="banner0">
<p style="color: #FFFFFF; margin-top: -233px; font-family: 'Dosis-Bold';font-weight: 100px;font-size: 1.2em;color: #FFFFFF rgb(255, 0, 5);
margin-top: -235px;margin-left: 448px;
width: 456px;
background: #333 none repeat scroll 0% 0% / cover;">OUT OF STOCK ALERTS</p>
<div style="    width: 456px;height: 201px; border: 1px solid rgb(51, 51, 51); margin-left: 448px; box-shadow: -4px 0px 19px -1px rgb(9, 9, 9);
background: rgb(51, 51, 51) none repeat scroll 0% 0% / cover;}">
  <marquee direction="up" scrollamount="5" style="text-align: center;" >  <%
        while(rs.next())
        {String b=rs.getString("itemname");
        String c=rs.getString("itemcode");
        int d=rs.getInt("stockval");
        
    %>
    <p style="color: white;font-size: 2em;">ItemName : <%=b%></p><p style="color: white;font-size: 1em">ItemCode : <%=c%></p><p style="color: white">Available Stock : <%=d%></p>
    <p>____________________</p><%}}%>
</marquee></div>
</div>
			
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
	
        
			<div class="copy-right">
                            <center> <p>MINI STORE</p></center>
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