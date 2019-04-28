
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<title>Amrita Stores</title>
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
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
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
				<h1><a href="index.html">Mini Stores</a></h1>
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
<script>
        function getTotalprice(){
	var itemid=document.getElementById("itemid").value;
        var itemno=document.getElementById("i").value;
        
	if(window.XMLHttpRequest){
	  		xmlhttp=new XMLHttpRequest();
	}else{
	  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function(){
			  if (xmlhttp.readyState==4 && xmlhttp.status==200){
				  
					document.getElementById("price").innerHTML=xmlhttp.responseText;
			  }
	}
	xmlhttp.open("GET","GetPrice.jsp?itemid="+itemid+"&itemno="+itemno,true);
	xmlhttp.send();
}
    </script>
<div style="height: 40px">
    
    
</div>

<div class="container">
   <h1 style="margin-left: 400px">  Billing Module </h1>
 <div style="height: 40px"></div>
    <form class="form-horizontal" action="BillGenerationAction.jsp"  method="POST">
<fieldset>
<% int o=(Integer)session.getAttribute("bid");%>
<div class="form-group">
  <label class="col-md-4 control-label" for="textinput">Choose Bill Id</label>  
  <div class="col-md-4">
 <select class="form-control input-md" name="billid">
       <option value="<%=o%>"><%=o%></option>
 </select>  
  </div>
</div>
  <div class="form-group">
  <label class="col-md-4 control-label" for="itemname">Choose Item </label>  
  <div class="col-md-4">
 <select class="form-control input-md" name="itemid" id="itemid">
     <%
                                           String sql1="select * from item";
                                             ResultSet rs1=obj.Retrievedata(sql1);
                                          int sval=0;
                                          float price=0;
                                             while(rs1.next()){
                                                 int id=rs1.getInt("itemid");
                                                 String iname=rs1.getString("itemname");
                                                 sval=rs1.getInt("stockval");
                                                 price=rs1.getFloat("price");
                                                 
     %>
     <option value="<%=id%>"><%=iname%></option>
<%}%>
 </select>  
  </div>
 
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="textinput" id="itemno"> No. Of Items</label>  
   <div class="col-md-4">
  <input  name="itemno" id="i" type="text" placeholder="Number Of Items" class="form-control input-md" required>
    
  </div>
    
  </div>
<div class="form-group">
  <label class="col-md-4 control-label" for="tprice" id="tprice"> Total Price</label>  
   <div class="col-md-4" id="price">
       <input id="textinput" name="tprice" placeholder="Click to View Total price" onclick="getTotalprice()"   type="text"  class="form-control input-md" required>
    
  </div>
    
  </div>
<div class="form-group">
  <label class="col-md-4 control-label" for="bdate">Bill Date</label>  
   <div class="col-md-4">
  <input id="textinput" name="bdate" type="date"  class="form-control input-md" required>
    
  </div>
    
  </div>



 <div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
  <input type="submit" class="btn btn-primary" value="Generate Bill" >
  <input type="submit" class="btn btn-primary" value="FINISH" onclick="location.href='AddBill.jsp'">
  </div>
</div>



<div>

</form>
 </fieldset>
</div>
	
			<div class="copy-right">
				<p>ASAS STORE @ 2017 </p>
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