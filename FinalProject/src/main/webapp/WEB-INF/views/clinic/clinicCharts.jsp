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
	
	<!--圖表 -->
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
	
	<style type="text/css">
		#myDoughnutChart{
			width:45rem;
			height:45rem
		}
	
	</style>
	</head>

	<body>
	
	<!-- Loader -->
	<div class="fh5co-loader"></div>
	
	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>				<li class="animate-box "><a href="<c:url value='clinicIndex'/>" class="transition">Home</a></li>
				<li class="animate-box "><a href="<c:url value='clinicCalendar'/>" class="transition">約診紀錄</a></li>
				<li class="animate-box"><a href="<c:url value='clinicAppoint'/>" class="transition">預約新增</a></li>
				<li class="animate-box"><a href="<c:url value='clinicDetail'/>" class="transition">診所資料</a></li>
				<li class="animate-box"><a href="<c:url value='getDentist'/>" class="transition">醫師資料</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='clinicCharts'/>" class="transition">報表</a></li>
				<li class="animate-box"><a href="<c:url value='logout'/>" class="transition style-logout">登出</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
   
		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
			<div class="container">
				<a onclick='get' >總人數</a>
				<a onclick='getDentistData()' >醫師</a>
				<a onclick='getItemData()' >項目</a>
				<a onclick='get' >性別</a>
						<canvas id="" style="display:none"></canvas>
						<canvas id="myDentistBar" style="display:none"></canvas>
						<canvas id="myItemsPie" style="display:none"></canvas>
						<canvas id="" style="display:none"></canvas>
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
	<script >
	function getItemData(){
		$("#myItemsPie").css("display","block")
		$("#myDentistBar").css("display","none")
		var ItemPieLable=[];
		var ItemPieData=[];
		$.ajax({
			url : 'clinicItemsPie',
			type : 'GET',		
			data : {
				method : "$.ajax()",
				doWhat : "GET"
			},
			success : function(data) {
				console.log(data)
				console.log("ItemsPieData"+Object.keys(data))
				ItemPieLable=Object.keys(data)
				console.log(ItemPieLable.length)
				for(let a=0;a<ItemPieLable.length;a++){
					ItemPieData.push(data[ItemPieLable[a]])
				}
				console.log(ItemPieData)
				var ctx0 = document.getElementById('myItemsPie').getContext('2d');
				var myDoughnutChart = new Chart(ctx0, {
				    type: 'pie',
				    data: {				    	
				        datasets: [{
				        	backgroundColor: ['#f6e58d', '#ffbe76', '#ff7979', '#badc58', '#c7ecee', '#7ed6df', '#e056fd', '#686de0', '#95afc0', '#535c68'],
				            data: ItemPieData
				        	
				        }],
			
				        // These labels appear in the legend and in the tooltips when hovering different arcs
				        labels: ItemPieLable
				    },
				    options: {},
			
				});
				
			}	
		})
	}
	
	function getDentistData(){
		$("#myDentistBar").css("display","block")
		$("#myItemsPie").css("display","none")
		var DentistBarLable=[];
		var DentistBarData=[];
		$.ajax({
			url : 'clinicDentistBar',
			type : 'GET',		
			data : {
				method : "$.ajax()",
				doWhat : "GET"
			},
			success : function(data) {
				console.log(data)
				console.log("DentistBarLable"+Object.keys(data))
				DentistBarLable=Object.keys(data)
				console.log(DentistBarLable.length)
				for(let a=0;a<DentistBarLable.length;a++){
					DentistBarData.push(data[DentistBarLable[a]])
				}
				console.log(DentistBarData)
				var ctx1 = document.getElementById('myDentistBar').getContext('2d');
				var myDentistBart = new Chart(ctx1, {
				    type: 'bar',
				    data: {	    	
				        datasets: [{
						     label:"醫師總病患數",
				        	 barPercentage: 0.5,
				             barThickness: 6,
				             maxBarThickness: 8,
				             minBarLength: 2,
				        	backgroundColor: '#c78f74',
				            data: DentistBarData
				        	
				        }],
			
				        // These labels appear in the legend and in the tooltips when hovering different arcs
				        labels: DentistBarLable
				    },
				    options: {
				    	scales: {
					        yAxes: [{
					            ticks: {
					                beginAtZero:true
					            }
					        }]
				    	}	
				    } 
				});
				
			}	
		})
	}
	</script>
	
	</body>
</html>