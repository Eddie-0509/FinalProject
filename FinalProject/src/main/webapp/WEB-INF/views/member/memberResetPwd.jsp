<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>U YA YI</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Free HTML5 Bootstrap Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
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
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700italic,700'
	rel='stylesheet' type='text/css'>
<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Flexslider -->
<link rel="stylesheet" href="css/flexslider.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="stylesheet" id="theme-switch" href="css/style.css">


<!-- jQuery -->
<script src="js/jquery.min.js"></script>

<!-- jQuery Cookie -->
<script src="js/jquery.cookie.js"></script>
<script>
	if ($.cookie('styleCookie') === 'style-light.css') {
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
<!-- <script -->
<!-- 	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script> -->
<!-- <script src="js/google_map.js"></script> -->


<!-- Main JS  -->
<script src="js/main.js"></script>
<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

<!-- Moment.js v2.20.0 -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.0/moment.min.js"></script>
<!-- FullCalendar v3.8.1 -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.css"
	rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.print.css"
	rel="stylesheet" media="print">
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script>


<!--登入modal css bySCONE-->
<link rel="stylesheet" href="css/login.css">
<!--註冊 css bySCONE-->
<link rel="stylesheet" href="css/sign.css">

<!--fontawesome bySCONE-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
	integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
	crossorigin="anonymous">

<!--首頁文字輪播、modal js bySCONE-->
<script src="js/hpother.js"></script>
<script src="js/resetMemberPwdModal.js"></script>
<link rel="stylesheet" href="css/calendar_confirm-modal.css">

<style>
.formDiv{
width: 800px;
}


</style>
</head>

<body>


	<!-- Loader -->
	<div class="fh5co-loader"></div>

	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
				<!-- 如果你是會員的頁面 -->
				<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>
				<li class="animate-box "><a href="<c:url value='index'/>" class="transition">Home</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>

		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main"
			data-colorbg="">
			<div class="container" style="display: block;">
			<form action="<c:url value='memberRestPwd'/>" id="memberRestPwdForm" method="post">
			<div style="text-align: center;">
			<strong >立即重置您的密碼</strong>
			</div>
			<br>
			<div>
			<label for="memberPwd">請輸入密碼:</label>
			<span id="spMemberPwd"></span>
			<br>
			<input style= "color:black;width:60%" type="password" name="memberPwd" id="memberPwd" placeholder="請輸入密碼">
			</div>
			<div>
			<label for="memberPwdCheck">請確認密碼:</label>
			<span id="spMemberPwdCheck"></span>
			<br>
			<input style= "color:black;width:60%" type="password" name="memberPwdCheck" id="memberPwdCheck" placeholder="請再次輸入密碼">
			
			</div>
			<br> 
			<input type="hidden" value="${memberId}" name="memberId">
			<button type="button" class="btn-info" >確認</button>
			</form>
			
			
	        </div>
	  
	        </div>
		</div>

		<footer id="fh5co-footer" class="js-fh5co-waypoint">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<p>
							<small>&copy; 2021 UYAYI. All Rights Reserved. </small>
						</p>
						<ul class="fh5co-social">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-instagram"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	<script>
	$(function(){
		var flagPwd = false;
		var flagMemberPwdCheck=false;
		document.getElementById("memberPwd").onblur = checkPwd;
		function checkPwd() {
			let flag1 = false, flag2 = false, flag3 = false;
			let span = document.getElementById("spMemberPwd");
			let pwdValue = document.getElementById("memberPwd").value;
			document.querySelector("#spMemberPwd").style.color = 'red';
			if (pwdValue == "") {
				span.innerHTML = "&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入密碼";
				flagPwd = false;
			} else if (pwdValue.length <= 6) {
				span.innerHTML = "&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>密碼必須大於6";
				flagPwd = false;
			} else {
				for (let i = 0; i < pwdValue.length; i++) {
					let char1 = pwdValue.charAt(i).toUpperCase();
					let char2 = pwdValue.charCodeAt(i);
					if (char1 >= "A" && char1 <= "Z") {
						flag1 = true;
					}
					if (char1 >= 0 && char1 <= 9) {
						flag2 = true;

					}
					if ((char2 >= 33 && char2 <= 47)
							|| (char2 >= 58 && char2 <= 64)
							|| (char2 >= 91 && char2 <= 96)
							|| (char2 >= 123 && char2 <= 126)) {
						flag3 = true;
					}

					if (flag1 && flag2 && flag3) {
						span.innerHTML = "";
						break;
					}
				}
				if (flag1 && flag2 && flag3) {
					span.innerHTML = "";
					flagPwd = true;
				} else {
					span.innerHTML = "&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確密碼格式";
					flagPwd = false;
				}
			}
		}
		
		$("#memberPwdCheck").blur(function(){
			let span = $("#spMemberPwdCheck");
			if($("#memberPwdCheck").val()!=$("#memberPwd").val()){
				flagMemberPwdCheck=false;
				span.css("color","red");
				span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>輸入密碼不同");
			}else {
				flagMemberPwdCheck=true;
				span.css("color","green");
				span.html("&nbsp &nbsp <i class='far fa-check-circle'></i>密碼相符");
			}
		});
		
		 async function wrongPwd() {
		        this.myModal = new SimpleModal("錯誤", "請輸入正確密碼", "是", "否");

		        try {
		          const modalResponse = await myModal.question();
		        } catch(err) {
		          console.log(err);
		        }
		        
		      }
		 async function confirmChangePwd() {
		        this.myModal = new SimpleModal("確認", "確認更改密碼?", "是", "否");

		        try {
		          const modalResponse = await myModal.question();
		        } catch(err) {
		          console.log(err);
		        }
		        
		      }
		$("#memberRestPwdForm > button").click(function(){
			if(flagPwd&&flagMemberPwdCheck){
				confirmChangePwd();

			}else{
				wrongPwd();
				$("body > dialog > div > div.simple-modal-button-group").children().remove();
			}
			
		});
	});
	
	</script>
</body>
</html>