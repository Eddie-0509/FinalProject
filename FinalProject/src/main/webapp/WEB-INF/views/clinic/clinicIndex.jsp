<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 	 
<!-- 請改成給診所看的介紹頁面(診所的HOME)	 -->
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
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<link rel="stylesheet" id="theme-switch" href="css/style.css">
	
	
	<!-- jQuery -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
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
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	
<!-- 	帳號密碼錯誤彈窗 -->
 <div id="checkLogIn" class="modal fade" style="color:black">
 <div class="modal-dialog">
     <div class="modal-content">
         <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
             <h4 id="modalTitle" class="modal-title"  style="color:black">標題</h4>
         </div>
         <div id="modalBody" class="modal-body"  style="color:black">
          <span>帳號密碼錯誤</span>
   
         </div>
         <div class="modal-footer">
          
             <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>             
         </div>
     </div>
 </div>
</div>
	
	
	<!-- Loader -->
	<div class="fh5co-loader"></div>
	
	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
				<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>				
				<li class="animate-box fh5co-active"><a href="<c:url value='clinicIndex'/>" class="transition">Home</a></li>
				<li class="animate-box "><a data-toggle="modal" data-target="#clinicModal" style="cursor: pointer">診所登入</a></li>
				<li class="animate-box"><a href="<c:url value='/signupFirst'/>" class="transition">診所註冊</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
   		</nav>
		
		<header id="fh5co-header" role="banner" class="fh5co-project js-fh5co-waypoint no-border" data-colorbg="#222222" data-next="yes" >
			<div class="container">
				<div class="fh5co-text-wrap animate-box">
					<div class="fh5co-intro-text" id="dentistI">
						<h1 >U YA YI <span> </span> </h1>
						<h1 >智慧科技增加曝光</h1>
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


		<!--診所用戶LOGIN表單-->
	<div class="modal fade" id="clinicModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
					<form class="loginForm" action="<c:url value='/clinic'/>" method="POST" >
						<h1>診所會員</h1>
							<div class="usericon">
								<i class="fas fa-clinic-medical"></i>
							</div>
							<div class="choose">
								<a href="javascript:void();" class="login default"><h2 >登　入</h2></a>
								<a href="<c:url value='/signupFirst'/>" class="sign"><h2 >註　冊</h2></a>
							</div>
								<div class="formcontainer">
								<div class="container">
								<div>
								<span style="color:red">${logInFail}</span>
								</div>
									<label for="uname"><strong>帳號</strong></label>
									<input type="text" placeholder="請輸入Email" name="clinicAccount" id="cname" required autofocus>
									<br>
									<label for="psw"><strong>密碼</strong></label>
									<input type="password" placeholder="請輸入密碼" name="clinicPwd" id="cpsw" required>
								</div>
								<button type="submit" id="logInBtn"><strong>登入</strong></button>
								<div class="container" >
									<span ><a href="<c:url value='clinicForgotPwd'/>" class="link">忘記密碼?</a></span>
									<span ><a href="javascript:void();" id="eddieDemo">First demo</a></span>
									<span ><a href="javascript:void();" id="sconeDemo">Second demo</a></span>
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
							<img src="images/annoyance.jpg" alt="Free HTML5 Bootstrap Template" style="width: 512px;height: 341.6px;background-size: cover">
						</div>
						<!-- <div class="img-holder-2 animate-box">
							<img src="images/work_1_small.jpg" alt="Free HTML5 Bootstrap Template">
						</div> -->
					</div>
					<div class="fh5co-text col-md-4 animate-box " >
						<h2>更懂牙醫師的煩惱</h2>
						<p>病人遲到、爽約，浪費醫師時間，拉低看診效率嗎？還在浪費大把時間與精力打電話聯絡病人嗎?在U YA YI上可以幫助您自動化管理病人，立刻解決您煩惱。</p>
						<p><a href="work_1.html" class="btn btn-light btn-outline transition">查看方案</a></p>
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
							<img src="images/clinicFunction.jpg" alt="Free HTML5 Bootstrap Template" style="width: 512px;height: 341.6px;background-size: cover">
						</div>
						<!-- <div class="img-holder-2 animate-box">
							<img src="images/work_2_small.jpg" alt="Free HTML5 Bootstrap Template">
						</div> -->
					</div>
					<div class="fh5co-text col-md-4 col-md-pull-8 animate-box">
						<h2>創造醫師+診所品牌力</h2>
						<p>U YA YI提供您診所的完整的資訊及醫師資訊，民眾可以自行搜尋醫師後進行線上約診，為您帶來NP。</p>
						<p><a href="work_1.html" class="btn btn-light btn-outline transition">查看方案</a></p>
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
							<img src="images/line.jpg" alt="Free HTML5 Bootstrap Template" style="width: 512px;height: 341.6px;background-size: cover">
						</div>
						<!-- <div class="img-holder-2 animate-box">
							<img src="images/work_3_small.jpg" alt="Free HTML5 Bootstrap Template">
						</div> -->
					</div>
					<div class="fh5co-text col-md-4 animate-box">
						<h2>約診Line提醒</h2>
						<p>於約診日前一天系統提供傳line提醒的功能，病人在line中點選「是」或「否」後，診所系統界面便顯示相應圖示，助理不需再一一打電話。</p>
						<p><a href="work_1.html" class="btn btn-light btn-outline transition">查看方案</a></p>
					</div>
				</div>

			</div>
		</div>
		<!-- data-colorbg="#7bc74d" -->
		<div class="fh5co-project js-fh5co-waypoint fh5co-reverse" data-colorbg="" style="text-align: center">
			<div class="container">
				<div class="fh5co-project-inner row">
				
				<h2>方案收費</h2>
				<h2>NTD:2000/月</h2>
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
	<c:choose>
	<c:when test="${logInFail=='帳號密碼錯誤'}">
		$(window).ready(() => {
			$('#clinicModal').modal('show');
		});
	</c:when>
	<c:otherwise>
	</c:otherwise>
	</c:choose>
		
	$(function(){
		var sideslider = $('[data-toggle=collapse-side]');
		var get_sidebar = sideslider.attr('data-target-sidebar');
		var get_content = sideslider.attr('data-target-content');
		sideslider.click(function(event){
		$(get_sidebar).toggleClass('in');
		$(get_content).toggleClass('out');
		});
		});
		
		
	  $("#sconeDemo").on("click",function(){
		  $("#cname").val("Yorozuya@hotmail.com.tw");
		  $("#cpsw").val("P@ssw0rd456");
	  })
	  
	  $("#eddieDemo").click(function(){
		  $("#cname").val("tihtom@gmail.com");
		  $("#cpsw").val("qq11!!!");
	  })
	
	</script>
	<script>
		if ("${loginOK}" !=""){
			console.log("${loginOK}")
			$("#fh5co-nav ul").html(
					'<li><img src="images/UYAYI_white.png" id="logo" width="200" style="float:left;position: absolute; left: 100px; top: 17.6px;"/></li>'
					+'<li class="animate-box fh5co-active"><a href="<c:url value="clinicIndex"/>" class="transition">Home</a></li>'
					+'<li class="animate-box "><a href="<c:url value="clinicCalendar"/>" class="transition">約診紀錄</a></li>'
					+'<li class="animate-box"><a href="<c:url value="clinicAppoint"/>" class="transition">預約新增</a></li>'
					+'<li class="animate-box"><a href="<c:url value="clinicDetail"/>" class="transition">診所資料</a></li>'
					+'<li class="animate-box"><a href="<c:url value="getDentist"/>" class="transition">醫師資料</a></li>'
					+'<li class="animate-box"><a href="<c:url value="clinicCharts"/>" class="transition">報表</a></li>'
					+'<li class="animate-box"><a href="<c:url value="logout"/>" class="transition style-logout">登出</a></li>'
					)
		}
		var Chart=null
  	</script>
	
	
	</body>
</html>