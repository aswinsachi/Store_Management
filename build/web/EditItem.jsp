
<%@page import="java.sql.ResultSet"%>
<html>
<head>
    <jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
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
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
</head>
	
<body>
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
				<h1><a href="index.html">STARBUCKS STORES</a></h1>
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
                                                        <li><a href="OrderDetails.jsp" data-hover="Purchase Details">Purchase Details</a></li>
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
<div style="height: 40px">
    
    
</div>
 <%
                                                
                                         int itemid=Integer.parseInt(request.getParameter("itemid"));
                                          String sql="select * from item where itemid='"+itemid+"'";
                                             ResultSet rs=obj.Retrievedata(sql);

                                             while(rs.next()){
                                                 
                                                 String itemcode=rs.getString("itemcode");
                                                String itemname=rs.getString("itemname");
                                                 float price=rs.getFloat("price");
                                                 int minlevel=rs.getInt("minlevel");
                                               int sval=rs.getInt("stockval");
                                                %>
<h1 style="margin-left: 400px">  Edit Items </h1>
 <div style="height: 40px"></div>
<div class="container">
    <form class="form-horizontal" action="EditAction.jsp"  method="POST">
<fieldset>



<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Item Code</label>  
  <div class="col-md-4">
      <input id="textinput" name="itemcode" type="text" value="<%=itemcode%>" class="form-control input-md" required>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Item Name</label>  
  <div class="col-md-4">
  <input id="textinput" name="itemname" type="text"  value="<%=itemname%>"  class="form-control input-md" required>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput"> Price</label>  
   <div class="col-md-4">
  <input id="textinput" name="price" type="text"  value="<%=price%>" class="form-control input-md" required>
    
  </div>
    
  </div>
  <div class="form-group">
  <label class="col-md-4 control-label" for="textinput"> Current Stock</label>  
   <div class="col-md-4">
  <input id="textinput" name="sval" type="text"  value="<%=sval%>" class="form-control input-md" required>
    
  </div>
    
  </div>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Item Minimal level</label>  
  <div class="col-md-4">
  <input id="textinput" name="minlevel" type="text"  value="<%=minlevel%>" class="form-control input-md" required>
  <input type="hidden"  value="<%=itemid%>" name="itemid" >
  </div>
</div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
  <input type="submit" class="btn btn-primary" value="Update" >
  </div>
</div>

</fieldset>
</form>
<div>
<%}%>


	
			<div class="copy-right">
				<p>ASAS STORE @ 2017</p>
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