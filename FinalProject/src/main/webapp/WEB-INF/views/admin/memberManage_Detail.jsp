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
	<link rel="shortcut icon" href="favicon.ico">
	
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
	
	</head>

	<body>
	
	<!-- Loader -->
	<div class="fh5co-loader"></div>
	
	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
				<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>
				<li class="animate-box"><a href="<c:url value='index'/>" class="transition">Home</a></li>
				<li class="animate-box"><a href="<c:url value='productManage'/>" class="transition">商品管理</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='memberManage'/>" class="transition">會員管理</a></li>
				<li class="animate-box"><a href="<c:url value='clinicManage'/>" class="transition">診所管理</a></li>
				<li class="animate-box"><a href="<c:url value='couponManage'/>" class="transition">折價券管理</a></li>
				<li class="animate-box"><a href="<c:url value='memberLogout'/>" class="transition style-logout">登出</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
	<div id="orderDetailModal" class="modal fade" style="color:black">
		<div class="modal-dialog"  style="width:50%">
	    	<div class="modal-content">
	        	<div class="modal-header">
	            	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            	<h4 id="orderDetailModalTitle" class="modal-title"  style="color:black"></h4>
	        	</div>
	        	<div id="orderDetailModalBody" class="modal-body"  style="color:black">
	        
	       
	  
	        	</div>
	        	<div class="modal-footer">
	        		<button type="button" class="btn btn-default contactMember" id="formButton">確定修改</button>
	            	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        	</div>
	    	</div>
		</div>
	</div>
   
		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
		
			<div id="appointmentContainer" class="container" style='width: 1200px;'>
				會員:${member.memberName}<br/>
				<h4>預約紀錄</h4>
				<input id="searchBar" name="keyName" placeholder="請輸入關鍵字" style="color: gray;"/>
				<button type="button" id="searchData" class="btn btn-info">搜尋</button>
				<table class='table table-bordered' id='showAllAppointmentTable' >
					<thead>
						<tr>
							<th style='width: 100px;'>預約編號</th>
							<th style='width: 200px;'>診所</th>
							<th style='width: 200px;'>醫生</th>
							<th style='width: 200px;'>日期</th>
							<th style='width: 200px;'>時段</th>
							<th style='width: 200px;'>項目</th>
							<th style='width: 100px;'>
							<select name="h_memberArrive" id="h_memberArrive">
								<option id ="到診" value="到診" selected="selected">到診</option>
								<option id ="有" value="True">有</option>
								<option id ="無" value="False" >無</option>
							</select>
							</th>
						</tr>
					</thead>
					<tbody id="AppointmentBody">
						<c:forEach var="appointment" items="${appointment}" varStatus="vs">
							<tr>
								<td>${vs.count}</td>
								<td>${appointment.clinicBean.clinicName}</td>
								<td>${appointment.dentistBean.dentistName}</td>
								<td>${appointment.appointDate}</td>
								<td>${appointment.timeTableBean.times}</td>
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
			<div id="orderContainer" class="container" style='width: 1200px;'>
				<h4>訂單紀錄</h4>
				<input id="searchBar" name="keyName" placeholder="請輸入關鍵字" style="color: gray;"/>
				<button type="button" id="searchData" class="btn btn-info">搜尋</button>
				<table class='table table-bordered' id='showAllOrderTable' >
					<thead>
						<tr>
							<th style='width: 100px;'>訂單編號</th>
							<th style='width: 150px;'>折扣碼</th>
							<th style='width: 150px;'>總費用</th>
							<th style='width: 150px;'>
							<select name="h_orderStatus" id="h_orderStatus">
								<option id ="訂單狀況" value="訂單狀況" selected="selected">訂單狀況</option>
								<option id ="未付款" value="未付款">未付款</option>
								<option id ="已付款" value="已付款" >已付款</option>
								<option id ="取消" value="取消" >已付款</option>
								<option id ="已出貨" value="已出貨" >已付款</option>
							</select>
							</th>
							<th style='width: 600px;'>收件地址</th>
							<th style='width: 50px;'></th>
						</tr>
					</thead>
					<tbody id="orderBody">
						<c:forEach var="order" items="${orders}" varStatus="vs">
							<tr>
								<td>${order.orderPkId}</td>
								<td>
								<c:choose>
								<c:when test="${order.couponBean.couponCode == null }">
								</c:when>
								<c:otherwise>
								${order.couponBean.couponCode}							
								</c:otherwise>
								</c:choose>
								</td>
								<td>${order.totalPayment}</td>
								<td>${order.orderStatus}</td>
								<td>${order.shipAddress}</td>	
								<td><i id="detail${order.orderPkId}" class="fas fa-info-circle"></i></td>						
							</tr>
						</c:forEach>
					</tbody>
				</table>
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
	<c:forEach var="order" items="${orders}" varStatus="vs">
		$("#detail${order.orderPkId}").on({
			mouseenter:function(){
				$(this).css("color","blue");
			},
			mouseleave:function(){
				$(this).css("color","black");
			},
			click:function(){
				
				$("#orderDetailModal").modal('show');
			}
		});
	</c:forEach>
	
	
	</script>
	</body>
</html>