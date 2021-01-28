<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
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
<!-- <script -->
<!-- 	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script> -->
<!-- <script src="js/google_map.js"></script> -->


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
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script>


<!--登入modal css bySCONE-->
<link rel="stylesheet" href="css/login.css">
<!--註冊 css bySCONE-->
<link rel="stylesheet" href="css/sign.css">

<!--fontawesome bySCONE-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
	integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
	crossorigin="anonymous">

<!--首頁文字輪播、modal js bySCONE-->
<script src="js/hpother.js"></script>
<!-- 彩色modal的JS -->
<link rel="stylesheet" href="css/calendar_confirm-modal.css">
<script src="js/confirmNewDentist.js"></script>
<script src="js/deleteDentist.js"></script>
<script src="js/reviseDentist.js"></script>

<style>
.tableWidth{
width: 120px;
border-width: 3px;
border-style: solid;
border-color: black;
text-align: center;
border-color: white;

}
table{
margin: 0px auto;
margin-top: 10px;
}

.timeth{
background-color:#6C6C6C;
color: white;
}


.time{
background-color:#D0D0D0;
}

#colorsetumeis {
	margin:0px;
	margin-right:100px;
    float: right;
    }
.colorsetumei {
    /* border-radius: 50%; */
    vertical-align: middle;
    width: 20px;
    height: 10px;
    line-height: 10px;
}

.btn-primary {
    background: #84C1FF;
    color: #fff;
    border: 2px solid #84C1FF;
}

.btn-primary:hover {
    background: #46A3FF;
    color: #fff;
    border: 2px solid #46A3FF;
}

.tableBtn{
/* 	background:#46A3FF; */
background-color:#D0D0D0;
}
a.oneClick:hover{
	color:#C48888;
	border-color: #C48888;
}
a.oneClick{
	color:	#804040;
}

</style>
</head>

<body>
<!-- 	新增醫師的modal -->
<div id="newDentist" class="modal fade" style="color:black; ">
	<div class="modal-dialog"  style="width:1000px">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            <h4 id="AppointmentModalTitle" class="modal-title"  style="color:black">${loginOK.clinicName}</h4>
	        </div>
	        <div id="newDentistBody" class="modal-body"  style="color:black">
	        	<form:form modelAttribute="newDentist" action="${pageContext.request.contextPath}/newDentist" id="dentistForm" class='form-horizontal' enctype="multipart/form-data">
	        	<label for="dentistName">醫師姓名:</label>
	        	<input type="text" name="dentistName">
	        	<label for="dentistGender">醫師性別:</label>
	        	<select name="dentistGender">
	        	<option value="男">男</option>
	        	<option value="女">女</option>
	        	</select>
	        	<br/>
	        	<label for="dentistItem">主治項目:</label>
	        	<br/>
	        	<input type="checkbox" name="itemCheckBox" value="1">齬齒
	        	<input type="checkbox" name="itemCheckBox" value="2">洗牙
	        	<input type="checkbox" name="itemCheckBox" value="3">牙周病
	        	<input type="checkbox" name="itemCheckBox" value="4">人工贋復
	        	<input type="checkbox" name="itemCheckBox" value="5">根管治療
	        	<input type="checkbox" name="itemCheckBox" value="6">顯微根管
	        	<input type="checkbox" name="itemCheckBox" value="7">冷光美白
	        	<input type="checkbox" name="itemCheckBox" value="8">全口矯正
	        	<input type="checkbox" name="itemCheckBox" value="9">兒童牙科
	        	<input type="checkbox" name="itemCheckBox" value="10">敏感性牙齒
	        	<br/>
	        	<label for="dentistTime">看診時間:</label>       
	  			<table class="newTable"style="margin:'0 auto'">
	        	<thead>
	        	<tr>
	        	<th class="tableWidth timeth">時間</th>
	        	<th class="tableWidth timeth">Sunday</th>
	        	<th class="tableWidth timeth">Monday</th>
	        	<th class="tableWidth timeth">Tuesday</th>
	        	<th class="tableWidth timeth">Wednesday</th>
	        	<th class="tableWidth timeth">Thursday</th>
	        	<th class="tableWidth timeth">Friday</th>
	        	<th class="tableWidth timeth">Saturday</th>
	        	</tr>
	        	<tr>
	        	<th class="tableWidth timeth" rowspan="3">快速選填</th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick SunMorning"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick MonMorning"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	</tr>
	        	<tr>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	</tr>
	        	<tr>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	</tr>
	        	
	        	</thead>
	        	<tbody>
	        	<c:forEach var="time" items="${timeStringList}" varStatus="timeCount">
	        	<tr>
	        	<td class="tableWidth timeth">${time}</td>
	        	<td class="tableWidth time" ><input type="checkbox" name="timeCheckBox" value="${timeCount.count}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="timeCheckBox" value="${timeCount.count+28}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="timeCheckBox" value="${timeCount.count+56}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="timeCheckBox" value="${timeCount.count+84}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="timeCheckBox" value="${timeCount.count+112}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="timeCheckBox" value="${timeCount.count+140}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="timeCheckBox" value="${timeCount.count+168}"></td>
	        	</tr>
	        	</c:forEach>
	        	</tbody>
	        	</table>
	        	</form:form>
	        	
	        </div>
	        <div class="modal-footer">
	        	<button type="button" class="btn btn-default contactMember" id="newSubmit">確定新增</button>
	            <input type="reset" class="btn btn-default" id="clearForm" value="清空">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        </div>
	    </div>
	</div>
</div>
	
	
<!-- 	修改醫師資料的modal -->
<div id="reviseDentist" class="modal fade" style="color:black; ">
	<div class="modal-dialog"  style="width:1000px">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            <h4 id="AppointmentModalTitle" class="modal-title"  style="color:black">${loginOK.clinicName}</h4>
	        </div>
	        <div id="reviseDentistBody" class="modal-body"  style="color:black">
	        	<form:form action="${pageContext.request.contextPath}/reviseDentist" id="reviseForm" class='form-horizontal' enctype="multipart/form-data">
	        	<input type="hidden" name="dentistPkId"> 	        	
	        	
	        	醫師姓名: <span id="reviseDentistName"></span>
	        	<br/>
	        	醫師性別: <span id="reviseDentistGender"></span>
	        	<br/>
	        	<label for="dentistItem">主治項目:</label>
	        	<br/>
	        	<div id = divReviesItem>
	        	<input type="checkbox" name="reviseItem" value="1">齬齒
	        	<input type="checkbox" name="reviseItem" value="2">洗牙
	        	<input type="checkbox" name="reviseItem" value="3">牙周病
	        	<input type="checkbox" name="reviseItem" value="4">人工贋復
	        	<input type="checkbox" name="reviseItem" value="5">根管治療
	        	<input type="checkbox" name="reviseItem" value="6">顯微根管
	        	<input type="checkbox" name="reviseItem" value="7">冷光美白
	        	<input type="checkbox" name="reviseItem" value="8">全口矯正
	        	<input type="checkbox" name="reviseItem" value="9">兒童牙科
	        	<input type="checkbox" name="reviseItem" value="10">敏感性牙齒
	        	</div>
	        	<br/>
	        	<label for="dentistTime">看診時間:</label>       
	  			<table class="reviseTable" style="margin:'0 auto'">
	        	<thead>
	        	<tr>
	        	<th class="tableWidth timeth">時間</th>
	        	<th class="tableWidth timeth">Sunday</th>
	        	<th class="tableWidth timeth">Monday</th>
	        	<th class="tableWidth timeth">Tuesday</th>
	        	<th class="tableWidth timeth">Wednesday</th>
	        	<th class="tableWidth timeth">Thursday</th>
	        	<th class="tableWidth timeth">Friday</th>
	        	<th class="tableWidth timeth">Saturday</th>
	        	</tr>
	        	<tr>
	        	<th class="tableWidth timeth" rowspan="3">快速選填</th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick "><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>上午</a></th>
	        	</tr>
	        	<tr>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>下午</a></th>
	        	</tr>
	        	<tr>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	<th class="tableWidth timeth tableBtn"><a class="oneClick"><i class="fas fa-check-square"></i>晚間</a></th>
	        	</tr>
	        	
	        	</thead>
	        	<tbody>
	        	<c:forEach var="time" items="${timeStringList}" varStatus="timeCount">
	        	<tr>
	        	<td class="tableWidth timeth">${time}</td>
	        	<td class="tableWidth time" ><input type="checkbox" name="reviseTimeCheckBox" value="${timeCount.count}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="reviseTimeCheckBox" value="${timeCount.count+28}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="reviseTimeCheckBox" value="${timeCount.count+56}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="reviseTimeCheckBox" value="${timeCount.count+84}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="reviseTimeCheckBox" value="${timeCount.count+112}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="reviseTimeCheckBox" value="${timeCount.count+140}"></td>
	        	<td class="tableWidth time" ><input type="checkbox" name="reviseTimeCheckBox" value="${timeCount.count+168}"></td>
	        	</tr>
	        	</c:forEach>
	        	</tbody>
	        	</table>
	        	</form:form>
	        	
	        </div>
	        <div class="modal-footer">
	        	<button type="button" class="btn btn-default contactMember" id="reviseFormSubmit">修改</button>
	            <input type="reset" class="btn btn-default" id="clearReviseForm" value="清空">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        </div>
	    </div>
	</div>
</div>


	<!-- Loader -->
	<div class="fh5co-loader"></div>

	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
				<!-- 如果你是診所的頁面 -->
				<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>
				<li class="animate-box "><a href="<c:url value='clinicIndex'/>" class="transition">Home</a></li>
				<li class="animate-box"><a href="<c:url value='clinicCalendar'/>" class="transition">約診紀錄</a></li>
				<li class="animate-box"><a href="<c:url value='clinicAppoint'/>" class="transition">預約新增</a></li>
				<li class="animate-box"><a href="<c:url value='clinicDetail'/>" class="transition">診所資料</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='getDentist'/>" class="transition">醫師資料</a></li>
				<li class="animate-box"><a href="<c:url value='clinicCharts'/>" class="transition">報表</a></li>
				<li class="animate-box"><a href="<c:url value='logout'/>" class="transition style-logout">登出</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>

		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main"
			data-colorbg="">
			<div class="container">
			
			<c:forEach items="${dentistList}" var="dentists" varStatus="vsDentist">
				<button type="button" class="btn btn-success dentistBtn" value="${dentists.dentistPkId}">${dentists.dentistName}</button>
			</c:forEach>
			<button type="button" class="btn btn-info" id="newDentistBtn">新增醫師</button>
			<div id='dentistDetail' class='modal-body' hidden="hidden">
				<form action="${pageContext.request.contextPath}/deleteDentist" id="deleteForm" method="post">
				<input type="hidden" name="dentistPkId" id="dentistDetailId">
				</form>
	        	醫師姓名：<span id='dentistName'></span>
	        	<br>
	        	看診項目：<span id='dentistItem'></span>
	        	<br>
	        	看診時間：<span id='dentistTime'></span>
	        	<div id="colorsetumeis" class="animate-box">
	        	    <button type="button" class="btn btn-warning" id="reviseBtn">修改醫師資料</button>
	        	    <button type="button" class="btn btn-danger" id="deleteDoctor">刪除醫師</button>
					<label class="colorsetumei" style="background-color:#D0D0D0" ></label>醫師休診時間
					<label class="colorsetumei" style="background-color:#84C1FF" ></label>醫師看診時間
				</div>
	        	<table  id="tableReviseTime" style="margin:'0 auto'">
	        	<thead>
	        	<tr>
	        	<th class="tableWidth timeth">時間</th>
	        	<th class="tableWidth timeth">Sunday</th>
	        	<th class="tableWidth timeth">Monday</th>
	        	<th class="tableWidth timeth">Tuesday</th>
	        	<th class="tableWidth timeth">Wednesday</th>
	        	<th class="tableWidth timeth">Thursday</th>
	        	<th class="tableWidth timeth">Friday</th>
	        	<th class="tableWidth timeth">Saturday</th>
	        	</tr>
	        	</thead>
	        	<tbody>
	        	<c:forEach var="time" items="${timeStringList}" varStatus="timeCount">
	        	<tr>
	        	<td class="tableWidth timeth">${time}</td>
	        	<td class="tableWidth time" id="${timeCount.count}">&nbsp</td>
	        	<td class="tableWidth time" id="${timeCount.count+28}">&nbsp</td>
	        	<td class="tableWidth time" id="${timeCount.count+56}">&nbsp</td>
	        	<td class="tableWidth time" id="${timeCount.count+84}">&nbsp</td>
	        	<td class="tableWidth time" id="${timeCount.count+112}">&nbsp</td>
	        	<td class="tableWidth time" id="${timeCount.count+140}">&nbsp</td>
	        	<td class="tableWidth time" id="${timeCount.count+168}">&nbsp</td>
	        	</tr>
	        	</c:forEach>
	        	</tbody>
	        	</table>
	   			
	        </div>
	  
	        </div>
		</div>

		<footer id="fh5co-footer" class="js-fh5co-waypoint">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center">
						<p>
							<small>&copy; 2021 UYAYI. All Rights Reserved. </small>
						</p>
						<ul class="fh5co-social">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-instagram"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script>
	
	async function confirmError() {
        this.myModal = new confirmNewDentist("錯誤", "請選擇至少一個看診項目", "是", "否");

        try {
          const modalResponse = await myModal.question();
        } catch(err) {
          console.log(err);
        }
        
      }
	async function confirmTimeError() {
        this.myModal = new confirmNewDentist("錯誤", "請選擇至少一個看診時段", "是", "否");

        try {
          const modalResponse = await myModal.question();
        } catch(err) {
          console.log(err);
        }
        
      }
	
		
		async function confirmNew() {
	        this.myModal = new confirmNewDentist("確認", "確認新增醫師?", "是", "否");

	        try {
	          const modalResponse = await myModal.question();
	        } catch(err) {
	          console.log(err);
	        }
	        
	      }
		
		async function reviseDentistConform() {
	        this.reviseDentistModal = new reviseDentist("確認", "確認修改醫師資料?", "是", "否");

	        try {
	          const modalResponse = await reviseDentistModal.question();
	        } catch(err) {
	          console.log(err);
	        }
	        
	      }
		
		async function deleteDentistConform() {
	        this.deleteDentistModal = new deleteDentist("確認", "確認要刪除醫師?", "是", "否");

	        try {
	          const modalResponse = await deleteDentistModal.question();
	        } catch(err) {
	          console.log(err);
	        }
	        
	      }
	$(function(){
		
		
	$("#deleteDoctor").click(function(){
		
		deleteDentistConform();
// 		$("#deleteForm").trigger("submit");
	});
	$("#newSubmit").click(function(){
		if($("#dentistForm > input[type=checkbox]:checked").length<1){
			confirmError();
			$("body > dialog > div > div.simple-modal-button-group").children().remove();
			
		}else if($("#dentistForm > table > tbody > tr > td > input[type=checkbox]:checked").length < 1){
			confirmTimeError();
			$("body > dialog > div > div.simple-modal-button-group").children().remove();
			
		}else{
		confirmNew();
			
		}
// 	$("#dentistForm").trigger("submit");
	});
	$("#clearForm").click(function(){
	$("#dentistForm").trigger("reset");
		});
		
	$("#newDentistBtn").click(function(){
		$("#newDentist").modal("show");
	});
	
	$("#reviseFormSubmit").click(function(){
		
		if(($("#divReviesItem > input[type=checkbox]:checked").length < 1)){
			confirmError();
			$("body > dialog > div > div.simple-modal-button-group").children().remove();
			
		}else if($("#reviseForm > table > tbody > tr > td > input[type=checkbox]:checked").length < 1){
			confirmTimeError();
			$("body > dialog > div > div.simple-modal-button-group").children().remove();
			
		}else {
		reviseDentistConform();

		}
		// 		$("#reviseForm").trigger("submit");
	});
	
	$("#clearReviseForm").click(function(){
		$("#reviseForm").trigger("reset");

	});
	
	<c:forEach step="1" begin="2" end="8" var="j">
	$("#dentistForm > table > thead > tr:nth-child(2) > th:nth-child("+${j}+") > a").click(function(){
		for (var i = 1; i < 9; i++) {
			if($("#dentistForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j}+") > input[type=checkbox]").prop("checked")){
		$("#dentistForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j}+") > input[type=checkbox]").prop("checked", false);
			}else $("#dentistForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j}+") > input[type=checkbox]").prop("checked", true);
		};
	});
	</c:forEach>
		
	
	<c:forEach step="1" begin="1" end="7" var="j">
	$("#dentistForm > table > thead > tr:nth-child(3) > th:nth-child("+${j}+") > a").click(function(){
		for (var i = 13; i < 19; i++) {
			if($("#dentistForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked")){
		$("#dentistForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked", false);
			}else $("#dentistForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked", true);
		};
	});
	
	$("#dentistForm > table > thead > tr:nth-child(4) > th:nth-child("+${j}+") > a").click(function(){
		for (var i = 22; i < 29; i++) {
			if($("#dentistForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked")){
		$("#dentistForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked", false);
			}else $("#dentistForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked", true);
		};
	});
	</c:forEach>
	
	
	<c:forEach step="1" begin="2" end="8" var="j">
	$("#reviseForm > table > thead > tr:nth-child(2) > th:nth-child("+${j}+") > a").click(function(){
		for (var i = 1; i < 9; i++) {
			if($("#reviseForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j}+") > input[type=checkbox]").prop("checked")){
		$("#reviseForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j}+") > input[type=checkbox]").prop("checked", false);
			}else $("#reviseForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j}+") > input[type=checkbox]").prop("checked", true);
		};
	});
	</c:forEach>
		
	
	<c:forEach step="1" begin="1" end="7" var="j">
	$("#reviseForm > table > thead > tr:nth-child(3) > th:nth-child("+${j}+") > a").click(function(){
		for (var i = 13; i < 19; i++) {
			if($("#reviseForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked")){
		$("#reviseForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked", false);
			}else $("#reviseForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked", true);
		};
	});
	
	$("#reviseForm > table > thead > tr:nth-child(4) > th:nth-child("+${j}+") > a").click(function(){
		for (var i = 22; i < 29; i++) {
			if($("#reviseForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked")){
		$("#reviseForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked", false);
			}else $("#reviseForm > table > tbody > tr:nth-child("+i+") > td:nth-child("+${j+1}+") > input[type=checkbox]").prop("checked", true);
		};
	});
	</c:forEach>
	
	
	$("#reviseBtn").click(function(){
		$("#reviseDentist").modal("show");
	})
		
	});
	
	
	$(".dentistBtn").click(function(){
		$(".time").css("background-color", "#D0D0D0");
		
		let urlQuery = new URLSearchParams({
			dentistPkId : $(this).val(),
			method : "fetch()",
			doWhat : "GET"
		});

		fetch("getDentistBean?" + urlQuery, {
			method : "GET"
		}).then(function(response) {
			return response.json();
		}).then(function(data) {
			console.log(data);
			$("#reviseForm").trigger("reset");
			$("#dentistName").html(data.dentistName);
			$("#dentistDetailId").val(data.dentistPkId);
			$("#reviseDentistName").html(data.dentistName);
			$("#reviseForm > input[type=hidden]:nth-child(1)").val(data.dentistPkId);
			$("#reviseDentistGender").html(data.dentistGender);
			var itemStr = "";
			for(let i =0; i<data.itemsBean.length; i++){
				itemStr+=data.itemsBean[i].itemName+", ";
				let reviseItemStr = "#divReviesItem > input[type=checkbox]:nth-child("+(data.itemsBean[i].itemPkId)+")";
				$(reviseItemStr).prop("checked",true);
			}
			itemStr=itemStr.substring(0,itemStr.length-2);
			$("#dentistItem").html(itemStr);
			
			for(let j=0; j<data.timeTables.length; j++){
				let timeStr = "#"+data.timeTables[j].timeTablePkId;
				let reviseTimeStr = "#reviseForm > table > tbody > tr > td > input[value='"+data.timeTables[j].timeTablePkId+"']";
				$(timeStr).css("background-color", "#84C1FF");
				$(reviseTimeStr).prop("checked",true);

			}
		$("#dentistDetail").removeAttr("hidden");
			
		});
	})


	
	</script>
</body>
</html>