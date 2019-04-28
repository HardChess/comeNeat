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
				<a href = "${pageContext.request.contextPath}/login"class="a-l">Hesabıma Giriş Yap</a> 
				
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
						<h1 class="white-text">comeNeat'e Hoşgeldiniz	</h1>
						<h4 class="white-text lead">Yemek sipariş etmenin en pratik yolu</h4>
						<button onclick = "location.href='${pageContext.request.contextPath}/register'"class="main-button" id="showpopup">Hemen Kayıt Ol!</button>
					
					</div>
				</div>

			</div>

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
					
						<h4 style="color:black">Acıktın mı? Bizi Facebook'ta beğenebilirsin. <a href="#" class="fa fa-facebook"></a></h4>
						
						
						<h2 class="title">318 kişi sayfayı beğendi. Arkadaşların arasında ilk beğenen ol.</h2>
					</div>
					<!-- /section header -->

					<!-- about content -->
					<div class="easy text-center">
						<h3 class="lead">comeNeat Nasıl Çalışır?</h3>
						<h4>Bu kadar basit!</h4>
					</div>
					<!-- /about content -->

					<!-- about content -->
					<div class="col-sm-12">
					<img class = "line" src="${pageContext.request.contextPath}/resources/img/img1.png">
					<img class = "line" src="${pageContext.request.contextPath}/resources/img/img2.png">
					<img class = "line" src="${pageContext.request.contextPath}/resources/img/step3.jpg">
					
					<h4 class="line2">Kayıt ol ve konumunu seç</h4>
					<h4 class="line2">Yemeğini seç</h4>
					<h4 class="line2">Git ve al</h4>
					<p class="line3">Kayıt olduktan sonra profilinize haritadan konumunuzu seçersiniz. Ve sizin için en yakın ilanları listeleriz.</p>
					<p class="line3">Almak istediğin yemeği ve porsiyonu seçersiniz ve onaylarsınız. Veya satmak istediğiniz yemeği ilan verirsiniz.</p>
					<p class="line3">Sipariş verildikten sonra iletişim bilgilerine ulaşır ve yemeğinizi alırsınız. Belki de yemeğin sahibi sizin komşunuzdur. :)</p>
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
			<div class="top-left">Mobil uygulamayı indir</div>
			<div class="top-left2">Tıkla, arkana yaslan ve keyfini çıkar!</div>
			
		</div>
		
		
		
		
		<!-- /Menu -->

	<!-- /Reservation -->

		<!-- Events -->
		

			

					<!-- section header -->
					<div class="section-header text-center">
						<h4 class="sub-title">Daha fazlası için blogumuzda yemek ve yaşam ile ilgili heyecan verici haberlere göz atın.
						</h4>
						<a class = "blog" href="http://www.google.com">Blog'u ziyaret et</a>
					</div>
					<!-- /section header -->


					

				

		

		<!-- Contact -->
		<div id="contact" class="section">

			<!-- container -->
			<div class="container">

				<!-- row -->
				<div class="row">

					
						
						<div class="contact-content text-center">
							<p>Yemek siparişi verirken olağandışı bir şey olduğunda bizimle iletişime geçebilirsiniz, daha fazla bilgi için buraya bakın</p>
							<h3>Tel: <a href="#">0539 562 21 71</a></h3>
							<p>Email: <a href="#">comeneat@gmail.com</a></p>
							<ul class="list-inline">
								<li><p>Bizi Takip Et:</p></li>
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
						<span class="copyright">ComeNeat @2019 Tüm hakları saklıdır.</span>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</div>
					<!-- /copyright -->

					<!-- footer nav -->
					<div class="col-md-6">
						<nav class="footer-nav">
							<a href="#">Anasayfa</a>
							<a href="#">Hakkımızda</a>
							<a href="#">Galeri</a>
							<a href="#">Haberler</a>
							<a href="#">İletişim</a>
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
