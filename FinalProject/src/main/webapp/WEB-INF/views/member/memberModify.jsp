<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- 會員修改頁面<有顯示資料> -->
		
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

<!--DatePicker -->
<!--                     <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css"> -->
<!--                     <link type="text/css" rel="stylesheet" href="../cangas.datepicker"/> -->
<!--                     <script src="https://code.jquery.com/jquery-1.12.4.js"></script> -->
<!--                     <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->


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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.css"
	rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.print.css"
	rel="stylesheet" media="print">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script>


<!--登入modal css bySCONE-->
<link rel="stylesheet" href="css/login.css">

<!--fontawesome bySCONE-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
	integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
	crossorigin="anonymous">

<!--首頁文字輪播、modal js bySCONE-->
<script src="js/hpother.js"></script>

<style>
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

.containerf span {
	display: inline-block;
	width: 200px;
	text-align: right;
}

#Modal span, #Modalpass span{
		display:inline-block;width:200px;text-align:right;
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
				<!-- 如果你是會員的頁面 -->
				<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>
				<li class="animate-box "><a href="<c:url value='index'/>" class="transition">Home</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='/memberModify'/>" class="transition">會員資料</a></li>
				<li class="animate-box"><a href="<c:url value='/memberFirstVisit'/>" class="transition">會員初診</a></li>
				<li class="animate-box"><a href="<c:url value='/appointment'/>" class="transition">立即預約</a></li>
				<li class="animate-box"><a href="<c:url value='/appointmentRecord'/>" class="transition">預約紀錄</a></li>
				<li class="animate-box"><a href="<c:url value='/memberOrderTracking'/>" class="transition">訂單查詢</a></li>
				<li class="animate-box"><a href="<c:url value='products'/>" class="transition">商城</a></li>
				<li class="animate-box"><a href="<c:url value='memberLogout'/>" class="transition style-logout">登出</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
   
		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
			<div class="container">
                <table class='table table-bordered' >
                    <tr>
                        <th style='width: 250px;'>信箱帳號</th>
                        <th style='width: 100px;'>姓名</th>
                        <th style='width: 150px;'>身分證字號</th>
                        <th style='width: 250px;'>通訊地址</th>
                        <th style='width: 150px;'>電話</th>
                        <th style='width: 200px;'>修改</th>
                    </tr>
                    <tr>                    
                          <td>${member.memberAccount}</td>
                          <td>${member.memberName}</td> 
                          <td>${member.memberIdNumber}</td> 
                          <td>${member.memberAddress}</td> 
                          <td>${member.memberPhone}</td> 
                        <td>
<!--                             <a class="link-update" data-toggle="modal" data-target="#Modal">資料</a>  -->
							 <button class="btn btn-warning" data-toggle="modal" data-target="#Modal">修改資料</button>
							 <button class="btn btn-warning" data-toggle="modal" data-target="#Modalpass">修改密碼</button>
<!--                              <a class="link-update" data-toggle="modal" data-target="#Modalpass">密碼</a> -->
                        </td>
                    </tr>
     			</table>

        
<!--         修改會員資料 -->
        <div id="Modal" class="modal fade" style="color:black">
			<div class="modal-dialog">
			    <div class="modal-content">
			        <div class="modal-header">
			            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
			            <h4 id="AppointmentModalTitle" class="modal-title"  style="color:black">修改會員資料</h4>
			        </div>
			        <div id="AppointmentModalBody" class="modal-body"  style="color:black">		        
						<table border="1" class="table" hidden>
							<tbody>						
							<form:form action ="${pageContext.request.contextPath}/memberModifySo" method="post" modelAttribute="member" >	
							     <form:input placeholder="id"  path="memberPkId" style="display:none"/>
							     <form:input placeholder="信箱帳號不能改"  path="memberAccount" style="display:none"/>
							     <form:input placeholder="請輸入您的密碼" path="memberPwd" style="display:none"/>
							     <span><label>姓名：</label></span>
							     <form:input placeholder="請輸入您的姓名" path="memberName"/>
							     <br><br>
							     <form:input placeholder="身分證字號不能改" path="memberIdNumber" style="display:none"/>
							     <span><label>通訊地址：</label></span>
							     <form:input placeholder="請輸入您的地址" path="memberAddress"/>
							     <br><br>
							     <span><label>電話：</label></span>
							     <form:input placeholder="請輸入您的電話" path="memberPhone"/>
							     <br><br>
							     <form:input placeholder="狀態"  path="memberStatus" style="display:none"/>     
								 <div  class="modal-footer">
								           <button class="btn btn-default" id="update">修改</button>	
								           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>								                       
								 </div>
							 </form:form>
							</tbody>
						</table>   
       				</div>
			    </div>
			</div>
		</div>


<!--         修改會員密碼 -->

        <div id="Modalpass" class="modal fade" style="color:black">
			<div class="modal-dialog">
			    <div class="modal-content">
			        <div class="modal-header">
			            <button type="button" class="close" data-dismiss="modalpass"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
			            <h4 id="AppointmentModalTitle" class="modal-title"  style="color:black">修改會員資料</h4>
			        </div>
			        <div id="AppointmentModalBody" class="modal-body"  style="color:black">
			        
						<table border="1" class="table" hidden>
						<tbody>
						<form:form action ="${pageContext.request.contextPath}/memberModifySo" method="post" modelAttribute="member" >		
					     <form:input placeholder="id"  path="memberPkId" style="display:none"/>
					     <form:input placeholder="信箱帳號不能改"  path="memberAccount" style="display:none"/>
					     <label>密碼：</label>
					     <form:input placeholder="請輸入您的密碼" path="memberPwd" />
					     <br>
					     <form:input placeholder="請輸入您的姓名" path="memberName" style="display:none"/>
					     <form:input placeholder="身分證不能改" path="memberIdNumber" style="display:none"/>
					     <form:input placeholder="請輸入您的地址" path="memberAddress" style="display:none"/>
					     <form:input placeholder="請輸入您的電話" path="memberPhone" style="display:none"/>
					     <form:input placeholder="狀態"  path="memberStatus" style="display:none"/>
					     <br>
					     <div class="modal-footer">
						        <button class="btn btn-default" id="update2">修改</button>	
						        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						 </div>
						</form:form>
						</tbody>
						</table>    
					</div>	      
			    </div>
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

	
	</body>
</html>