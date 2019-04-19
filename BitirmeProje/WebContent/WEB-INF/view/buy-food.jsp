<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
		<!-- Owl Carousel -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" />
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.default.css" />

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
		 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>

		
		<style>
		#myDIV {
		}
		
		p.ex1 {
		  margin-left: 30px;
		}
		
		button.b1{
			class: btn btn-info;
			back-color: blue;
		}
		</style>
		

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
  	 </div>
  	
			<table class="table table-striped" id="myTable2">
			
				<tr>
					<th>Advert Owner</th>
					<th>Food Name</th>
					<th>Cost</th>
					<th>Available Portions</th>
					<th>Choose Portions</th>
				</tr>
				<tbody id="myTableBody2">
				<c:forEach var="tempAdvert" items="${adverts}">
					<tr>
						<td>${tempAdvert.name}</td>
						<td>${tempAdvert.foodName}</td>
						<td>${tempAdvert.cost} TL</td>
						<td>${tempAdvert.portion}</td>
						
						<form:form action="${pageContext.request.contextPath}/orderIt?idAdvert=${tempAdvert.idAdvert}&foodName=${tempAdvert.foodName}&advertOwner=${tempAdvert.name}&portion=${tempAdvert.portion}">
								
						<td>
							<select name="number">
								  <option value="1">1</option>
								  <option value="2">2</option>
								  <option value="3">3</option>
								  <option value="4">4</option>
								  <option value="5">5</option>
								  <option value="6">6</option>
								  <option value="7">7</option>
								  <option value="8">8</option>
								  <option value="9">9</option>
								  <option value="10">10</option>
								</select>			
								<button class="b1" onclick="if(!(confirm('Siparis vermek istediğinize emin misiniz?'))) return false;" type="submit">Siparis Ver</button>
													
						</td>
						</form:form>
					</tr>
				</c:forEach>
				</tbody>
			</table>	 
<div class="col-md-12 text-center">
      <ul class="pagination pagination-lg pager" id="myPager2"></ul>
      </div>
   <div>
    <div class="header">Your Orders
   </div>
   
			<table class="table table-striped" id="myTable">
				<tr>
					<th>Advert Owner</th>
					<th>Food Name</th>
					<th>Point</th>
					<th>Portions</th>
					<th>Distance</th>
					<th>Select Points</th>
					<th></th>
				</tr>
				<tbody id="myTableBody">
				<c:forEach var="tempOrder" items="${orders}">
					<tr>
						<td>${tempOrder.advertOwner}</td>
						<td>${tempOrder.foodName}</td>
						<td>${tempOrder.point}</td>
						<td>${tempOrder.portion}</td>
						<td>???</td>
						<td><form:form action="${pageContext.request.contextPath}/pointIt?idOrder=${tempOrder.idOrder}&point=${tempOrder.point}">
								
							<select name="points">
								  <option value="0">0</option>
								  <option value="1">1</option>
								  <option value="2">2</option>
								  <option value="3">3</option>
								  <option value="4">4</option>
								  <option value="5">5</option>
								  <option value="6">6</option>
								  <option value="7">7</option>
								  <option value="8">8</option>
								  <option value="9">9</option>
								  <option value="10">10</option>
								</select>						
						
								<button class="b1" type="submit">Puanla&nbsp;</button>
						<td>
												
							 	<a class="btn btn-info" onclick="openForm()" href="${pageContext.request.contextPath}/contact?idOrder=${tempOrder.idOrder}">İletişim</a>
							 	
						</td>
						</form:form></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			
		<div class="col-md-12 text-center">
      <ul class="pagination pagination-lg pager" id="myPager"></ul>
      </div>
		   
   	<div class="form-popup" id="myForm">
   		<div class="header">Contact Information
   		</div>
   		<table class="table table-striped" >
				<tr>
					<th>Advert Owner</th>
					<td>${user.name }</td>
				</tr>
				
				<tr>
					<th>Telephone</th>
					<td>${user.phone }</td>
				</tr>
				
				<tr>
					<th>City</th>
					<td>${user.city }</td>
				</tr>
				
				<tr>
					<th>Address</th>
					<td>${user.address }</td>
				</tr>
			</table>
			<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
   		</div>
			
		
			
   </div>
</div>

   
   
   
   
  

  

       
		

		
<!-- Footer -->
		 

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
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/buy.js"></script>
		
	</body>
</html>
