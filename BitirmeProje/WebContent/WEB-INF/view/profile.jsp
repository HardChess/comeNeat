<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
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
				<li><a onclick = "location.href='${pageContext.request.contextPath}/profile'"><i class="fa fa-user"></i></a></li>
				<li>Hello ${user.name},</li>
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
	<br>
	<br>
	<br>
	<br>
	<div class="table-users3">
	     
	    <div class="row">
	   
	  		<div class="col-sm-3"><!--left col-->
	  		
	          <div class="panel panel-default">
	            <div class="panel-heading">Full Name <i class="fa fa-link fa-1x"></i></div>
	            <div class="panel-body"><a href="http://bootnipets.com">bootnipets.com</a></div>
	          </div>
	          
	          
	          <ul class="list-group">
	            <li class="list-group-item text-muted">User Informations <i class="fa fa-dashboard fa-1x"></i></li>
	            <li class="list-group-item text-right"><span class="pull-left"><strong>Grade</strong></span>${user.avgPoint }</li>
	            <li class="list-group-item text-right"><span class="pull-left"><strong>Meals Sold</strong></span>${soldCount }</li>
	            <li class="list-group-item text-right"><span class="pull-left"><strong>Meals Bought</strong></span>${boughtCount }</li>
	           
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
	                <li><a data-toggle="tab" href="#messages">Harita</a></li>
	              </ul>
	
	        
	              
	          <div class="tab-content">
	            <div class="tab-pane active" id="home">
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
	                              <label for="password"><h4>Sifre</h4></label>
	                              <form:input type="text" class="form-control" path="password"></form:input>
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
	                    	 		<label for="city"><h4>Şehir</h4></label>
									<form:select class="form-control" path="city">
										<form:options items="${citesList}" />
									</form:select>
							</div>
						</div>
						
	                      <div class="form-group">
	                           <div class="col-xs-12">
	                                <br>
	                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Kaydet</button>
	                            </div>
	                      </div>
	              	</form:form>
	              
	              
	             </div><!--/tab-pane-->
	             <div class="tab-pane" id="messages">
	              <form:form action="${pageContext.request.contextPath}/longSuccess" modelAttribute="user" method="POST">
	                   <form:hidden path="idUser" value="${cookieID.idUser.value}"/>
	               <input id="pac-input" class="controls" type="text" placeholder="Search Box">   
	               <div id="map"></div>
	               <div onload="longFunct()">
	               <div class="form-group">
	                          
	                          <div class="col-xs-6">
	                              <label for="name"><h4>Enlem: <span id="latitude"></h4></label>
	                              <form:input id="myField2" type="text" class="form-control" path="locationLat"></form:input>
	                          </div>
	                      </div>
	                      
	                      <div class="form-group">
	                          
	                          <div class="col-xs-6">
	                            <label for="phone"><h4>Boylam: <span id="longitude"></span></h4></label>
	                              <form:input id="myField1" type="text" class="form-control" path="locationLang"></form:input>
	                          </div>
	                      </div>

	                 <div class="form-group">
	                           <div class="col-xs-12">
	                                <br>
	                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Kaydet</button>
	                            </div>
	                      </div>
	               </div>
	               </form:form>
	             </div><!--/tab-pane-->
	             <div class="tab-pane" id="settings">
	            		
	               	
	              </div>
	               
	              </div><!--/tab-pane-->
	          </div><!--/tab-content-->
	
	        </div><!--/col-9-->
    </div><!--/row-->
    
    <hr>
    <!-- Footer -->
		<%@ include file="footer.jsp" %> 
		<script>
		// Initialize and add the map
		function initAutocomplete() {
		        var map = new google.maps.Map(document.getElementById('map'), {
		          center: {lat: 40.773075, lng: 30.394817},
		          zoom: 13,
		          mapTypeId: 'roadmap'
		        });
		        google.maps.event.addListener(map, 'click', function(event) {
		        	var latit = event.latLng.lat();
		        	var longit = event.latLng.lng();
		        	document.getElementById("longitude").innerHTML = longit;
		        	document.getElementById("latitude").innerHTML = latit;
		        	document.getElementById('myField1').value = longit;
		        	document.getElementById('myField2').value = latit;
		        	alert("Konum isaretlendi. Lutfen kaydet butonuna basin.");
		        	});
		        
		     // Create the search box and link it to the UI element.
		        var input = document.getElementById('pac-input');
		        var searchBox = new google.maps.places.SearchBox(input);
		        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

		        // Bias the SearchBox results towards current map's viewport.
		        map.addListener('bounds_changed', function() {
		          searchBox.setBounds(map.getBounds());
		        });
		        
		        var markers = [];
		        // Listen for the event fired when the user selects a prediction and retrieve
		        // more details for that place.
		        searchBox.addListener('places_changed', function() {
		          var places = searchBox.getPlaces();

		          if (places.length == 0) {
		            return;
		          }

		          // Clear out the old markers.
		          markers.forEach(function(marker) {
		            marker.setMap(null);
		          });
		          markers = [];

		          // For each place, get the icon, name and location.
		          var bounds = new google.maps.LatLngBounds();
		          places.forEach(function(place) {
		            if (!place.geometry) {
		              console.log("Returned place contains no geometry");
		              return;
		            }
		            var icon = {
		              url: place.icon,
		              size: new google.maps.Size(71, 71),
		              origin: new google.maps.Point(0, 0),
		              anchor: new google.maps.Point(17, 34),
		              scaledSize: new google.maps.Size(25, 25)
		            };

		         // Create a marker for each place.
		            markers.push(new google.maps.Marker({
		              map: map,
		              icon: icon,
		              title: place.name,
		              position: place.geometry.location
		            }));

		            if (place.geometry.viewport) {
		              // Only geocodes have viewport.
		              bounds.union(place.geometry.viewport);
		            } else {
		              bounds.extend(place.geometry.location);
		            }
		          });
		          map.fitBounds(bounds);
		        });
		      }
    </script>
    <!--Load the API from the specified URL
    * The async attribute allows the browser to render the page while the API loads
    * The key parameter will contain your own API key (which is not needed for this tutorial)
    * The callback parameter executes the initMap() function
    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDLIoj5VIC8BXewXjwM2mtfrjMWcFm-ZEY&libraries=places&callback=initAutocomplete"
         async defer></script>
	</body>         
</html>