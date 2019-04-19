<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>

		<!-- Owl Carousel -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" />
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.css" />
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
					<a href="${pageContext.request.contextPath}/choice"><img src="${pageContext.request.contextPath}/resources/img/logo.jpeg" alt="logo"></a>
				</div>
				<!-- logo -->

				<!-- Mobile toggle -->
				<button class="navbar-toggle">
					<span></span>
				</button>
				<!-- Mobile toggle -->

				<!-- social links -->
				<ul class="social-nav">
				<li><a onclick = "location.href='${pageContext.request.contextPath}/profile'"><i class="fa fa-user"></i></a></li>
				<li>Merhaba ${cookie.name.value}</li>
				<a onclick = "location.href='${pageContext.request.contextPath}/logout'">Logout</a>
				<!-- login form -->
				
<!-- end login form -->
<a href="${pageContext.request.contextPath}/logout">
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
						<li><a href="#"><i class="fa fa-map-marker"></i>Pestalozzistrasse 39.</a></li>
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
	<br>
	<br>			

   <div class="table-users">
<div>
<div class="header">Your Adverts
</div>
 		<table class="table table-striped" id="myTable2">
 			<tr>
 			<th>Food Name</th>
 			<th>Cost</th>
 			<th>Portion</th>
 			<th>Orders</th>
 			<th>Action</th>
 			</tr> 
 			
 			<!-- loop over and print adverts -->
 			<tbody id="myTableBody2">
 			<c:forEach var="tempAdvert" items="${adverts}">
 			  
 				<!-- construct a delete link -->
 				<c:url var="deleteLink" value ="/delete">
 				<c:param name="idAdvert" value="${tempAdvert.idAdvert}"/>
 				</c:url>
 				<tr>
   					<td>${tempAdvert.foodName}</td>
 					<td>${tempAdvert.cost}</td>
 					<td>${tempAdvert.portion}</td>
 					
 					<td>
 					<!-- display the update link -->
 					<a class="btn btn-info" href="${pageContext.request.contextPath}/showAdvertOrders?idAdvert=${tempAdvert.idAdvert}">Show</a>
 					
 					</td>
 					<td>
 					<a class="btn btn-warning" href="${pageContext.request.contextPath}/showFormForUpdate?idAdvert=${tempAdvert.idAdvert}">Update</a>
 					
 					<a class="btn btn-danger" href="${deleteLink}"
 					onclick="if(!(confirm('Are you sure you want to delete this advert ?'))) return false">Delete</a>
 					</td>
 				</tr>
 			</c:forEach>
 			</tbody>
 		</table>
 		<div class="col-md-12 text-center">
      <ul class="pagination pagination-lg pager" id="myPager2"></ul>
      </div>
 	</div>
 	
 		<div class="header">Your Advert's Orders
</div>
 	
 	<div>
 		<table class="table table-striped" id="myTable">
 			<tr>
 			<th>Order Owner</th>
 			<th>Food Name</th>
 			<th>Portion</th>
 			<th>Point</th>
 			</tr> 
 			
 			<!-- loop over and print adverts -->
 			<tbody id="myTableBody">
 			<c:forEach var="tempOrder" items="${orders}">
 				<tr>
   					<td>${tempOrder.orderOwner}</td>
 					<td>${tempOrder.foodName}</td>
 					<td>${tempOrder.portion}</td>
 					<td>${tempOrder.point}</td>
 				</tr>
 				
 			</c:forEach>
 			</tbody>
 		</table>
 	</div>
 	<div class="col-md-12 text-center">
      <ul class="pagination pagination-lg pager" id="myPager"></ul>
      </div>
 	   <div class="header">Sell Your Meal
</div>

<div>
    <form:form action="saveAdvert" modelAttribute="advert" method="POST">
    <form:hidden path="idUser" value="${cookieID.idUser.value}"/>
    <form:hidden path="idAdvert"/>

   <table class="table table-striped">
   
      <tr>
         <th>Write a name for the meal</th>
         <th>Available portions</th>
         <th>Set Price</th>
         <th></th>
         
      </tr>

      <tr>
       
         
         
         <td><form:input path="foodName"/></td>
         <td><form:input path="portion"/></td>
        <td><form:input path="cost"/></td>
         <td>
         <input class="btn btn-warning" type="submit" value="Sell">
         </td>	
      </tr>
 
   </table>
</form:form>
</div>
 	</div>

 
	
	
<!-- Footer -->
		<footer id="footer">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					<!-- copyright -->
					<div class="col-md-6">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<span class="copyright">ComeNeat @2019 All rights reserved |</span>
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/buy.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/google-map.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/main.js"></script>
		
	</body>
</html>
