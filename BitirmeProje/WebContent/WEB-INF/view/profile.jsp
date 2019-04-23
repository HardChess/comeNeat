<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<head>
  <title>Profile Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
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
				<li>Hello ${cookie.name.value},</li>
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

					<h4>Contact the admin for any questions</h4>

					
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
	<hr>
	<div class="boot-container">
	     <div id="map"></div>
	    <div class="row">
	   
	  		<div class="col-sm-3"><!--left col-->
	              
			
	      
	
	               
	          <div class="panel panel-default">
	            <div class="panel-heading">Full Name <i class="fa fa-link fa-1x"></i></div>
	            <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
	          </div>
	          
	          
	          <ul class="list-group">
	            <li class="list-group-item text-muted">User Informations <i class="fa fa-dashboard fa-1x"></i></li>
	            <li class="list-group-item text-right"><span class="pull-left"><strong>Grade</strong></span> 7.4</li>
	            <li class="list-group-item text-right"><span class="pull-left"><strong>Meals Sold</strong></span> 2</li>
	            <li class="list-group-item text-right"><span class="pull-left"><strong>Meals Bought</strong></span> 30</li>
	           
	          </ul> 
	               
	          <div class="panel panel-default">
	            <div class="panel-heading">Social Media</div>
	            <div class="panel-body">
	            	<i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
	            </div>
	          </div>
	          
	        </div><!--/col-3-->
	    	<div class="col-sm-9">
	    	
	    	
	            <ul class="nav nav-tabs">
	                <li class="active"><a data-toggle="tab" href="#home">Kullanici Bilgileri</a></li>
	                
	              </ul>
	
	        
	              
	          <div class="tab-content">
	            <div class="tab-pane active" id="home">
	                <hr>
	                  <form:form action="updateUser" modelAttribute="user" method="POST">
	                   <form:hidden path="idUser" value="${cookieID.idUser.value}"/>
	                      <div class="form-group">
	                          
	                          <div class="col-xs-6">
	                              <label for="name"><h4>Isim</h4></label>
	                              <form:input type="text" class="form-control" path="name"></form:input>
	                          </div>
	                      </div>
	                      <div class="form-group">
	                          
	                          <div class="col-xs-6">
	                            <label for="phone"><h4>Telefon</h4></label>
	                              <form:input type="text" class="form-control" path="phone"></form:input>
	                          </div>
	                      </div>
	          	                     
	          	          <div class="form-group">
	                          
	                          <div class="col-xs-6">
	                            <label for="email"><h4>E-mail</h4></label>
	                              <form:input type="text" class="form-control" path="email"></form:input>
	                          </div>
	                      </div>
	                      <div class="form-group">
	                          
	                          <div class="col-xs-6">
	                              <label for="phone"><h4>City</h4></label>
	                              <form:input type="text" class="form-control" path="city"></form:input>
	                          </div>
	                      </div>
	          
	                     
	                      <div class="form-group">
	                          
	                          <div class="col-xs-6">
	                              <label for="address"><h4>Adres</h4></label>
	                              <form:input type="text" class="form-control" path="address"></form:input>
	                          </div>
	                      </div>

	                      <div class="form-group">
	                          
	                          <div class="col-xs-6">
	                              <label for="password"><h4>Sifre</h4></label>
	                              <form:input type="text" class="form-control" path="password"></form:input>
	                          </div>
	                      </div>

	                      <div class="form-group">
	                           <div class="col-xs-12">
	                                <br>
	                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Kaydet</button>
	                            </div>
	                      </div>
	              	</form:form>
	              
	              <hr>
	              
	             </div><!--/tab-pane-->
	             <div class="tab-pane" id="messages">
	               
	               <h2></h2>
	               
	               <hr>
	                 
	               
	             </div><!--/tab-pane-->
	             <div class="tab-pane" id="settings">
	            		
	               	
	                  <hr>
	                 
	              </div>
	               
	              </div><!--/tab-pane-->
	          </div><!--/tab-content-->
	
	        </div><!--/col-9-->
    </div><!--/row-->
    <!-- Footer -->
		<%@ include file="footer.jsp" %> 
		<script>
// Initialize and add the map
function initMap() {
  // The location of Uluru
  var uluru = {lat: -25.344, lng: 131.036};
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 4, center: uluru});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: uluru, map: map});
}
    </script>
    <!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
    -->
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBFnXezkTyKrlPDWHjOkJGRa99u6WVPq64&callback=initMap">
    </script>
	</body>         
</html>