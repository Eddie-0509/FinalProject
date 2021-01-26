<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="shortcut icon" href="tools/favicon.ico">
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
<style>
#upload{
display: inline;
    width: 250px;
}
#imageUpload{
display: inline;
height: 33.600px;
line-height: 33.600px;
}
</style>
</head>

<body>

	<!-- Loader -->
	<div class="fh5co-loader"></div>

	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
				<!-- 如果你是診所的頁面 -->
				<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>
				<li class="animate-box "><a href="<c:url value='clinicIndex'/>"
					class="transition">Home</a></li>
				<li class="animate-box fh5co-active"><a
					href="<c:url value='clinicIndex'/>" class="transition">回上頁</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>

		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main"
			data-colorbg="">
			<div class="container">
				<form:form method='POST' action="${pageContext.request.contextPath}/signUp" modelAttribute="clinic" id="clinicForm" class='form-horizontal' enctype="multipart/form-data">
					<h1>註冊</h1>
					<div class="usericon"></div>
					<div class="formcontainer">
						<div class="containerF">
							<h3>
								<i class="fas fa-tooth"></i>診所資料
							</h3>
							<br> 
								<label for="clinicAccount"><strong>電子信箱</strong></label><span id="checkEmail"></span> 
								<input type="text" placeholder="請輸入E-mail" name="clinicAccount" id="clinicEmail" required autofocus> 
								<label for="clinicPwd"><strong>密碼</strong></label><span id="checkPwd"></span>
								<input type="password" placeholder="請輸入密碼" name="clinicPwd" id="clinicPwd" required>
								<label for="clinicPwdCheck"><strong>確認密碼</strong></label><span id="spPwdCheck"></span>
								<input type="password" placeholder="請再次輸入密碼" name="clinicPwdCheck" id="clinicPwdCheck" required>
								<label for="clinicName"><strong>診所名稱</strong></label> 
								<input type="text" placeholder="請輸入診所名稱" name="clinicName" id="clinicName"> 
								<label for="clinicPhone"><strong>診所電話</strong></label><span id="checkPhone"></span> 
								<input type="text" name="clinicPhone" id="clinicPhone" placeholder="02-xxxxxxx"><br> 
								<label for="clinicCity"><strong>縣市 / 區</strong></label>
							<div>
								<select name="clinicCityId" id="city">
									<option id="cityDefault">請選擇</option>
									<c:forEach var="city" items="${cities}" varStatus="vs">
										<option value="${city.cityPkId}">${city.cityName}</option>
									</c:forEach>
								</select> 
								<select name="clinicDistId" id="dist">
									<option value="0" selected>請選擇</option>
								</select>
							</div>
							<label for="clinicAddress"><strong>地址</strong></label> <input
								type="text" name="clinicAddress" id="clinicAddress">
							<div>
							<label for="upload">上傳診所圖片</label><br/>
  							<input id="upload" type="file" accept="image/*" >
  							<input type="button" id="imageUpload" value="上傳" style="color : black;">
							<input type="hidden" id="clinicImage" name="clinicImage" value="defaultImage">
							</div>
<!-- 								<input type="hidden"  name="clinicLocation"> -->
<!-- 								<input type="hidden"  name="clinicStartTime"> -->
<!-- 								<input type="hidden" name="clinicEndTime"> -->
<!-- 								<input type="hidden" name="clinicStatus"> -->
						</div>
						<div>
						<button class="btn btn-primary" type="button" id="formButton">送出</button>
						</div>

					</div>
				</form:form>
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

	</div>
	<script>
		var flagPwd = false;
		var flagEmail = false;
		var checkEmail = false;
		var flagPhone = false;
		var flagImage = true;
		var flagClinicPwdCheck=false;
		$(function() {
			
			// 使用Fetch 取得行政區
			$("#city").change(function() {
				$("#cityDefault").css("display","none")
				let str ="";
				let urlQuery = new URLSearchParams({
					cityPkId : $("#city").val(),
					method : "fetch()",
					doWhat : "GET"
				});
	
				
				fetch("getDist?" + urlQuery, {
					method : "GET"
				}).then(function(response) {
					return response.json();
				}).then(function(data) {
					var jsonLength = 0;
					for(var item in data){
					jsonLength++;
					}
					for (var i = 0; i < data.length; i++) {
					let distName=data[i].distName;
						str+="<option value='"+data[i].distPkId+"'>"+distName+"</option>";
					}
						$("#dist").html(str);
				});

			});

			$("#clinicEmail")
					.blur(
							function() {
								let emailVal = $("#clinicEmail").val();
								let span = $("#checkEmail");
								let flag1 = false;
								$("#checkEmail").css("color", "red");
								if (emailVal == "") {
									span
											.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入電子信箱");
									flagEmail = false;
									checkEmail = false;
								} else {
									for (let i = 0; i < emailVal.length; i++) {
										let char1 = emailVal.charCodeAt(i);
										if (char1 == 64) {
											span.html("");
											checkEmail = true;
											break;
										} else {
											flagEmail = false;
											checkEmail = false;

											span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確電子信箱");
										};
									};
								};
								
								if(checkEmail){
									let urlQuery = new URLSearchParams({
										clinicAccount : emailVal,
										method : "fetch()",
										doWhat : "post"
									});
									
									fetch("checkAccount", {
										method : "POST",
										body : urlQuery
									}).then(function(response) {
										return response.json();
									}).then(function(data) {
										if(data){
											flagEmail = true;
											span.css("color","green");
											span.html("&nbsp &nbsp <i class='far fa-check-circle'></i>帳號可以使用");
										}else {
											flagEmail = false;
											span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>帳號已被使用過");
										}
									})
									
								}

							});
			document.getElementById("clinicPwd").onblur = checkPwd;
			function checkPwd() {
				let flag1 = false, flag2 = false, flag3 = false;
				let span = document.getElementById("checkPwd");
				let pwdValue = document.getElementById("clinicPwd").value;
				document.querySelector("#checkPwd").style.color = 'red';
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
			
			$("#clinicPwdCheck").blur(function(){
				let span = $("#spPwdCheck");
				if($("#clinicPwdCheck").val()!=$("#clinicPwd").val()){
					flagClinicPwdCheck=false;
					span.css("color","red");
					span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>輸入密碼不同");
				}else {
					flagClinicPwdCheck=true;
					span.css("color","green");
					span.html("&nbsp &nbsp <i class='far fa-check-circle'></i>密碼相符");
				}
			});

			$("#clinicPhone")
					.blur(
							function() {
								let phoneVal = $("#clinicPhone").val();
								let span = $("#checkPhone");
								let flag1 = false;
								let a = /\d{2,3}-\d{7,8}/;
								console.log(a);
								$("#checkPhone").css("color", "red");
								if (phoneVal == "") {
									span
											.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入電話號碼");
									flagPhone = false;
								} else if (phoneVal.length > 11) {
									span
											.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確電話號碼 ex.區碼-xxxxxxx");
									flagPhone = false;
								} else if (!a.test(phoneVal)) {
									span
											.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確電話號碼 ex.區碼-xxxxxxx");
									flagPhone = false;
								} else {
									span.html("");
									flagPhone = true;
								}

							});
			//  使用imgur API 上傳圖片 取得圖片網址
			var x="";
			$("#upload").change(function(e){
				flagImage=false;
				 x = e.target.files[0]; // get file object
				});
				 
			
			$("#imageUpload").click(function(){
				flagImage=false;
				var form = new FormData();
				form.append("image", x);   //設定 圖片file值
				form.append("album", 'gMbwr3Z')  // 設定圖片存到哪一個相簿
				
				var settings = {
						  "async": true,
					      "crossDomain": true,
					      "processData": false,
					      "contentType": false,
						  "url": "https://api.imgur.com/3/image",
						  "method": "POST",
						  "timeout": 0,
						  "headers": {
							"Authorization": 'Bearer ' + "9d5b4a203ea24b781851009260d5138e60b510b9"
						  },
						  "processData": false,
						  "mimeType": "multipart/form-data",
						  "contentType": false,
						  "data": form
						};
				$.ajax(settings).done(function (response) {  // 使用ajax 取得imgur網址
					let resJSON = JSON.parse(response);  
					let imageStr = resJSON.data.link;
					$("#clinicImage").attr("value", imageStr);
					flagImage=true;
					window.alert("上傳成功");
					});
			})
			
			// 驗證每一個欄位都填寫正確再送出資料 並且上傳成功
			$("#formButton").click(function(){
				if(flagPwd && flagEmail &&flagPhone && flagImage&&flagClinicPwdCheck){
				  $("#clinicForm").submit();	
				}else if (flagPwd && flagEmail &&flagPhone &&flagClinicPwdCheck&& (flagImage==false)){
					window.alert("請等候圖片上傳");
				}else{
					window.alert("請輸入正確資料再送出");
				}
				
			});
			
			
			
			
			
			
			
			
		});
	</script>
</body>
</html>