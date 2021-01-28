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
	
	<link href='fonts/jf-openhuninn-1.1.ttf' rel='stylesheet' type='text/css'>
	
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
	  <link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.print.css" rel="stylesheet" media="print">
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script>
	  
	
	<!--登入modal css bySCONE-->
	<link rel="stylesheet" href="css/login.css">

	<!--fontawesome bySCONE-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous"> 

	<!--首頁文字輪播、modal js bySCONE-->	
	<script src="js/hpother.js"></script>
	<!-- 傳送JSTL資料到JS FILE -->
	<script type="text/javascript">
		var clinicName="${loginOK.clinicName}";
		var dnl="${DentistNameList}";
		var dil="${DentistIdList}";
		var id=[]
		var title=[]
		var start=[]
		var backgroundColor=[]
		var allevents=[]
// 		console.log("${AllAppointmentList}")
		<c:forEach var="allapplist" items="${AllAppointmentList}" varStatus="vs">
			id.push("${allapplist.appointmentPkId}")
			if("${allapplist.memberBean.memberName}" == ""){
				title.push("${allapplist.patientName}"+"(醫師："+"${allapplist.dentistBean.dentistName}"+")")
				start.push("${allapplist.appointDate}"+"T"+
			 			   ("${allapplist.timeTableBean.times}".substring(0,"${allapplist.timeTableBean.times}".length-6))+":00")		
				if("${allapplist.memberReply}"=="未回覆"){
			 		backgroundColor.push('#FFD1A4')
				}
				if("${allapplist.memberReply}"=="確定前往"){
			 		backgroundColor.push('#EA7500')
				}
			}
			else{
				title.push("${allapplist.memberBean.memberName}"+"(醫師："+"${allapplist.dentistBean.dentistName}"+")")
				start.push("${allapplist.appointDate}"+"T"+
			 			   ("${allapplist.timeTableBean.times}".substring(0,"${allapplist.timeTableBean.times}".length-6))+":00")		
				if("${allapplist.memberReply}"=="未回覆"){
			 		backgroundColor.push('#95CACA')
				}
				if("${allapplist.memberReply}"=="確定前往"){
			 		backgroundColor.push('#408080')
				}
			}
// 			d="${allapplist.appointDate}".substring(8);
		</c:forEach>
	</script>
	<!-- calendar JS&CSS  BySCONE-->
	<script src="js/calendar.js"></script>
	<link rel="stylesheet" href="css/calendar.css"></link>
<!-- 	確認彈窗 -->
	<link rel="stylesheet" href="css/calendar_confirm-modal.css"></link>
	<script src="js/calendar_confirm-modal.js"></script>
	<script src="js/appUpdate_confirm-modal.js"></script>
	<script src="js/appDelete_confirm-modal.js"></script>
	<script src="js/appDeleteInQuery_confirm-modal.js"></script>

	</head>

	<body>
	
	<!-- Loader -->
	<div class="fh5co-loader"></div>
	
	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
				<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>
				<li class="animate-box "><a href="<c:url value='clinicIndex'/>" class="transition">Home</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='clinicCalendar'/>" class="transition">約診紀錄</a></li>
				<li class="animate-box"><a href="<c:url value='clinicAppoint'/>" class="transition">預約新增</a></li>
				<li class="animate-box"><a href="<c:url value='clinicDetail'/>" class="transition">診所資料</a></li>
				<li class="animate-box"><a href="<c:url value='getDentist'/>" class="transition">醫師資料</a></li>
				<li class="animate-box"><a href="<c:url value='clinicCharts'/>" class="transition">報表</a></li>
				<li class="animate-box"><a href="<c:url value='logout'/>" class="transition style-logout">登出</a></li>
			</ul>
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>

		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
			<div class="container">
						
							<div id="calendarbutton" class="animate-box">
								<input type="button" value="MONTH" style="color: black;" id="monthBut"></input>
<!-- 								<input type="button" value="WEEK" style="color: black;" id="weekBut"></input> -->
								<input type="button" value="LIST" style="color: black;" id="listBut"></input>
								<input type="button" value="醫師別" style="color: black;" id="doctorBut"></input>
								<input type="button" value="查詢病患預約" style="color: black;" data-toggle="modal" data-target="#QueryModal" id="queryBut"></input>
								<input type="button" value="通知隔日預約" style="color: black;" id="inform"></input>
								<br>
							</div>
								<div id="colorsetumeis" class="animate-box">
									<label class="colorsetumei" style="background-color:#95CACA" ></label>平台預約－未回覆
									<label class="colorsetumei" style="background-color:#408080" ></label>平台預約－確定前往
									<label class="colorsetumei" style="background-color:#FFD1A4" ></label>診所預約－未回覆
									<label class="colorsetumei" style="background-color:#EA7500" ></label>診所預約－確定前往
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
		</div>
		
<!-- 預約詳細彈窗 -->
<div id="AppointmentModal" class="modal fade" style="color:black">
	<div class="modal-dialog">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            <h4 id="AppointmentModalTitle" class="modal-title"  style="color:black">預約詳細</h4>
	        </div>
	        <div id="AppointmentModalBody" class="modal-body"  style="color:black">
	        	病患姓名：<span id="patientName"></span>
	        	<br>
	        	病患電話：<span id="patientPhone"></span>
	        	<br>
	        	預約醫師：<span id="dentistName"></span>
	        	<br>
	        	預約項目：<span id="item"></span>
	        	<br>
	        	預約日期：<span id="date"></span>
	        	<br>
	        	預約時間：<span id="time"></span>
	        	<br>
	        	到診確認：<span id="reply"></span>
	  
	        </div>
	        <div class="modal-footer">
<!-- 	        	<button type="button" class="btn btn-default contactMember" data-toggle="modal" data-target="#ContactModal" data-dismiss="modal">連絡病患</button> -->
<!-- 	        	<button type="button" class="btn btn-default" onclick="openConfirmModal()">未到診回報</button> -->
<!-- 	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	             -->
	        </div>
	    </div>
	</div>
</div>

<!-- 修改預約彈窗 -->
<div id="AppointmentUpdateModal" class="modal fade" style="color:black">
	<div class="modal-dialog">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            <h4 id="AppointmentUpdateModalTitle" class="modal-title"  style="color:black">修改預約</h4>
	        </div>
	        <div id="AppointmentUpdateModalBody" class="modal-body"  style="color:black">
	        	病患姓名：<span id="upPatientName"></span>
	        	<br>
	        	病患電話：<span id="upPatientPhone"></span>
	        	<br>
	        	預約醫師：<span id="upDentistName"></span>
	        	<br>
	        	預約項目：<span id="upItem"></span>
	        	<br>
	        	預約日期：<span id="upDate"></span>
	        	<br>
	        	預約時間：<span id="upTime"></span>
	        	<br>
	        	到診確認：<span id="upReply"></span>
	  
	        </div>
	        <div class="modal-footer">
	        	<button type="button" class="btn btn-default" onclick="openUpdateConfirmModal()">修改</button>
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        </div>
	    </div>
	</div>
</div>


<!-- 聯絡 -->
<div id="ContactModal" class="modal fade" style="color:black">
	<div class="modal-dialog">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            <h4 id="ContactModalTitle" class="modal-title"  style="color:black"></h4>
	        </div>
	        <div id="ContactModalBody" class="modal-body"  style="color:black">
	        	
	        </div>
	        <div class="modal-footer">
	        	
	        </div>
	    </div>
	</div>
</div>

<!-- 查詢紀錄彈窗 -->
<div id="QueryModal" class="modal fade" style="color:black">
	<div class="modal-dialog">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            <h4 id="qmodalTitle" class="modal-title"  style="color:black">查詢預約紀錄</h4>
	        </div>
	        <div id="qmodalBody" class="modal-body"  style="color:black">
<!-- 	        	請輸入病患身分證字號：<input type="text" id="IdNumberToQuery"></input>	   -->
	        </div>
	        <div class="modal-footer">
<!-- 	        	<button type="button" class="btn btn-default" id="queryAppointment">查詢</button> -->
<!-- 	            <button type="button" class="btn btn-default" data-dismiss="modal" id="queryClose">Close</button>	             -->
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
	
	
	<script>
	async function openConfirmModal() {
        this.absentConfirmModal = new SimpleModal("確認", "確定回報此病患未到診？", "是", "否");

        try {
          const modalResponse = await absentConfirmModal.question();
          
        } catch(err) {
          console.log(err);
        }
        
      }
	
	async function openUpdateConfirmModal(){
		this.updateConfirmModal = new HHHHModal("確認", "確定修改？", "是", "否");
		try {
	          const modalResponse = await updateConfirmModal.question();
	         // alert(`The response is ${modalResponse}`);
	        } catch(err) {
	          console.log(err);
	        }
	}
	
	async function openDeleteConfirmModal(){
		this.deleteConfirmModal = new DDDModal("確認", "確定刪除？", "是", "否");
		try {
	          const modalResponse = await deleteConfirmModal.question();
	         // alert(`The response is ${modalResponse}`);
	        } catch(err) {
	          console.log(err);
	        }
	}
	
	async function openDeleteConfirmModalInQ(){
		console.log($(this).parent("td").siblings(":hidden").text())
		QdeleteConfirmModal = new DIQModal("確認", "確定刪除？", "是", "否");
		$("#deleteFormInputInQ").val($(this).parent("td").siblings(":hidden").text())
		try {  
			const modalResponse = await QdeleteConfirmModal.question();
	        } catch(err) {
	          console.log(err);
	        }
	}
	
	$(function(){
		var sideslider = $('[data-toggle=collapse-side]');
		var get_sidebar = sideslider.attr('data-target-sidebar');
		var get_content = sideslider.attr('data-target-content');
		sideslider.click(function(event){
		$(get_sidebar).toggleClass('in');
		$(get_content).toggleClass('out');
		});
		});
	
	
	$(function(){
		$("#inform").click(function(){
				let str ="";
				let urlQuery = new URLSearchParams({
					clinicPkId : ${loginOK.clinicPkId},
					method : "fetch()",
					doWhat : "GET"
				});
	
				
				fetch("clinicPush?" + urlQuery, {
					method : "GET"
				}).then(function(response) {
					return response.json();
				}).then(function(data) {
					
				});

		});
	});
	</script>
	
	</body>
</html>