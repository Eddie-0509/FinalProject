<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
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
				<li class="animate-box"><a href="<c:url value='memberManage'/>" class="transition">會員管理</a></li>
				<li class="animate-box"><a href="<c:url value='clinicManage'/>" class="transition">診所管理</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='couponManage'/>" class="transition">折價券管理</a></li>
				<li class="animate-box"><a href="<c:url value='memberLogout'/>" class="transition style-logout">登出</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
		<!--新增折扣表單-->
	<div class="modal fade" id="addCouponFormModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
	            	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            	<h4 id="addCouponProductFormModalTitle" class="modal-title"  style="color:black">折扣資料</h4>
	       		</div>
				<form:form action="${pageContext.request.contextPath}/addCoupon" method="POST" modelAttribute="addCouponForm" enctype="multipart/form-data">
				<div class="formcontainer">
					<div class="containerF">
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponName"><strong>折扣名稱:</strong></label><span id="a_checkName"></span><br>
						<input type="text" id="a_couponName" name="couponName" placeholder="請輸入折扣名稱" style="width: 90%"/><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponContext"><strong>折扣內容:</strong></label><span id="a_checkContext"></span><br>
						<input type="text" id="a_couponContext" name="couponContext" placeholder="請輸入折扣內容" style="width: 90%"/><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponCode"><strong>折扣碼:</strong></label><span id="a_checkCode"></span><br>
						<input type="text" id="a_couponCode" name="couponCode" placeholder="請輸入折扣碼" style="width: 90%"/><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponStartTime"><strong>折扣起始時間	:</strong></label><span id="a_checkStartTime"></span><br>
						<input type="date" id="a_couponStartTime" name="couponStartTime" placeholder="請輸入折扣起始時間" /><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponEndTime"><strong>折扣結束時間	:</strong></label><span id="a_checkEndTime"></span><br>
						<input type="date" id="a_couponEndStartTime" name="couponEndTime" placeholder="請輸入折扣結束時間" /><br/>						
						</div>
						<input type="text"  name="couponStatus" value="true" hidden="hidden">
					</div>
				</div>
				</form:form>	
				<div class="modal-footer">
	        	<button type="button" class="btn btn-default contactMember" id="addCouponButton">確定提交</button>
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        	</div>					
			</div>
		</div>
	</div>
	
		<!--修改折扣表單-->
	<div class="modal fade" id="updateCouponFormModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
	            	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            	<h4 id="updateCouponProductFormModalTitle" class="modal-title"  style="color:black">折扣資料</h4>
	       		</div>
				<form:form action="${pageContext.request.contextPath}/updateCoupon" method="POST" modelAttribute="updateCouponForm" enctype="multipart/form-data">
				<div class="formcontainer">
					<div class="containerF">
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponName"><strong>折扣名稱:</strong></label><span id="u_checkName"></span><br>
						<input type="text" id="u_couponName" name="couponName" placeholder="請輸入折扣名稱" style="width: 90%"/><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponContext"><strong>折扣內容:</strong></label><span id="u_checkContext"></span><br>
						<input type="text" id="u_couponContext" name="couponContext" placeholder="請輸入折扣內容" style="width: 90%"/><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponCode"><strong>折扣碼:</strong></label><span id="u_checkCode"></span><br>
						<input type="text" id="u_couponCode" name="couponCode" placeholder="請輸入折扣碼" style="width: 90%"/><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponStartTime"><strong>折扣起始時間	:</strong></label><span id="u_checkStartTime"></span><br>
						<input type="date" id="u_couponStartTime" name="couponStartTime" placeholder="請輸入折扣起始時間" /><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponEndTime"><strong>折扣結束時間	:</strong></label><span id="u_checkEndTime"></span><br>
						<input type="date" id="u_couponEndTime" name="couponEndTime" placeholder="請輸入折扣結束時間" /><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="couponStatus"><strong>折扣狀態:</strong></label>
						<input type="radio"  name="couponStatus" value="有效" checked="checked">有效
						<input type="radio"  name="couponStatus" value="失效">失效
						</div>
						<input id="u_couponPkId" name="couponPkId" hidden="hidden">
					</div>
				</div>
				</form:form>	
				<div class="modal-footer">
	        	<button type="button" class="btn btn-default contactMember" id="updateCouponButton">確定提交</button>
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        	</div>					
			</div>
		</div>
	</div>
	
   
		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
			<div id="container" class="container" style='width: 1000px;'>
				<input id="searchBar" name="keyName" placeholder="請輸入關鍵字">
				<button type="button" id="searchData" class="btn btn-info">搜尋</button>
				<button type="button" id="addCouponForm" class="btn btn-success">新增折扣碼</button>
				<table class='table table-bordered' id='showAllCouponTable' >
					<thead>
						<tr>
							<th style='width: 100px;'>序號</th>
							<th style='width: 200px;'>折扣名稱</th>
							<th style='width: 100px;'>折扣碼</th>
							<th style='width: 100px;'>折扣內容</th>
							<th style='width: 150px;'>折扣起始時間</th>
							<th style='width: 150px;'>折扣結束時間</th>
							<th style='width: 100px;'>
							<select name="h_couponStatus" id="h_couponStatus">
									<option id ="狀態" value="狀態" selected="selected">狀態</option>
									<option id ="有效" value="有效" >有效</option>
									<option id ="失效" value="失效" >失效</option>
								</select>
							</th>
							<th style='width: 100px;'></th>
						</tr>
					</thead>
					<tbody id="couponBody">
						
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
	$(function(){
		showData();
		bindUpdateBtn();
		$("#addCouponForm").click(function(){
			$("#addCouponFormModal").modal("show");
		});
	
		$("#addCouponButton").click(function(){
			$("#addCouponForm").trigger("submit");
		});
	
	});
	
	function showData(){
		let str = "";
		<c:forEach var="coupon" items="${coupon}">
			str += "<tr>";
			str += "<td>${coupon.couponPkId}</td>";
			str += "<td>${coupon.couponName}</td>";
			str += "<td>${coupon.couponCode}</td>";
			str += "<td>${coupon.couponContext}</td>";
			str += "<td>${coupon.couponStartTime}</td>";
			str += "<td>${coupon.couponEndTime}</td>";
			str += "<td>${coupon.couponStatus}</td>";
			str += "<td><button type='button' class='btn btn-warning' id='updateCouponBtn${coupon.couponPkId}'>修改</button></td>";
			str += "<tr>";
		$("#couponBody").html(str); 
		</c:forEach>
	};
	function bindUpdateBtn(){
		<c:forEach var="coupon" items="${coupon}">
			$("#updateCouponBtn${coupon.couponPkId}").click(function(){
				$("#u_couponPkId").val("${coupon.couponPkId}");
				$("#u_couponName").val("${coupon.couponName}");
				$("#u_couponContext").val("${coupon.couponContext}");
				$("#u_couponCode").val("${coupon.couponCode}");
				$("#u_couponStartTime").val("${coupon.couponStartTime}");
				$("#u_couponEndTime").val("${coupon.couponEndTime}");
				let status="有效";
				if(${coupon.couponStatus}==status){
					$('#updateCouponForm > div > div > div:nth-child(6) > input[type=radio]:nth-child(2)').prop("checked",true);									
					$('#updateCouponForm > div > div > div:nth-child(6) > input[type=radio]:nth-child(3)').prop("checked",false);									
				}else{
					$('#updateCouponForm > div > div > div:nth-child(6) > input[type=radio]:nth-child(2)').prop("checked",false);									
					$('#updateCouponForm > div > div > div:nth-child(6) > input[type=radio]:nth-child(3)').prop("checked",true);									
																						
				}
				$("#updateCouponFormModal").modal("show");
				$("#updateCouponButton").click(function(){
					$("#updateCouponForm").trigger("submit");
				});
			});
		</c:forEach>
	};
	
	
	</script>
	</body>
</html>