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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="js/google_map.js"></script>

	
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
				<!-- 如果你是會員的頁面 -->
				<li class="animate-box "><a href="<c:url value='index'/>" class="transition">Home</a></li>
				<li class="animate-box "><a href="<c:url value='/memberModify'/>" class="transition">修改會員</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='/memberFirstVisit'/>" class="transition">會員初診</a></li>
				<li class="animate-box"><a href="#" class="transition">立即預約</a></li>
				<li class="animate-box"><a href="#" class="transition">預約查詢</a></li>
				<li class="animate-box"><a href="<c:url value='memberOrderTracking'/>" class="transition">訂單查詢</a></li>
				<li class="animate-box"><a href="<c:url value='products'/>" class="transition">商城</a></li>
				<li class="animate-box"><a href="<c:url value='index'/>" class="transition style-logout">登出</a></li>
			</ul>
	
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
   
		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
		
			<div id="container" class="container" style='width: 1350px;'>
			<div class="container">

     +<div class="m-4">
    <table id="example" class="table" style="width:100%">
        <thead>
            <tr>
        
            </tr>
        </thead>
        <tbody>
            <tr>
             <td><strong>緊急聯絡人</strong></td>
                <td><strong>緊急連絡電話</strong></td>
                <td><strong>關係欄</strong></td>
            </tr>
            <tr>
                <td>${memberDetails.get(0).emergencyContact}</td>
                <td>${memberDetails.get(0).emergencyNumber}</td>
                <td>${memberDetails.get(0).emergencyRelationship}</td>
            </tr>
            
        </tbody>
    </table>
    <table id="example" class="table" style="width:100%">
     <tbody>
            <tr>
                <td><strong>抽菸史</strong></td>
                <td><strong>檳榔史</strong></td>
                <td><strong>重大疾病</strong></td>
                <td><strong>過敏原</strong></td>
                <td><strong>手術史</strong></td>
                
            </tr>
             <tr>
                <td>${memberDetails.get(0).smoke}</td> 
                <td>${memberDetails.get(0).betelNut}</td>  
                <td>${memberDetails.get(0).diseases}</td> 
                <td>${memberDetails.get(0).allergy}</td> 
                <td>${memberDetails.get(0).surgery}</td>
            </tr>
        </tbody>
     </table>
    
     <table id="example" class="table" style="width:100%">
   
               <div style="text-align:center;">
                   <a class="link-update" data-toggle="modal" data-target="#Modal">修改</a>
              </div>

     </table>
     </div>
    
        </div>
        </div>

    <!--/sidebar-->
    <div class="main-wrap">

        <div class="search-wrap">
            <div class="search-content">
       
            </div>
        </div>
        
        
        <div id="Modal" class="modal fade" style="color:black">
	<div class="modal-dialog">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	        <h4 id="AppointmentModalTitle" class="modal-title"  style="color:black"> <div style= "text-align:center;"><strong>修改病歷表 </strong></div></h4>
	        </div>
	        <div id="AppointmentModalBody" class="modal-body"  style="color:black">
	        	
	        	
	        	
	        	
<table border="1" class="table">
<tbody>

<form:form action ="${pageContext.request.contextPath}/modifyTheCase" method="post" modelAttribute="md" >

<!--      <input placeholder="id"  name="memberPkId" style="display:none"/> -->
     <strong>緊急聯絡人:<input placeholder="緊急聯絡人"  name="emergencyContact" /></strong>
     <BR>
     <strong>緊急連絡電話:<input placeholder="緊急連絡電話" name="emergencyNumber"/></strong>
     <BR>
     <strong>關係欄:<input placeholder="關係欄" name="emergencyRelationship"/></strong>
     <BR>
     <strong>抽菸史:<input placeholder="抽菸史" name="smoke" /></strong>
     <BR>
     <strong> 檳榔史:<input placeholder="檳榔史" name="betelNut"/></strong>
     <BR>
     <strong>重大疾病:<input placeholder="重大疾病" name="diseases"/></strong>
     <BR>
     <strong>過敏原:<input placeholder="過敏原" name="allergy"/></strong>
     <BR>
     <strong>手術史:<input placeholder="手術史" name="surgery"/></strong>
   
   
     <div style="text-align:center;"><input type="submit" value="修改" /></div>
     
</form:form>

</tbody>

</table>	
	        
	        	
	        	
	        	
	       
	        	
	        </div>
	        <div class="modal-footer">
	        	
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        </div>
	    </div>
	</div>
</div>


    </div>
    
    
    
    <!--/main-->
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