
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
</head>
	
<body>
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
	xmlhttp.open("GET","GetSales.jsp?key="+str,true);
	xmlhttp.send();
}
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
<div style="height: 40px">
    
    
</div>

<div class="container">
     <h1 style="margin-left: 400px">  Bill  Reports</h1>
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
                                                             <th>BILL NO.</th>
                                                             <th>ITEM NO.</th>
                                                              <th>BILL DATE</th>
                                       <th>ITEM CODE</th>
                                   <th>ITEM NAME</th>
                                  <th>PRICE</th>
                                  <th>NO. ITEMS</th>
                                     <th>TOTAL AMOUNT</th> 
                       </tr>
						
							
					
					</thead>
                                        
                                                                         <%
                                                
                                            
                                             String sql="select * from billing as b join item as i where i.itemid=b.itemid";
                                             ResultSet rs=obj.Retrievedata(sql);

                                             while(rs.next()){
                                                 int itemid=rs.getInt("itemid");
                                                 String itemcode=rs.getString("itemcode");
                                                String itemname=rs.getString("itemname");
                                                 float price=rs.getFloat("price");
                                                 int minlevel=rs.getInt("minlevel");
                                                 int billid=rs.getInt("idbill");
                                                 float tot=rs.getFloat("totprice");
                                                 String bdate=rs.getString("billdate");
                                                 int noi=rs.getInt("no_items");
                                                 int bid=rs.getInt("billid");
                                                %>
					<tbody>
                                            <tr>
                                                 <td><%=bid%></td>
                                                <td><%=billid%>
                                                </td>
                                                <td><%=bdate%></td>
                                                    <td>
                                                        
                                                        <%=itemcode%></td>
                                           <td><%=itemname%></td>
                                <td><%=price%></td>
                                <td><%=noi%></td>
                                <td><%=tot%></td>                             
                        </tr>

                                                
					</tbody>
                                
                                        <%
                                             }
                                        
                                        %>
                                        
				</table>
</div>



	
			<div class="copy-right">
                            <center> <p>STARBUCKS  </p> </center>
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