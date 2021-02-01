<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
	
	
    <!--下拉式選單 -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
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
	<link rel="stylesheet" href="css/bootstrap.css">

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

	  <!-- Moment.js v2.20.0 -->
	  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.0/moment.min.js"></script>
	  <!-- FullCalendar v3.8.1 -->
	  <link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.css" rel="stylesheet"  />
	  <link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.print.css" rel="stylesheet" media="print"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script>
	  
	
	<!--登入modal css bySCONE-->
	<link rel="stylesheet" href="css/login.css">

	<!--fontawesome bySCONE-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous"> 

	<!--首頁文字輪播、modal js bySCONE-->	
	<script src="js/hpother.js"></script>
	
	<style>
	.accordion-button {
	font-size:20px;
	}
	</style>

	</head>

	<body>
	
	<!-- Loader -->
	<div class="fh5co-loader"></div>
	
	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
				<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>
				<!-- 如果你是會員的頁面 -->
				<li class="animate-box "><a href="<c:url value='index'/>" class="transition">Home</a></li>
			    <li class="animate-box "><a href="<c:url value='/memberModify'/>" class="transition">會員資料</a></li>
			    <li class="animate-box"><a href="<c:url value='/memberFirstVisit'/>" class="transition">會員初診</a></li>
				<li class="animate-box "><a href="<c:url value='appointment'/>" class="transition">立即預約</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='/appointmentRecord'/>" class="transition">預約紀錄</a></li>
				<li class="animate-box "><a href="<c:url value='memberOrderTracking'/>" class="transition">訂單查詢</a></li>
				<li class="animate-box"><a href="<c:url value='products'/>" class="transition">商城</a></li>
				<li class="animate-box"><a href="${pageContext.request.contextPath}/memberLogout" class="transition style-logout">登出</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
   
		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
			<div class="container">
			
<div id="appointmentContainer" class="container" style='width: 1200px;'>
				<h3>會員:${member.memberName}</h3>
				<h3>預約紀錄</h3>
<!-- 				<button type="button" id="searchData" class="btn btn-info">取消預約</button> -->
			

 <div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" >
        <i class="fas fa-tooth"></i>今日以後的預約
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
     <div class="accordion-body">
     <table class='table table-bordered' id='showAllAppointmentTable' >
					<thead>
						<tr>
							<th style='width: 150px;'>日期</th>
							<th style='width: 150px;'>時段</th>
							<th style='width: 200px;'>診所</th>
							<th style='width: 150px;'>醫生</th>
							<th style='width: 150px;'>項目</th>
							<th style='width: 100px;'>回覆狀態</th>
							<th style='width: 100px;'></th>
						</tr>
					</thead>
					<tbody id="AppointmentBody">
						<c:forEach var="appointmentAfter" items="${appointmentAfterToDay}" varStatus="vs1">
							<tr>
								<td>${appointmentAfter.appointDate}</td>
								<td>${appointmentAfter.timeTableBean.times}</td>
								<td>${appointmentAfter.clinicBean.clinicName}</td>
								<td>${appointmentAfter.dentistBean.dentistName}</td>
								<td>${appointmentAfter.itemBean.itemName}</td>
								<td>${appointmentAfter.memberReply}</td>
								<td>
								<form action="${pageContext.request.contextPath}/renewAppointment" method="GET" id="cancelform${appointmentAfter.appointmentPkId}">
								<button type="button" id="cancelbtn${appointmentAfter.appointmentPkId}">取消預約</button>
								<input type="hidden" name='appointmentPkId' value="${appointmentAfter.appointmentPkId}" id="apid${appointmentAfter.appointmentPkId}">
								<input type="hidden" name='appointmentMemberReply'value="${appointmentAfter.memberReply}" id="ar${appointmentAfter.appointmentPkId}">
								</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
     
     </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        <i class="fas fa-tooth"></i>今日以前的預約
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
       <table class='table table-bordered' id='showAllAppointmentTable' >
					<thead>
						<tr>
							<th style='width: 150px;'>日期</th>
							<th style='width: 150px;'>時段</th>
							<th style='width: 200px;'>診所</th>
							<th style='width: 150px;'>醫生</th>
							<th style='width: 150px;'>項目</th>
							<th style='width: 100px;'>到診</th>
						</tr>
					</thead>
					<tbody id="AppointmentBody">
						<c:forEach var="appointment" items="${appointment}" varStatus="vs2">
							<tr>
								<td>${appointment.appointDate}</td>
								<td>${appointment.timeTableBean.times}</td>
								<td>${appointment.clinicBean.clinicName}</td>
								<td>${appointment.dentistBean.dentistName}</td>
								<td>${appointment.itemBean.itemName}</td>
								<c:choose>
								<c:when test="${appointment.arrive == 'true' }">
									<td>有</td>
								</c:when>
								<c:otherwise>
									<td>無</td>								
								</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>
					</tbody>
				</table>
           </div>
         </div>
       </div>
     </div> 
   </div>
 </div>
</div>

<!-- 測試用 -->
<script>
console.log("${appointment}");
console.log("${appointmentAfterToDay}");
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

	</div>

	
	</body>
	<script>
	
	
	
	//判斷是否已經回覆，未回覆才可取消，確認前往和取消兩種狀態則不可取消
	$(function(){
	<c:forEach var="appointmentAfter" items="${appointmentAfterToDay}" varStatus="vs1">
	$("#cancelbtn${appointmentAfter.appointmentPkId}").click(function(){
				if("${appointmentAfter.memberReply}"=="未回覆"){
			$("#cancelform${appointmentAfter.appointmentPkId}").trigger("submit");
				}else if("${appointmentAfter.memberReply}"=="確認前往"){
					window.alert("抱歉！您已確認會前往已無法取消預約！");
				}else{
					window.alert("重複取消");
				}
			})
	</c:forEach>
	});
    </script>
</html>