<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>U YA YI</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Bootstrap Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="tools/favicon.ico">
	
	<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700italic,700' rel='stylesheet' type='text/css'>
	
	<link href='fonts/jf-openhuninn-1.1.ttf' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css" >
	<!-- Flexslider -->
	<link rel="stylesheet" href="css/flexslider.css" >
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css" >
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css" >

	<link rel="stylesheet" id="theme-switch" href="css/style.css">
	
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>

	<!-- jQuery Cookie -->
	<script src="js/jquery.cookie.js"></script>
	<script>
	if ( $.cookie('styleCookie') === 'style-light.css') {
		$('html, body').css('background', '#eeeeee');
	} else if ($.cookie('styleCookie') === 'style.css') {
		$('html, body').css('background', '#222222');
	}
	
	</script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>

	<!-- Viewport Units Buggyfill -->
	<script src="js/viewport-units-buggyfill.js"></script>

	<!-- Googgle Map -->
<!-- 	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script> -->
<!-- 	<script src="js/google_map.js"></script> -->

	
	<!-- Main JS  -->
	<script src="js/main.js"></script>
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	<!--登入modal css bySCONE-->
	<link rel="stylesheet" href="css/login.css">

	<!--fontawesome bySCONE-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous"> 
	
	<!--首頁文字輪播、modal js bySCONE-->	
	<script src="js/hpother.js"></script>

	</head>

	<body>
	
	<!-- Loader -->
	<div class="fh5co-loader"></div>
	
	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='index'/>" class="transition">Home</a></li>
				<li class="animate-box"><a data-toggle="modal" data-target="#memberModal" >用戶登入</a></li>
				<li class="animate-box"><a href="<c:url value='clinicIndex'/>" class="transition">診所專區</a></li>
				<li class="animate-box"><a href="<c:url value='products'/>" class="transition">商城</a></li>
			</ul>

			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
		
		


		<header id="fh5co-header" role="banner" class="fh5co-project js-fh5co-waypoint no-border" data-colorbg="#222222" data-next="yes" style="background: url('images/hero-bg.jpg') top center">
			<div class="container">
				<div class="fh5co-text-wrap animate-box" >
					<div class="fh5co-intro-text" id="memberI">
						<h1 >U YA YI <span> </span> </h1>
						<h1 >隨時預約你的牙醫</h1>
					</div>
				</div>
			</div>
			<div class="btn-next animate-box fh5co-learn-more">
				<a href="#about" >
					<span>See our service</span>
					<i class="icon-chevron-down"></i>
				</a>
			</div>
		</header>

		<!--一般用戶LOGIN表單-->
	<div class="modal fade" id="memberModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
					<form class="loginForm" action="checkLogin" method="POST" >
						<h1>一般會員</h1>
							<div class="usericon">
								<i class="fas fa-user-circle"></i>
							</div>
							<div class="choose">
								<a href="javascript:void();" class="login default"><h2 >登　入</h2></a>
								<a href="<c:url value='member'/>"  class="sign"><h2 >註　冊</h2></a>
							</div>
								<div class="formcontainer">
								<div class="container">
									<span id="errorMsg" style="color: red; text-align: center; display:block;">${errorMsg}</span><br/>
									<label for="uname"><strong>信　　　箱</strong></label>
									<input type="text" placeholder="請輸入身分證字號" name="account" id="uname" required autofocus>
					
									<label for="psw"><strong>密　　　碼</strong></label>
									<input type="password" placeholder="請輸入密碼" name="pwd" id="upsw" required>
				
								</div>
								<button type="submit"><strong>登入</strong></button>
								<div class="container" >
									<span ><a href="<c:url value='memberForgotPwd'/>" class="link">忘記密碼?</a></span>
								</div>
							</div>
						</form>
			</div>			
		</div>
	</div>		

		



		<!-- data-colorbg="#8cc53e"  -->
		<div class="fh5co-project js-fh5co-waypoint" data-bgcolor="" data-next="yes"  >
			<div class="container" id="about">
				<div class="fh5co-project-inner row">
					<div class="fh5co-imgs col-md-8 animate-box" >
						<div class="img-holder-1 animate-box">
							<img src="images/hpimg1.jpg" alt="Free HTML5 Bootstrap Template">
						</div>
						<!-- <div class="img-holder-2 animate-box">
							<img src="images/work_1_small.jpg" alt="Free HTML5 Bootstrap Template">
						</div> -->
					</div>
					<div class="fh5co-text col-md-4 animate-box " >
						<h2>隨時隨地預約牙醫</h2>
						<p>預約牙醫時總是被告知要等一個月後嗎？在U YA YI上可以根據您希望的時間、地點，找到適合您的牙醫，讓您立刻解決您的牙齒問題。</p>
						<p><a href="<c:url value='/appointment'/>" class="btn btn-light btn-outline transition">立刻預約</a></p>
					</div> 
				</div>

			</div>
		</div>
		<!-- data-colorbg="#FF6138" -->
		<div class="fh5co-project js-fh5co-waypoint fh5co-reverse" data-colorbg="" data-next="yes">
			<div class="container">
				<div class="fh5co-project-inner row">
					<div class="fh5co-imgs col-md-8 col-md-push-4 animate-box">
						<div class="img-holder-1 animate-box">
							<img src="images/hpimg2.jpg" alt="Free HTML5 Bootstrap Template">
						</div>
						<!-- <div class="img-holder-2 animate-box">
							<img src="images/work_2_small.jpg" alt="Free HTML5 Bootstrap Template">
						</div> -->
					</div>
					<div class="fh5co-text col-md-4 col-md-pull-8 animate-box">
						<h2>透明資訊與診所評價</h2>
						<p>U YA YI提供完整的診所及醫師資訊，以及使用者們看診過後的實際評價，讓您挑選診所時能多方比較，選擇讓您安心的診所。</p>
						<p><a href="work_1.html" class="btn btn-light btn-outline transition">View Project</a></p>
					</div>
				</div>

			</div>
		</div>
		
		<!-- data-colorbg="#2d4059" -->
		<div class="fh5co-project js-fh5co-waypoint" data-colorbg="" data-next="yes">
			<div class="container">
				<div class="fh5co-project-inner row">
					<div class="fh5co-imgs col-md-8 animate-box">
						<div class="img-holder-1 animate-box">
							<img src="images/hpimg3.jpg" alt="Free HTML5 Bootstrap Template">
						</div>
						<!-- <div class="img-holder-2 animate-box">
							<img src="images/work_3_small.jpg" alt="Free HTML5 Bootstrap Template">
						</div> -->
					</div>
					<div class="fh5co-text col-md-4 animate-box">
						<h2>自動約診提醒</h2>
						<p>根據健康聯盟的建議，洗牙通常每半年就須洗一次。但忙碌的生活是不是常讓你忘記上次洗牙的時間呢？U YA YI會儲存您的洗牙紀錄，提醒您預約回診，關心您的牙齒健康。</p>
						<p><a href="work_1.html" class="btn btn-light btn-outline transition">View Project</a></p>
					</div>
				</div>

			</div>
		</div>
		<!-- data-colorbg="#7bc74d" -->
		<div class="fh5co-project js-fh5co-waypoint fh5co-reverse" data-colorbg="">
			<div class="container">
				<div class="fh5co-project-inner row">
					<div class="fh5co-imgs col-md-8 col-md-push-4 animate-box">
						<div class="img-holder-1 animate-box">
							<img src="images/hpimg4.jpg" alt="Free HTML5 Bootstrap Template">
						</div>
						<!-- <div class="img-holder-2 animate-box">
							<img src="images/work_4_small.jpg" alt="Free HTML5 Bootstrap Template">
						</div> -->
					</div>
					<div class="fh5co-text col-md-4 col-md-pull-8 animate-box">
						<h2>齊全的牙齒保健商品</h2>
						<p>預防勝於治療，跟牙齒保健相關的所有商品，您在U YA YI的商城中都可以看到，讓您在日常生活中便能有效照顧自己的牙齒。</p>
						<p><a href="work_1.html" class="btn btn-light btn-outline transition">View Project</a></p>
					</div>
				</div>

			</div>
		</div>
		<footer id="fh5co-footer" class="js-fh5co-waypoint">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<p><small>&copy; 2021 UYAYI. All Rights Reserved. </small> </p>
						<ul class="fh5co-social">
							<li>
								<a href="#"><i class="icon-twitter"></i></a>
							</li>
							<li>
								<a href="#"><i class="icon-facebook"></i></a>
							</li>
							<li>
								<a href="#"><i class="icon-instagram"></i></a>
							</li>
							<li>
								<a href="#"><i class="icon-dribbble"></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</footer>

	</div>
	<script>
	$(document).ready(function(){
		if(${errorMsg=='帳號密碼錯誤'}){
			$("#memberModal").modal('show');
		}
	})
	
	if ("${LoginOK}" !=""){
			$("#fh5co-nav ul").html(
					'<li><img src="images/UYAYI_white.png" id="logo" width="200" style="float:left;position: absolute; left: 100px; top: 17.6px;"/></li>'
					+'<li class="animate-box fh5co-active"><a href="<c:url value="index"/>" class="transition">Home</a></li>'
					+'<li class="animate-box "><a href="<c:url value=""/>" class="transition">立即預約</a></li>'
					+'<li class="animate-box"><a href="<c:url value="appointmentRecord"/>" class="transition">預約紀錄</a></li>'
					+'<li class="animate-box"><a href="<c:url value=""/>" class="transition">會員資料</a></li>'
					+'<li class="animate-box"><a href="<c:url value="products"/>" class="transition">商城</a></li>'
					+'<li class="animate-box"><a href="<c:url value="memberLogout"/>"" class="transition style-logout">登出</a></li>'
					)
		}

	</script>
	
	
	</body>
</html>