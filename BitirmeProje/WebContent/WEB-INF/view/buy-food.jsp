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

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>

		<!-- Owl Carousel -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" />
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.css" />

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
					<a href="${pageContext.request.contextPath}/eat/choice"><img src="${pageContext.request.contextPath}/resources/img/logo.jpeg" alt="logo"></a>
				</div>
				<!-- logo -->

				<!-- Mobile toggle -->
				<button class="navbar-toggle">
					<span></span>
				</button>
				<!-- Mobile toggle -->
				
				<!-- social links -->
				<ul class="social-nav">
			<a class="nav-link" href="#">Hello, Hamza! <span class="sr-only">(current)</span></a>
				<li><a onclick = "location.href='${pageContext.request.contextPath}/account/profile'"><i class="fa fa-user"></i></a></li>
				<!-- login form -->
				
<!-- end login form -->
					<a href="#">
          <span class="glyphicon glyphicon-log-out"></span>
        </a>
				</ul>
				<!-- /social links -->

				</div>
			</div>
			<!-- /Top nav -->

			<!-- Bottom nav -->	
			<div id="bottom-nav">
				<div class="container">
				<nav id="nav">

					

					
					<!-- contact nav -->
					<ul class="contact-nav nav navbar-nav">
						<li><a href="#"><i class="fa fa-phone"></i> +905373541125</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> pestalozzistraße 39.</a></li>
					</ul>
					<!-- contact nav -->

				</nav>
				</div>
			</div>
			<!-- /Bottom nav -->


		</header>
		<!-- /Header -->

		<!-- Home -->
	
	<br>
	<br>
				

			<div class="table-users">
   <div class="header">Available meals
   <h3 style="width:25% ;text-decoration:underline">Add some filters</h3>
   </div>
   
   <table cellspacing="0">
      <tr>
         <th>Picture</th>
         <th>Name</th>
         <th>Available portions</th>
         <th>Price</th>
         <th>Distance</th>
         <th>Chef/Grade</th>
         <th>Order</th>
      </tr>

      <tr>
         <td><img src="${pageContext.request.contextPath}/resources/img/tortilla.jpg" alt="" /></td>
         <td>Spanish Tortilla</td>
         <td>5</td>
         <td>4€</td>
         <td>300m</td>
         <td>
         <div class="popups" onclick="myFunction()">Hamza
  <span class="popuptext" id="myPopups">Point : 7.8/10 - until now sold 20 meals.</span>
</div></td>
         <td><button>Add portion</button></td>
      </tr>

      <tr>
         <td><img src="${pageContext.request.contextPath}/resources/img/butter chicken.jpg" alt="" /></td>
         <td>Butter chicken</td>
         <td>2</td>
         <td>10€</td>
         <td>50m</td>
         <td>Amitap/9.2</td>
         <td><button>Add portion</button></td>
      </tr>

      <tr>
         <td><img src="${pageContext.request.contextPath}/resources/img/schnitzel.jpeg" alt="" /></td>
         <td>Schnitzel with potatoes</td>
         <td>1</td>
         <td>7€</td>
         <td>200m</td>
         <td> Jana/6.7</td>
         <td><button>Add portion</button></td>
      </tr>
      
      <tr>
         <td><img src="${pageContext.request.contextPath}/resources/img/carbonara.jpg" alt="" /></td>
         <td>Spaguetti alla carbonara</td>
         <td>1</td>
         <td>6.5€</td>
         <td>1km</td>
         <td>Federica/8.5</td>
         <td><button>Add portion</button></td>
      </tr>
   </table>
</div>
<br>
<h3 id="add-filter">You have chosen 4 portions of spanish tortilla, do you confirm the order?</h3>
		
		<!-- /Home -->

		<!-- About -->
		
		<!-- /About -->


		<!-- Menu -->

		<!-- /Menu -->

		<!-- Reservation -->
		<div id="reservation" class="section">

			<!-- Backgound Image -->
			<div class="bg-image" style="background-image:url(./img/background03.jpg)"></div>
			<!-- /Backgound Image -->

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

				

		
		

		<!-- Footer -->
		<footer id="footer">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					<!-- copyright -->
					<div class="col-md-6">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<span class="copyright">ComeNeat @2019 All rights reserved </span>
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/form.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/main.js"></script>
		
	</body>
</html>
