<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>ComeNeat</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Quicksand:400,700%7CCabin:400%7CDancing+Script" rel="stylesheet">
		<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

		
		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		
		<!-- Owl Carousel -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" />
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.css" />

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	
    </head>
	<body>

		<!-- Header -->
		<header id="header">

			<!-- Top nav -->
			<div id="top-nav">
				<div class="container">

				<!-- logo -->
				<div class="logo">
					<a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/img/logo.jpeg" alt="logo"></a>
				</div>
				<!-- logo -->

				<!-- Mobile toggle -->
				<button class="navbar-toggle">
					<span></span>
				</button>
				<!-- Mobile toggle -->
				
				<!-- social links -->
				<ul class="social-nav">
				<a href = "${pageContext.request.contextPath}/login"class="a-l">Login to Your Account</a> 
				
				<!-- After logging Popup -->

				
				
				<li><a onclick = "location.href='${pageContext.request.contextPath}/login'"><i class="fa fa-user"></i></a></li>
				<!-- login form -->
			
<!-- end login form -->
					
				</ul>
				<!-- /social links -->

				</div>
			</div>
			<!-- /Top nav -->

			


		</header>
		<!-- /Header -->

		<!-- Home -->
		<div id="home" class="banner-area">

			<!-- Backgound Image -->
			<div class="bg-image bg-parallax overlay" style="background-image:url(${pageContext.request.contextPath}/resources/img/background02.jpeg)"></div>
			<!-- /Backgound Image -->

			<div class="home-wrapper">

				<div class="col-md-10 col-md-offset-1 text-center">
					<div class="home-content">
						<h1 class="white-text">Welcome To ComeNeat</h1>
						<h4 class="white-text lead">The ultimate way to order home made food online</h4>
						<button onclick = "location.href='${pageContext.request.contextPath}/register'"class="main-button" id="showpopup">Sign up now!</button>
					
					</div>
				</div>

			</div>

		</div>
			<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="/action_page.php">
   
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      
      <label for="name"><b>Name</b></label>
      <input type="text" placeholder="Enter Complete Name" name="name" required>
      
      <label for="email"><b>username</b></label>
      <input type="text" placeholder="Enter Username" name="username" required>
     
      
      <label for="address"><b>Address</b></label>
      <input type="text" placeholder="Enter Address" name="address" required>
      
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
      
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label>

      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
    
  </form>
</div>
		<!-- /Home -->

		<!-- About -->
		<div id="about" class="section">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					<!-- section header -->
					<div class="section-header text-center">
					
						<h4 style="color:black">Hungry for more? Like us on Facebook. <a href="#" class="fa fa-facebook"></a></h4>
						
						
						<h2 class="title">318 people like this. Be the first of your friends.</h2>
					</div>
					<!-- /section header -->

					<!-- about content -->
					<div class="easy text-center">
						<h3 class="lead">How it works</h3>
						<h4>Easy as that!</h4>
					</div>
					<!-- /about content -->

					<!-- about content -->
					<div class="col-sm-12">
					<img class = "line" src="${pageContext.request.contextPath}/resources/img/img1.png">
					<img class = "line" src="${pageContext.request.contextPath}/resources/img/img2.png">
					<img class = "line" src="${pageContext.request.contextPath}/resources/img/step3.jpg">
					
					<h4 class="line2">Enter your location</h4>
					<h4 class="line2">Choose your meal</h4>
					<h4 class="line2">Go get it!</h4>
					<p class="line3">When connecting using your location a list of ready meals will show up in your map</p>
					<p class="line3">What do you fancy? Browse through countless menus and reviews.</p>
					<p class="line3">No time to waste, go get your meal, maybe it is even prepared by your neighbor!</p>
					</div>
					<!-- /about content -->

		


				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

		</div>
		<!-- /About -->


		<!-- Menu -->
		<div class="android">
			<center><img src="${pageContext.request.contextPath}/resources/img/phone.png" class="w3-round" alt="Norway"></center>
			<div class="top-left">Download the app</div>
			<div class="top-left2">Click, sit back and enjoy!</div>
			
		</div>
		
		
		
		
		<!-- /Menu -->

	<!-- /Reservation -->

		<!-- Events -->
		

			

					<!-- section header -->
					<div class="section-header text-center">
						<h4 class="sub-title">Want more?
Check out exciting news about food and lifestyle on our blog.
						</h4>
						<a class = "blog" href="http://www.google.com"">>Visit the blog</a>
					</div>
					<!-- /section header -->


					

				

		

		<!-- Contact -->
		<div id="contact" class="section">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					
						<div class="section-header text-center">
							<h4 class="sub-title">Contact Us</h4>
							<h2 class="title">Get In Touch</h2>
						</div>
						<div class="contact-content text-center">
							<p>You can contact us when something unusual happens while making the meal order, see here for more information</p>
							<h3>Tel: <a href="#">045-548-14-97</a></h3>
							<p>Email: <a href="#">ComeNeat@gmail.com</a></p>
							<ul class="list-inline">
								<li><p>Follow Us:</p></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					

				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

			

		</div>
		<!-- Contact -->

		<!-- Footer -->
		<footer id="footer">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					<!-- copyright -->
					<div class="col-md-6">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<span class="copyright">ComeNeat @2019 All rights reserved</span>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
					<!-- /copyright -->

					<!-- footer nav -->
					<div class="col-md-6">
						<nav class="footer-nav">
							<a href="#">Home</a>
							<a href="#">About</a>
							<a href="#">Menu</a>
							<a href="#">Reservation</a>
							<a href="#">Galery</a>
							<a href="#">Events</a>
							<a href="#">Contact</a>
						</nav>
					</div>
					<!-- /footer nav -->

				</div>
				<!-- /row -->

			</div>
			<!-- /container -->

		</footer>
		<!-- /Footer -->

		<!-- Preloader -->
		<div id="preloader">
			<div class="preloader">
				<span></span>
				<span></span>
				<span></span>
			</div>
		</div>
		<!-- /Preloader -->

		<!-- jQuery Plugins -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/main.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/form.js"></script>
		
		
	</body>
</html>
