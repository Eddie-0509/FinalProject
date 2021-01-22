<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
			<meta name="description" content="Free HTML5 Bootstrap Template by FREEHTML5.CO" />
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

			<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,700' rel='stylesheet'
				type='text/css'>
			<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,400italic,700italic,700'
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
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
			<!-- <script
				src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
			<script src="js/google_map.js"></script> -->


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
			<link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.css"
				rel="stylesheet" />
			<link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.print.css"
				rel="stylesheet" media="print">
			</script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script>


			<!--登入modal css bySCONE-->
			<link rel="stylesheet" href="css/login.css">

			<!--fontawesome bySCONE-->
			<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
				integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
				crossorigin="anonymous">

			<!--首頁文字輪播、modal js bySCONE-->
			<script src="js/hpother.js"></script>

			<style>
				.bt1 {
					color: black;
					margin-bottom: 20px;
				}

				.ct {
					color: black;
				}

				.modal.right .modal-dialog {
					position: fixed;
					margin: auto;
					width: 425px;
					height: 50%;
					-webkit-transform: translate3d(165%, 0, 0);
					-ms-transform: translate3d(165%, 0, 0);
					-o-transform: translate3d(165%, 0, 0);
					transform: translate3d(165%, 0, 0);
				}

				.modal.right .modal-content {
					height: 100vh;
					width: 45vw;
					max-height: height_body;
					overflow: auto;
				}

				.modal.right.fade .modal-dialog {
					-webkit-transition: opacity 0.5s linear, right 0.5s ease-out;
					-moz-transition: opacity 0.5s linear, right 0.5s ease-out;
					-o-transition: opacity 0.5s linear, right 0.5s ease-out;
					transition: opacity 0.5s linear, right 0.5s ease-out;
				}	
				.close {
                    color: #aaa;
                    float: right;
                    font-size: 28px;
                    font-weight: bold;
                }	
			</style>
			<script>
			</script>
		</head>

		<body>
			<!-- Loader -->
			<div class="fh5co-loader"></div>

			<div id="fh5co-page">
				<nav id="fh5co-nav" role="navigation">
					<ul>
			        <li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 0; top: 0;'/></li>
						<!-- 如果你是會員的頁面 -->
						<li class="animate-box "><a href="<c:url value='index'/>" class="transition">Home</a></li>
						<li class="animate-box fh5co-active"><a href="#" class="transition">立即預約</a></li>
						<li class="animate-box"><a href="#" class="transition">預約紀錄</a></li>
						<li class="animate-box"><a href="#" class="transition">會員資料</a></li>
						<li class="animate-box"><a href="#" class="transition">商城</a></li>
						<li class="animate-box"><a href="#" class="transition style-logout">登出</a></li>
					</ul>
					
					<!--開關燈-->
					<a class="style-toggle js-style-toggle" data-style="default" href="#">
						<span class="fh5co-circle"></span>
					</a>
				</nav>

				<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
					<div class="container">
						<h1>開始您的預約</h1>
						<div class="usericon"></div>
						<div class="formcontainer">
							<div class="containerf">
								<h3>
									<i class="fas fa-tooth"></i>預約資料填寫
								</h3>
								<br><label for="clinicCity"><strong>縣市 / 區</strong></label>
								<div>
									<select name="clinicCity" id="city">
										<option id="clinicCityDefault">請選擇</option>
										<c:forEach var="city" items="${cities}" varStatus="vs">
											<option value="${city.cityPkId}">${city.cityName}</option>
										</c:forEach>
									</select> <select name="clinicDist" id="dist">
										<option value="0" selected>請選擇</option>
									</select>
									<br>
								</div>
								<label for="date">您想選擇的日期：</label>
								<input type="date" id="date" name="appointdate">
								<label for="time"><strong>您想預約的時間：</strong></label>
								<select name="time" id="time">
									<option id="timedefault" selected>請選擇</option>
								</select>
								<br>
								<label for="item"><strong>治療項目：</strong></label>
								<select name="item" id="item">
									<option id="itemdefault" selected>請選擇</option>
									<c:forEach var="item" items="${items}">
										<option value="${item.itemPkId}">${item.itemName}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<input type="button" value="搜尋醫生/診所" class="bt1" id="sdentist">
						<br>
						<input type="button" value="取消預約" class="bt1" onclick="history.back()">
					</div>
				</div>

				<div class="modal fade right" id="searchresult">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<div id="close"><span class="close">&times;</span></div>
								<h4 id="ctitle" class="modal-title">醫生診所搜尋結果</h4>
								<div id="searchtitle"></div>
							</div>
							<div class="modal-body experimentMakeAnOffer" id="ccontent">
							</div>
							<div id="den"></div>
							<p id="empty" style="font-size: 25px; text-align: left;"><br><br><br>唉呀，沒有符合條件的牙醫診所 :(</p>
						<form:form modelAttribute="AddAp" action="${pageContext.request.contextPath}/AddAp" id="AddAp" method="post" enctype="multipart/form-data">
						<input type="hidden" name="clinicId" value="" id="hclinic"/>
						<input type="hidden" name="dentistId" value="" id="hdentist"/>
						<input type="hidden" name="appointdateId" value="" id="happointment"/>
						<input type="hidden" name="timetableId" value="" id="htime"/>
						<input type="hidden" name="dentistId" value="" id="hitem"/>
						</form:form>
						</div>
						<div class="modal-footer">
						</div>
					</div>
				</div>
			</div>

<!--一般用戶LOGIN表單-->
	<div class="modal fade" id="memberModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
					<form class="loginForm" action="${pageContext.request.contextPath}/appointmentCheckLogin" method="POST" >
						<h1>一般會員</h1>
							<div class="usericon">
								<i class="fas fa-user-circle"></i>
							</div>
							<div class="choose">
								<a href="javascript:void();" class="login default"><h2 >登　入</h2></a>
								<a href="<c:url value='/member'/>" class="sign"><h2 >註　冊</h2></a>
							</div>
								<div class="formcontainer">
								<div class="container">
									<span id="errorMsg" style="color: red; text-align: center; display:block;">${errorMsg}</span><br/>
									<label for="uname"><strong>身分證字號</strong></label>
									<input type="text" placeholder="請輸入身分證字號" name="account" id="uname" required autofocus>
					
									<label for="psw"><strong>密　　　碼</strong></label>
									<input type="password" placeholder="請輸入密碼" name="pwd" id="upsw" required>
				
								</div>
								<button type="submit"><strong>登入</strong></button>
								<div class="container" >
									<span ><a href="#" class="link">忘記密碼?</a></span>
								</div>
							</div>
						</form>
			</div>			
		</div>
	</div>		







			<script>
			
				
				$(function () {
					$("#city").children("option").eq(0).attr("selected");
					$(function () {
						$("#city").change(function () {
							let str = "";
							let urlQuery = new URLSearchParams({
								cityPkId: $("#city").val(),
								method: "fetch()",
								doWhat: "GET"
							});


							fetch("getDist?" + urlQuery, {
								method: "GET"
							}).then(function (response) {
								return response.json();
							}).then(function (data) {
								// console.log(data[0].clinics[0].clinicName);
								var jsonLength = 0;
								for (var item in data) {
									jsonLength++;
								}
								for (var i = 0; i < data.length; i++) {
									let distName = data[i].distName;
									str += "<option value='" + data[i].distPkId + "'>" + distName + "</option>";
								}
								$("#dist").html(str);
							})
						})
					})
				});


				$(function () {
					$("#date").change(function () {
						let str = "";
						let urlQuery = new URLSearchParams({
							appointDate: $("#date").val(),
							method: "fetch()",
							doWhat: "GET"
						});
						fetch("getTimeTable?" + urlQuery, {
							method: "GET"
						}).then(function (response) {
							return response.json();
						}).then(function (data) {
							var jsonLength = 0;
							for (var item in data) {
								jsonLength++;
							}
							for (var i = 0; i < data.length; i++) {
								let times = data[i].times;
								str += "<option value='" + data[i].timeTablePkId + "'>" + times + "</option>" + "<span class=timetableid style='display:none'>" + data[i].timeTablePkId + "</span>";
							}
							$("#time").html(str);
						})
					});
				});
				$(function (){
					$("#close").click(function(){
						$("#searchresult").modal('hide');
					})
				});
				$(function () {
					$("#sdentist").click(function () {
						let str = "";
						let str1 = "";
						let urlQuery = new URLSearchParams({
							timeTablePkId: $("#time").val(),
							itemPkId: $("#item").val(),
							clinicDist: $("#dist").val(),
							method: "fetch()",
							doWhat: "GET"
						});

						fetch("searchDoctor?" + urlQuery, {
							method: "GET"
						}).then(function (response) {
							return response.json();
						}).then(function (data) {
							console.log(data);
							var jsonLength = 0;
							for (var item in data) {
								jsonLength++;
							}
							for (var i = 0; i < data.length; i++) {
								str += "<div><span class=clinicid style='display:none'>" + data[i].clinicBean.clinicPkId + "</span>" + "<span class=dentistid style='display:none'>" + data[i].dentistPkId + "</span>" + data[i].dentistName + "<br>" + data[i].clinicBean.clinicName + "<br>" + data[i].clinicBean.clinicAddress + "<br>" + "<button class='aplogin'>預約登記</button>" + "</div>";
							} 
							$("#den").html(str);
							$("#searchresult").modal('show');
							str1 = "<div>" + $("#date").val() + "/" + $("#city option[value="+$("#city").val() +"]" ).text() + "/" + $("#dist option[value="+$("#dist").val() +"]" ).text() + "/項目:" + $("#item option[value="+$("#item").val() +"]" ).text() + "<div>";
							$("#searchtitle").html(str1);
							if (str.length == 0){
								$("#empty").show();
							}else {
								$("#empty").hide();
							};
							$(".aplogin").click(function(event){
								event.stopPropagation();
			 				    event.stopImmediatePropagation();
			 				   if ("${LoginOk}" == ""){
			 				   $("#memberModal").modal('show');
			 			       }else{
		 			    	   window.location.href="<c:url value='/memberAppointment'/>";
		 			    	   }
							})
						})
					})
				});
				
				    
				

			</script>







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



		</body>

		</html>