<html lang="en">
<head>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
 

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



<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});
</script>
</head>

<body style="background-image:url('file:///D|/sajna/stock market/images/back.jpg'); background-size: cover;">
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
							<li class="active act"><a href="index.html" data-hover="Home">Home</a></li>
                                                      <li><a href="about.html" data-hover="About US">About US</a></li>
							<li><a href="gallery.html" data-hover="Gallery">Gallery</a></li>
                                                        <li><a href="contactus.html" data-hover="Contact US">Contact US</a></li>
                                                        <li><a href="loginn.html" data-hover="Login">Login</a></li>
                                                        <li><a href="vendorLogin.jsp" data-hover="VendorLogin">VendorLogin</a></li>
                                                        
							
						</ul>
					</nav>
				</div>
			</nav>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<div class="container">
    
    	<div class="row">
            
            
            
        </div>
    
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login" style="border-color: #ccc; -webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);oz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);margin-top: 50px;">
					<div class="panel-heading">
                                            	<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Register</a>
                                                               
							</div>
                                                    
						</div>
						<hr>
					</div>
                                    
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
                                                           
                                                            <form id="login-form" action="VendorLoginAction.jsp" method="post" role="form" style="display: block;">
									<div class="form-group">
                                                                             <label class="col-md-4 control-label" for="textinput">Username</label>
                                                                            <input type="text" name="username" id="username" required="" tabindex="1" class="form-control"  value="">
									</div>
									<div class="form-group">
                                                                             <label class="col-md-4 control-label" for="textinput">Password</label>
										<input type="password" name="password" required="" id="password" tabindex="2" class="form-control" >
									</div>
                                                                
									
                                                                
                                                                <div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember"> Remember Me</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In" style="background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
												</div>
											</div>
										</div>
									</div>
								</form>
                                                            <script>
                                                            <script>
    function validate()
    {
        var fname=document.getElementById("fname").value;
                    var email=document.getElementById("email").value;
                    var mob=document.getElementById("phone").value;  
                    var uname=document.getElementById("uname").value; 
                    var password=document.getElementById("upass").value;
                     var cpwd=document.getElementById("cpwd").value;
                        
                    var flag=0;
                    	



                   
                     var reg = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
                    if(fname===null||fname==="")
                        {
                            flag=1;
                            document.getElementById("fname").focus();
                            alert("Please enter Firstname");
                        }
                          if(email===null||email==="")
                        {
                            flag=1;
                            document.getElementById("email").focus();
                            alert("Please enter email");
                        }
                         if(mob===null||mob==="")
                        {
                            flag=1;
                            document.getElementById("phone").focus();
                            alert("Please enter mobile number");
                        }
                        if(uname===null||uname==="")
                        {
                            flag=1;
                            document.getElementById("uname").focus();
                            alert("Please enter Username");
                        }
                        if(password===null||password==="")
                        {
                            flag=1;
                            document.getElementById("upass").focus();
                            alert("Please enter password");
                        }
                         if(cpwd===null||cpwd==="")
                        {
                            flag=1;
                            document.getElementById("cpwd").focus();
                            alert("Please enter Confirm Password");
                        }
                        
                        
                        if (!reg.test(email)) {
                        flag=1;
                        alert("Please enter a valid e-mail address ");
                    }
                
                    if(mob.match('[^0-9]'))
                        {
                            flag=1;
                            document.getElementById("phone").focus();
                            alert("Insert a valid Mobile Number");
                        }
                        if(mob.length!==10)
                        {
                            flag=1;
                            document.getElementById("phone").focus();
                            alert("Insert a valid Mobile Number");
                        }
                       
                  
                 
                    if(cpwd!==password)
                        {
                            flag=1;
                            document.getElementById("cpwd").focus();
                            alert("Re-Enter the Password");
                        }
                          
                   if(flag===0)
                    {
                        document.reg.submit();
                    }
                  else
                    {
                        document.reg.clear();
                    }
    }
</script>
<form id="register-form" name="reg" action="VendorregistrationAction.jsp" method="post" role="form" style="display: none;">
                                                                    <div class="form-group">
                                                                         <label class="col-md-4 control-label" for="textinput">Full Name</label>
                                                                        <input type="text" required="" name="fname" id="fname" tabindex="1" class="form-control"  value="">
									</div>
                                                                    
									<div class="form-group">
                                                                                  <label class="col-md-4 control-label" for="textinput">Username</label>
										<input type="text" required="" name="username" id="uname" tabindex="1" class="form-control"  value="">
									</div>
									
									<div class="form-group">
                                                                                 <label class="col-md-4 control-label" for="textinput">Password</label>
										<input type="password" required="" name="password" id="upass" tabindex="2" class="form-control">
									</div>
									<div class="form-group">
                                                                               <label class="col-md-4 control-label" for="textinput">Confirm Password</label>
                                                                            <input type="password" required="" name="cpwd" id="cpwd" tabindex="2" class="form-control" >
									</div>
                                                                    <div class="form-group">
                                                                                 <label class="col-md-4 control-label" for="textinput">Email Address</label>
										<input type="email" required="" name="email" id="email" tabindex="1" class="form-control"  >
									</div>
                                                                      <div class="form-group">
                                                                                 <label class="col-md-4 control-label" for="textinput">Phone Number</label>
										<input type="text" required="" name="phone" id="phone" tabindex="1" class="form-control"  >
								         </div>
    
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
                                                                                            <input type="submit" name="register-submit"  id="register-submit"  onclick="validate()" tabindex="4" class="form-control btn btn-register" value="Register Now" style="background-color: #1CB94E;outline: none;color: #fff;font-size: 14px;height: auto;font-weight: normal;padding: 14px 0;text-transform: uppercase;border-color: #1CB94A;">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
</body>
</html>