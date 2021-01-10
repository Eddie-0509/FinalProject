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
	<style>
		#monthcalendar,#weekcalendar,#listcalendar,#doctorcalendar{
			background-color: rgba(202, 204, 206, 0.8);
			position: relative;
/* 			height: 'parent'; */
			color: black;
			display: inline-block;
			width: 1140px;
			margin: 40px auto;
			
		}
/* 		#calender h2{ */
/* 			color: black; */
/* 		} */
		

		.fc-agenda-slots td div {
            height: 6px;
            line-height: 6px;
        }
        .fc-agenda-axis {
            font-size:1px;
            line-height: 1px;
		}
		
		.fc-unthemed td.fc-today,th.fc-today{
			background-color:  rgba(202, 204, 206, 0.8);
		}
		
		#calendarbutton{
			text-align: right;

		}
		.nav-tabs li a{
			color: black;
		}
	</style>


	</head>

	<body>
	
	<!-- Loader -->
	<div class="fh5co-loader"></div>
	
	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
				<li class="animate-box "><a href="<c:url value='clinicIndex'/>" class="transition">Home</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='clinicCalendar'/>" class="transition">約診紀錄</a></li>
				<li class="animate-box"><a href="#" class="transition">診所資料</a></li>
				<li class="animate-box"><a href="#" class="transition">醫師資料</a></li>
				<li class="animate-box"><a href="#" class="transition">報表</a></li>
			</ul>
			<a href="#" class="transition style-logout">登出</a>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
   
		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
			<div class="container">

							<div id="calendarbutton" class="animate-box">
								<input type="button" value="MONTH" style="color: black;" id="monthBut"></input>
								<input type="button" value="WEEK" style="color: black;" id="weekBut"></input>
								<input type="button" value="LIST" style="color: black;" id="listBut"></input>
								<input type="button" value="醫師別" style="color: black;" id="doctorBut"></input>
							</div>
							<div id="monthcalendar" class="animate-box" style="display: none;"></div>
							<div id="weekcalendar" class="animate-box" style="display: none;"></div>
							<div id="listcalendar" class="animate-box" style="display: block;"></div>
							<div id="doctorcalendar" class="animate-box doctorC" style="display: none;">
								<ul class="nav nav-tabs">				
								
								</ul>
								<div class="tab-content">
				
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
	var dnl="${DentistNameList}"
	var afterdnl=dnl.substring(1,dnl.length-1);
	var Doctor=afterdnl.split(",");
	var DocNum = Doctor.length;
	var dil="${DentistIdList}";
	console.log(dil)
	var afterdil=dil.substring(1,dil.length-1);
	var DoctorId=afterdil.split(", ");
	console.log(DoctorId)
// 	<c:forEach items='${AppointmentBeanList}' var='applist'>
// 		console.log("${applist.appointmentPkId}");
// 	</c:forEach>
	//var allevents=a;
	//console.log(allevents);
	for (let dn=0;dn<DocNum;dn++){
		let DocName=Doctor[dn];
		//let hisevents=allevents[DocName];

		//迴圈新增行事曆div
		$(".tab-content").append('<div id="tab-'+dn+'"class="tab-pane"><div id="doctor'+dn+'"></div></div>');
		//迴圈新增上面標籤
		$(".nav-tabs").append('<li class=""><a data-toggle="tab" href="#tab-'+dn+'" class="tab'+dn+'">'+Doctor[dn]+'</a></li>');

	}
	//寫不出來QQ
	// $(".nav-tabs").children("li").eq(0).addClass("active");	
	// $(".nav-tabs").children("li").eq(0).attr("aria-expanded","true")
	// // $("#tab-0").attr("aria-expanded","true");
	// $("#tab-0").addClass("active");
	// $("#tab-0").addClass("tab-pane")
	// $("#doctor0").addClass("fc")
	// $("#doctor0").addClass("fc-unthemed")
	// $("#doctor0").addClass("fc-ltr")
	
	//格式化奇怪的日期
	function formatDate(NewDtime) {
	    var dt = new Date(parseInt(NewDtime));
	    var year = dt.getFullYear();
	    var month = dt.getMonth() + 1;
	    month=("0"+month);
	    month=month.substring(month.length-2);
	    var date = dt.getDate();
	    date=("0"+date);
		date=date.substring(date.length-2);
// 	    var hour = dt.getHours();
// 	    hour=("0"+hour);
// 	    hour=hour.substring(hour.length-2);
// 	    var minute = dt.getMinutes();
// 	    minute=("0"+minute);
// 	    minute=minute.substring(minute.length-2);
// 	    var second = dt.getSeconds();
// 	    second=("0"+second);
// 	    second=second.substring(second.length-2);
	
	    return year + "-" + month + "-" + date ;
	}

	
	for (let dn=0;dn<DocNum;dn++){
		$('.tab'+dn).on("click",function (e) {
			let hisevent=[{"hi":"HI"}];
			e.preventDefault();
			$(this).tab('show');
			$.ajax({
	             url: 'getAppointment',    //url位置
	             type: 'get',
	             async:false,
	             contentType: "application/json",
	             dataType : "JSON",
	             data:{
	            	 dentistId : DoctorId[dn]
	      
	             },//請求方式
	             success: function getresult(result) { 
					 for(let appnum=0;appnum<result.length;appnum++){ 			
	            	 //console.log("data="+result);
	      			 
		            	 hisevent.push({title:result[appnum].memberBean.memberName,
		      			 			   start: formatDate(result[appnum].appointDate)+"T"+
		      			 			   (result[appnum].timeTableBean.times).substring(0,(result[appnum].timeTableBean.times).length-6)})
	             	}
	      			 console.log(hisevent)
	             }
	        });
			//console.log("4"+hisevent)
			$("#doctor"+dn).fullCalendar({
				header: {
					left: 'prev,next today',
					center: 'title',
					right: 'none'
				},
				contentHeight: 500,
				defaultDate: $('#calendar').fullCalendar('today'), // 起始日期
				weekends: true, // 顯示星期六跟星期日
				defaultTimedEventDuration: '00:30:00',
				forceEventDuration: true,
				defaultView: "agendaWeek", 
				minTime: '08:00:00', 
				maxTime: '22:00:00', 
				events: hisevent
			});
		});
		
	}	
	
	
	
	$("#monthBut").on("click",function(){
		$("#monthcalendar").css("display","block");
		$("#weekcalendar").css("display","none");
		$("#listcalendar").css("display","none");
		$("#doctorcalendar").css("display","none");
	});
	$("#weekBut").on("click",function(){
		$("#monthcalendar").css("display","none");
		$("#weekcalendar").css("display","block");
		$("#listcalendar").css("display","none");
		$("#doctorcalendar").css("display","none");

	});
	$("#listBut").on("click",function(){
		$("#monthcalendar").css("display","none");
		$("#weekcalendar").css("display","none");
		$("#listcalendar").css("display","block");
		$("#doctorcalendar").css("display","none");
	});
	$("#doctorBut").on("click",function(){
		$("#monthcalendar").css("display","none");
		$("#weekcalendar").css("display","none");
		$("#listcalendar").css("display","none");
		$("#doctorcalendar").css("display","block");
		
	});
	
		$( "#monthcalendar" ).fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'none'
			},
			contentHeight: 500,
			defaultDate: $('#calendar').fullCalendar('today'), // 起始日期
			weekends: true, // 顯示星期六跟星期日
			editable: true,  // 啟動拖曳調整日期
			defaultView: "month", 
			minTime: '08:00:00', 
    		maxTime: '22:00:00',
			events: [ // 事件
				
				{
					title: "5",
					start: "2021-01-06",
				},
			
			]
		});

		$( "#weekcalendar" ).fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'none'
			},

			contentHeight: 500,
			defaultDate: $('#calendar').fullCalendar('today'), // 起始日期
			weekends: true, // 顯示星期六跟星期日
			editable: true,  // 啟動拖曳調整日期
			defaultView: "agendaWeek", 
			minTime: '08:00:00', 
    		maxTime: '22:00:00', 
			events: [ // 事件
				{ // 事件
					title: "5",
					start: "2021-01-06",
				},
			]
		});
		$("#listcalendar").fullCalendar({
			// 參數設定[註1]
			// themeSystem: 'bootstrap4',
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'none'
			},
			// themeSystem: 'bootstrap',
			// header: { // 頂部排版
			// 	left: "prev,next today", // 左邊放置上一頁、下一頁和今天
			// 	center: "title", // 中間放置標題
			// 	right: "month,agendaWeek,agendaDay,list" // 右邊放置月、周、天
			// },
			contentHeight: 500,
			defaultDate: $('#calendar').fullCalendar('today'), // 起始日期
			weekends: true, // 顯示星期六跟星期日
			editable: true,  // 啟動拖曳調整日期
			defaultView: "listDay", 
			defaultTimedEventDuration: '00:30:00',
			forceEventDuration: true,
			minTime: '08:00:00', 
    		maxTime: '22:00:00', 
			events: [ // 事件
				{ // 事件
					title: "first",
					start: "2021-01-07T12:00",
				 	// end: "2021-01-06",

				},
				{
					title: "second",
					start: "2021-01-07T13:00",
				}
			]
		});

	</script>
	
	</body>
</html>