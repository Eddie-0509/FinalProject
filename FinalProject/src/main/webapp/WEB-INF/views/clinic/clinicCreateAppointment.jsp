<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	  <link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.print.css" rel="stylesheet" media="print">
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script>
	  
	
	<!--登入modal css bySCONE-->
	<link rel="stylesheet" href="css/login.css">

	<!--fontawesome bySCONE-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous"> 

	<!--首頁文字輪播、modal js bySCONE-->	
	<script src="js/hpother.js"></script>
	<style>
		input,select{
		 color:black
		}
		#appFilter{
		width:70%;
		margin:auto;
/* 		border:1rem double #6C6C6C; */
		padding:2rem;
		position:relative;
		}
		#appFilterResult table{
		width:100%;
		}
		#appFilterResult thead{
		border-bottom:0.3rem solid #6C6C6C;
		}
		#appFilterResult tbody:before{
	    content:"@";
	    display:block;
	    line-height:1.5rem;
	    text-indent:-99999px;
		}
		input,select{vertical-align:middle;}
		
		#appointModal span{
		display:inline-block;width:200px;text-align:right;
		}
		
		#back{
		 color:black;
		 text-align:right;
		 margin-bottom:0;
/* 		 display:inline-block; */
		}
		h2{
		 display:inline;
		 margin:0;
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
				<li class="animate-box fh5co-active"><a href="<c:url value='clinicAppoint'/>" class="transition">預約新增</a></li>
				<li class="animate-box"><a href="<c:url value='clinicDetail'/>" class="transition">診所資料</a></li>
				<li class="animate-box"><a href="<c:url value='getDentist'/>" class="transition">醫師資料</a></li>
				<li class="animate-box"><a href="<c:url value='clinicCharts'/>" class="transition">報表</a></li>			
				<li class="animate-box"><a href="<c:url value='logout'/>" class="transition style-logout">登出</a></li>
			</ul>
			
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
   
		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
			<div class="container">
			
				<div id="appFilter">
					請選擇治療項目：
					<select id="item" onchange="getDentist()" class="form-control form-control-lg">
        			<option value="" >請選擇</option>
	        			<c:forEach items="${itemlist}" var="itemlist" varStatus="vs" >
	        				<c:set var="str" value="${itemlist.itemName}"/>
	        				<option value="${str}" >${str}</option>
						</c:forEach>
   					</select>
   					<br>
					請選擇醫師：
					<select id="dentist" onchange="getDentistTime()" class="form-control form-control-lg">
        				<option value="" >請選擇</option>
   					</select>
   					<br>
					請選擇時段：
					<select id="dentistTimeInterval" onchange="" class="form-control form-control-lg">
        				<option value="">請選擇</option>
   					</select>
   					<br>
					<input type="button" class="btn btn-primary mb-2" value="查詢" onclick="getResult()" style="margin:1rem auto 0 auto;text-align: center;display: block">
				</div>
				<div id="appFilterResult" style="display:none">
					
				</div>
			</div>
		</div>
<!-- 填入預約資料彈窗 -->
<div id="appointModal" class="modal fade" style="color:black">
	<div class="modal-dialog">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            <h4 id="appointModalTitle" class="modal-title"  style="color:black">填寫預約資料</h4>
	        </div>
   	            <form:form modelAttribute="newAppoint" id="appForm" class="form-horizontal" action="${pageContext.request.contextPath}/newAppoint" method="post" enctype="multipart/form-data">
	        <div id="appointModalBody" class="modal-body"  style="color:black;">
	   	            <span><label for=itemName>預約項目：</label></span>
	   	            <form:input type="text" id="itemName" path="itemName"  readonly="true" style='background-color:#e9ecef' />
	   	             <span><label for=dentistName>預約醫師：</label></span>
	   	            <form:input type="text" id="dentistName" path="dentistName"   readonly="true" style='background-color:#e9ecef'/>
	   	            <span><label for=appointDate>預約日期：</label></span>
	   	            <form:input type="text" id="appointDate" path="appointDate" readonly="true" style='background-color:#e9ecef' />
	   	            <span><label for=times>預約時間：</label></span>
	   	            <form:input type="text" id="times" path="times"  readonly="true" style='background-color:#e9ecef' />
	   	            <span><label for="patientName">姓名：</label></span>
	   	            <form:input type="text" id="patientName" path="patientName" placeholder="請輸入姓名"/>
	   	            <br />
		            <span><label for="patientPhone">電話：</label></span>
			        <form:input type="text" id="patientPhone" path="patientPhone" placeholder="請輸入電話"/>
			        <br />
			        <span><label for="patientIdNumber">身分證字號：</label></span>
			        <form:input type="text" id="patientIdNumber" path="patientIdNumber" placeholder="請輸入身分證字號"/>
	        </div>
	        <div class="modal-footer">
	        	<button type="button" class="btn btn-default" id="goToAppoint">預約</button>
	            <button type="button" class="btn btn-default" data-dismiss="modal" id="queryClose">Close</button>	            
	        </div>
		        </form:form>
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
	function disableForm(){
		  $('#itemName').attr('disabled', 'disabled');
		  $('#dentistName').attr('disabled', 'disabled');
		  $('#appointDate').attr('disabled', 'disabled');
		  $('#times').attr('disabled', 'disabled');
	}	
		
		function getDentist(){
			console.log($("#item").val())
			 $.ajax({
					url : 'getDentist',
					type : 'POST',		
					data : {
						item : $("#item").val(),
						method : "$.ajax()",
						doWhat : "POST"
					},
					success : function(data) {
						console.log(data.length)
						$("#dentist").html("<option value='' >請選擇</option><option value='anyone' >不限醫師</option>")
						for (let i=0;i<data.length;i++){
							$("#dentist option").eq(1).after("<option value="+data[i].dentistName+">"+data[i].dentistName+"</option>")
						}
					}
				})
		}
		function getDentistTime(){
			console.log($("#dentist").val());
			 $.ajax({
					url : 'getDentistTime',
					type : 'POST',		
					data : {
						item : $("#item").val(),
						dentist : $("#dentist").val(),
						method : "$.ajax()",
						doWhat : "POST"
					},
					success : function(data) {
						console.log(data)
						$("#dentistTimeInterval").html("<option value='' >請選擇</option>")
						if($.inArray( "上午", data )>-1 && $.inArray( "下午", data )>-1 &&$.inArray( "晚間", data )>-1){
							$("#dentistTimeInterval option").eq(0).after("<option value='anytime' >不限時段</option><option value='上午'>上午</option><option value='下午'>下午</option><option value='晚間'>晚間</option>")
						}else if($.inArray( "上午", data )>-1 && $.inArray( "下午", data )>-1){
							$("#dentistTimeInterval option").eq(0).after("<option value='anytime' >不限時段</option><option value='上午'>上午</option><option value='下午'>下午</option>")
						}else if($.inArray( "上午", data )>-1 && $.inArray( "晚間", data )>-1){
							$("#dentistTimeInterval option").eq(0).after("<option value='anytime' >不限時段</option><option value='上午'>上午</option><option value='晚間'>晚間</option>")
						}else if($.inArray( "下午", data )>-1 && $.inArray( "晚間", data )>-1){
							$("#dentistTimeInterval option").eq(0).after("<option value='anytime' >不限時段</option><option value='下午'>下午</option><option value='晚間'>晚間</option>")
						}else{
							$("#dentistTimeInterval option").eq(0).after("<option value='"+data[0]+"'>"+data[0]+"</option>")
						}
						
					}
			})
		}
		
		function getResult(){
			$("#appFilter").css("display","none");
			$("#appFilterResult").css("display","block");
			$("#itemName").val($("#item").val());
			$("#dentistName").val($("#dentist").val());
			$.ajax({
				url : 'getAppointable',
				type : 'POST',		
				data : {
					item : $("#item").val(),
					dentist : $("#dentist").val(),
					timeInterval : $("#dentistTimeInterval").val(),
					method : "$.ajax()",
					doWhat : "POST"
				},
				success : function(data) {
					console.log(data);
					let str="<h2>"+$("#dentist").val()+"醫師預約表</h2><p id='back'><button  onclick='back()'>回上頁</button></p><table><thead><tr><td>日期</td><td>時間</td><td>預約</td></tr></thead><tbody></tbody></table>";
					$("#appFilterResult").html(str);
					let arr = Object.keys(data);
					let len = arr.length;
					for(let i=0;i<len;i++){
						for(let r=0;r<data[arr[i]].length;r++){
							$("#appFilterResult tbody").append("<tr><td>"+arr[i]+"</td><td>"+data[arr[i]][r]+"</td><td><button type='button' class='btn btn-success openAppModal' onclick='openAppModal.call(this)'>預約此時段</button></td></tr>");
						}
					}
				}	
			})
		}
		
		$("#goToAppoint").on("click",function(){
			console.log("HIIII");
			$("#appForm").trigger("submit");
		})
		
		function openAppModal(){
// 			console.log($(this));
// 			console.log($(this).parent("td").siblings().eq(1).text());
			$("#appointDate").val($(this).parent("td").siblings().eq(0).text());
			$("#times").val($(this).parent("td").siblings().eq(1).text());
			$("#appointModal").modal("show");
			
		}
		
		function back(){
			$("#appFilterResult").css("display","none")
			$("#appFilter").css("display","block")
		}

	</script>
	
	</body>
</html>