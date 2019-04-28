
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<title>Starbucks Stores</title>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
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
<script>
        function GetData(str){
	
	var xmlhttp;    
	if (str==""){
		  return;
	}
	if(window.XMLHttpRequest){
	  		xmlhttp=new XMLHttpRequest();
	}else{
	  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function(){
			  if (xmlhttp.readyState==4 && xmlhttp.status==200){
				  
					document.getElementById("stock").innerHTML=xmlhttp.responseText;
			  }
	}
	xmlhttp.open("GET","GetStock.jsp?key="+str,true);
	xmlhttp.send();
}
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
<div style="height: 40px">
    
    
</div>

<div class="container">
    <div class="form-group">
  

</div>
     <h1 style="margin-left: 400px"> Manage Stock </h1>
   <div style="height: 40px"></div>
      <span><label for="name">Search</label></span>
     <div class="col-md-4">
         <input id="textinput" name="keyword" type="text" placeholder="Search" onkeyup="GetData(this.value)" class="form-control input-md" required>
    
  </div>
      <div style="height: 40px"></div>
      <div id="stock">
 <table border="1" class="table table-condensed"  style="border-collapse: separate;margin-left: 20px;column-width:100px">
					<thead>
					
							
							 <tr>
                                       <th>ITEM CODE</th>
                                   <th>ITEM NAME</th>
                                  <th>PRICE</th>
                                  <th>CURRENT STOCK</th>
                                  <th>MIN LEVEL</th>
                                    <th>Edit</th>
                                   <th>Delete</th>
                       </tr>
						
							
					
					</thead>
                                        
                                                                         <%
                                                
                                            
                                          String sql="select * from item";
                                             ResultSet rs=obj.Retrievedata(sql);

                                             while(rs.next()){
                                                 int itemid=rs.getInt("itemid");
                                                 String itemcode=rs.getString("itemcode");
                                                String itemname=rs.getString("itemname");
                                                 float price=rs.getFloat("price");
                                                 int minlevel=rs.getInt("minlevel");
                                                 int sval=rs.getInt("stockval");
                                                 
                                                %>
					<tbody>
						<tr>
                                                    <td>
                                                        <%=itemcode%></td>
                                           <td><%=itemname%></td>
                                <td><%=price%></td>
                                
                                <td><%=sval%></td>
                                <td><%=minlevel%></td>
                                <td><a href="EditItem.jsp?itemid=<%=itemid%>">Edit</td>                                
                                    <td><a href="RemoveItem.jsp?itemid=<%=itemid%>">Remove</td>
                                 
                              
                               
                                   
                        </tr>

                                                
					</tbody>
                                
                                        <%
                                             }
                                        
                                        %>
                                        
				</table></div>
</div>

                                        <div>
                        <div class="footer">
			<div class="copy-right">
                            <div>
                                &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;    <p>ASAS STORE @ 2017</p>
			</div>
			<div class="copy-right-social1">
				<div class="w3l_social_icons w3l_social_icons1">

				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
    </div></div>
	<script src="js/bootstrap.js"></script>

 
	
		
	<%}%>
</body>
</html>