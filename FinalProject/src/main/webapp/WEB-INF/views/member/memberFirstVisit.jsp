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
	<style>
		#Modal span{
		display:inline-block;width:200px;text-align:right;
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
				<li class="animate-box "><a href="<c:url value='/memberModify'/>" class="transition">會員資料</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='/memberFirstVisit'/>" class="transition">會員初診</a></li>
				<li class="animate-box "><a href="<c:url value='appointment'/>" class="transition">立即預約</a></li>
				<li class="animate-box "><a href="<c:url value='/appointmentRecord'/>" class="transition">預約紀錄</a></li>
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


<div class="result-wrap">
            <form name="myform" id="myform" method="post">
               
               

                            <div style="text-align:center;">您尚未填寫病歷表</div>
                    
                  <BR>
                           <div style="text-align:center;">
                                <a class="link-update" data-toggle="modal" data-target="#Modal">填寫</a>
                          </div>
            </form>
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
	            <h4 id="AppointmentModalTitle" class="modal-title"  style="color:black">填寫病歷表</h4>
	        </div>
	        <div id="AppointmentModalBody" class="modal-body"  style="color:black">
	        	
	        	
	        	
	        	
<table border="1" class="table">
<tbody>

<form:form action ="${pageContext.request.contextPath}/memberFirstVisitAddView" method="post" modelAttribute="md" id='form'>


     <input value="${LoginOK.memberPkId}"  name="mem5berPkId" style="display:none" />
     
     <span><label>緊急聯絡人：</label></span>
     <input placeholder="請輸入您的緊急聯絡人" id="clinicName" name="emergencyContact" required autofocus/>
  
     <br>
     
     <span><label>緊急連絡人電話：</label></span>
     <input placeholder="請輸入緊急聯絡人電話" name="emergencyNumber" id="clinicPhone"required autofocus/>
     <br>
     
     
     
     <span><label>緊急連絡人關係：</label></span>
     <input placeholder="請輸入與緊急聯絡人的關係" name="emergencyRelationship" id="emergencyRelationshipok"required autofocus/>
     <br>
     

     <span><label  for="sY">抽菸：</label></span>
	 <input type="radio" value="是" name="smoke" id="sY" />是
	 <input type="radio" value="否" name="smoke" id="sN" />否
     <br>
     
     <span><label for="bY">檳榔：</label></span>
	 <input type="radio" value="是" name="betelNut" id="bY"/>是
	 <input type="radio" value="否" name="betelNut" id="bN"/>否
     <br>
     
     
     
     <span><label>重大疾病：</label></span>
     <input placeholder="是否有重大疾病，請填寫" name="diseases" id="diseasesok" required autofocus/>
     <br>
     
     
     
     <span><label>過敏原：</label></span>
     <input placeholder="請填寫過敏原" name="allergy" id="allergyok" required autofocus/>
     <br>
     
     
     <span><label>手術史：</label></span>
     <input placeholder="請填寫動過的手術紀錄" name="surgery" id="surgeryok" required autofocus/></strong>
     <br> 
     
      <div class="modal-footer">
     <span ><a href="javascript:void(0)" id="memberDemo">memberDemo</a></span>
    
		<button class="btn btn-default" id="insert">新增</button>				                 
	</div>
</form:form>

</tbody>

</table>		
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
	
	
	
	
	
	
	
	
	
	<script>
	
	
	
	$(function(){
		$("#insert").click(function(){
			$("#form").trigger("submit");
		})
		
		$("#memberDemo").click(function(){
			$("#clinicEmail").val("zzz63214780000@gmail.com")
			$("#clinicPwd").val("a,123123")
			$("#clinicPwdCheck").val("a,123123")
			$("#clinicName").val("周君憲")
			$("#clinicPhone").val("0985329401")
			$("#diseasesok").val("長期插管")
			$("#allergyok").val("牛奶")
			$("#emergencyRelationshipok").val("母子")
			$("#surgeryok").val("大腸直腸癌微創手術")
			$("#sY").attr("checked",true)
			$("#bY").attr("checked",true)
			flagPwd=true
			flagEmail = true
			flagPhone = true
			flagImage = true
		    flagId = true
			flagClinicPwdCheck = true
			
		})
	})
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		var flagPwd = false;
		var flagEmail = false;
		var checkEmail = false;
		var flagPhone = false;
		var flagId = false;
		var flagClinicPwdCheck=false;
		
	
		$("#emergencyPhone")
		.blur(
				function() {
					let phoneVal = $("#emergencyPhone").val();
					let span = $("#checkPhone");
					let flag1 = false;
					let a = /^09\d{8}$/;
					console.log(a);
					$("#checkPhone").css("color", "red");
					if (phoneVal == "") {
						span
								.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i><BR>請輸入電話號碼");
						flagPhone = false;
					} else if (phoneVal.length > 11) {
						span
								.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i><BR>請輸入正確電話號碼 ex.0912345678");
						flagPhone = false;
					} else if (!a.test(phoneVal)) {
						span
								.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i><BR>請輸入正確電話號碼 ex.0912345678");
						flagPhone = false;
					} else {
						span.html("");
						flagPhone = true;
					}
				});
		
</script>	
</html>