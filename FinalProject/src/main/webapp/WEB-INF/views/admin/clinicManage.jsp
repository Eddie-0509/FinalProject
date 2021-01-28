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
				<li class="animate-box fh5co-active"><a href="<c:url value='clinicManage'/>" class="transition">診所管理</a></li>
				<li class="animate-box"><a href="<c:url value='couponManage'/>" class="transition">折價券管理</a></li>
				<li class="animate-box"><a href="<c:url value='memberLogout'/>" class="transition style-logout">登出</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
   
		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
			<div id="container" class="container" style='width: 900px;'>
				<input id="searchBar" name="keyName" placeholder="請輸入關鍵字">
				<button type="button" id="searchData" class="btn btn-info">搜尋</button>
				<table class='table table-bordered' id='showAllClinicTable' >
					<thead>
						<tr>
							<th style='width: 100px;'>序號</th>
							<th style='width: 100px;'>
							<select name="h_clinicCity" id="h_clinicCity">
									<option id ="城市" value="城市" selected="selected">城市</option>
									<option id ="臺北市" value="1">臺北市</option>
									<option id ="新北市" value="2">新北市</option>
									<option id ="桃園市" value="3">桃園市</option>
									<option id ="臺中市" value="4">臺中市</option>
									<option id ="臺南市" value="5">臺南市</option>
									<option id ="高雄市" value="6">高雄市</option>
									<option id ="宜蘭縣" value="7">宜蘭縣</option>
									<option id ="新竹縣" value="8">新竹縣</option>
									<option id ="苗栗縣" value="9">苗栗縣</option>
									<option id ="彰化縣" value="10">彰化縣</option>
									<option id ="南投縣" value="11">南投縣</option>
									<option id ="雲林縣" value="12">雲林縣</option>
									<option id ="嘉義市" value="13">嘉義市</option>
									<option id ="嘉義縣" value="14">嘉義縣</option>
									<option id ="屏東縣" value="15">屏東縣</option>
									<option id ="臺東縣" value="16">臺東縣</option>
									<option id ="花蓮縣" value="17">花蓮縣</option>
									<option id ="澎湖縣" value="18">澎湖縣</option>
									<option id ="基隆市" value="19">基隆市</option>
									<option id ="新竹市" value="20">新竹市</option>
									<option id ="金門縣" value="21">金門縣</option>
									<option id ="連江縣" value="22">連江縣</option>
							</select>
							</th>
							<th style='width: 100px;'>地區</th>
							<th style='width: 200px;'>診所名稱</th>
							<th style='width: 150px;'>到期日</th>
							<th style='width: 100px;'>
							<select name="h_clinicStatus" id="h_clinicStatus">
									<option id ="狀態" value="狀態" selected="selected">狀態</option>
									<option id ="已開通" value="已開通" >已開通</option>
									<option id ="未驗證" value="未驗證" >未驗證</option>
									<option id ="已驗證" value="已驗證" >已驗證</option>
							</select>
							</th>
							<th style='width: 150px;'></th>
						</tr>
					</thead>
					<tbody id="clinicBody">
						
					</tbody>
				</table>
				<div id="searchResult">
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
	//模糊搜尋功能
	$("#searchData").click(function(){
		console.log($("#searchBar").val());
		fetch("getAllClinicByName?"+ "keyName=" + $("#searchBar").val(), {
			method : "GET"
		}).then(function(response) {
			return response.json();
		}).then(function(data) {
			if($("#h_clinicStatus option:selected").text()!="狀態"){
				$("#狀態").prop("selected","selected");
			}
			if($("#h_clinicCity option:selected").text()!="城市"){
				$("#城市").prop("selected","selected");
			}
			$("#searchResult").html("");
			clinic = data;
			showData();
			bindBtn();
			if(data==""){
				$("#searchResult").html("查無資料!!!");
			}
		});	
	});
	//依城市篩選診所
	$("#h_clinicCity").change(function(){
		let urlQuery = new URLSearchParams({
				h_clinicCity : $("#h_clinicCity option:selected").val(),
				h_status : $("#h_clinicStatus option:selected").val(),
				method : "fetch()",
				doWhat : "GET"
			});
			fetch("getAllClinicByCityAndStatus?" + urlQuery, {
				method : "GET"
			}).then(function(response) {
				return response.json();
			}).then(function(data) {
			$("#searchBar").val("");
				clinic = data;
				showData();
				bindBtn();
			});
	});
	//依權限篩選診所
	$("#h_clinicStatus").change(function(){
		let urlQuery = new URLSearchParams({
				h_clinicCity : $("#h_clinicCity option:selected").val(),
				h_status : $("#h_clinicStatus option:selected").val(),
				method : "fetch()",
				doWhat : "GET"
			});
			fetch("getAllClinicByCityAndStatus?" + urlQuery, {
				method : "GET"
			}).then(function(response) {
				return response.json();
			}).then(function(data) {
			$("#searchBar").val("");
				clinic = data;
				showData();
				bindBtn();
			});
	});
	
	$(function(){
		showRawData();
		bindRawBtn();
	});
	
	//顯示原始資料
	function showRawData(){
		let str = "";
		<c:forEach var="clinic" items="${clinics}">
		str += "<tr>";
		str += "<td>${clinic.clinicPkId}</td>";
		str += "<td>${clinic.cityBean.cityName}</td>"
		str += "<td>${clinic.distBean.distName}</td>"
		str += "<td>${clinic.clinicName}</td>"
		<c:choose>
		<c:when test="${clinic.clinicEndTime==null}">
		str += "<td>尚未開通</td>"
		</c:when>
		<c:otherwise>
		str += "<td>${clinic.clinicEndTime}</td>"
		</c:otherwise>		
		</c:choose>
		str += "<td>${clinic.clinicStatus}</td>"
		str += "<td><button type='button' id='clinicDetailBtn${clinic.clinicPkId}'>詳細資料</button>"
		str += "<div style='display:none'><form id='clinicDetail${clinic.clinicPkId}' action='${pageContext.request.contextPath}/clinicManage_Detail' method='get'><input name='clinicPkId' value='${clinic.clinicPkId}'/></form></div></td>";
		str += "</tr>"
		</c:forEach>
		$("#clinicBody").html(str);
	}
	
	function bindRawBtn(){
		<c:forEach var="clinic" items="${clinics}">
		$("#clinicDetailBtn${clinic.clinicPkId}").click(function(){
			$("#clinicDetail${clinic.clinicPkId}").trigger("submit");
		});
		</c:forEach>
	}
	//顯示診所資料(JSON格式)
	function showData(){
		let str = "";
		for(let i =0;i<clinic.length;i++){
		str += "<tr>";
		str += "<td>"+clinic[i].clinicPkId+"</td>";
		str += "<td>"+clinic[i].clinicCityName+"</td>"
		str += "<td>"+clinic[i].clinicDistName+"</td>"
		str += "<td>"+clinic[i].clinicName+"</td>"
		if(clinic[i].clinicEndTime ==null){
			str += "<td>尚未開通</td>";
		}else{
			str += "<td>"+formatDate(clinic[i].clinicEndTime)+"</td>"
		}
		str += "<td>"+clinic[i].clinicStatus+"</td>"
		str += "<td><button type='button' id='clinicDetailBtn"+clinic[i].clinicPkId+"'>詳細資料</button>";
		str += "<div style='display:none'><form id='clinicDetail"+clinic[i].clinicPkId+"' action='${pageContext.request.contextPath}/clinicManage_Detail' method='get'><input name='clinicPkId' value='"+clinic[i].clinicPkId+"'/></form></div></td>"
		str += "</tr>"
		}
		$("#clinicBody").html(str);
	}
	function bindBtn(){
		for(let i =0;i<clinic.length;i++){
			$("#clinicDetailBtn"+clinic[i].clinicPkId).click(function(){
				$("#clinicDetail"+clinic[i].clinicPkId).trigger("submit");
			});
		};
	};
	
	//JSON轉換時間格式
	function formatDate(date) {
	    var d = new Date(date),
	        month = '' + (d.getMonth() + 1),
	        day = '' + d.getDate(),
	        year = d.getFullYear();

	    if (month.length < 2) 
	        month = '0' + month;
	    if (day.length < 2) 
	        day = '0' + day;

	    return [year, month, day].join('-');
	}
	</script>
	
	</body>
</html>