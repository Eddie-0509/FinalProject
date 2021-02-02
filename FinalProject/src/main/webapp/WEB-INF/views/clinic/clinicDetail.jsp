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

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script>


<!--登入modal css bySCONE-->
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/calendar_confirm-modal.css">
<!--註冊 css bySCONE-->
<link rel="stylesheet" href="css/sign.css">

<!--fontawesome bySCONE-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
	integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
	crossorigin="anonymous">

<!--首頁文字輪播、modal js bySCONE-->
<script src="js/hpother.js"></script>
<script src="js/dentistModal.js"></script>
<script src="js/clinicPwdChange.js"></script>
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
	margin:auto;
/*     float: right; */
    }
.colorsetumei {
    /* border-radius: 50%; */
    vertical-align: middle;
    width: 20px;
    height: 10px;
    line-height: 10px;
}
.imgDiv{
text-align : center;

    
 text-align : center;
 
}


</style>
</head>

<body>
<!-- <div id="uploadSuccess" class="modal fade" style="color:black; z-index:1000000;"> -->
<!-- 	<div class="modal-dialog"  style="width:25%"> -->
<!-- 	    <div class="modal-content"> -->
<!-- 	     <div class="modal-header" style="background-color:#6FB7B7 "> -->
<!-- 	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button> -->
<!-- 	        </div> -->
<!-- 	     <div id="clinicDetailModalBody" class="modal-body"  style="color:black"> -->
<!-- 			<h2 style="color:black; text-align: center;">圖片上傳成功</h2> -->
<!-- 		</div> -->
<!-- 	    </div> -->
<!-- 	</div> -->
<!-- </div> -->


<div id="clinicPwdChangeModal" class="modal fade" style="color:black">
	<div class="modal-dialog"  style="width:50%">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            <h4 id="clinicDetailModalTitle" class="modal-title"  style="color:black">${clinicBean.clinicName}</h4>
	        </div>
	        <div id="clinicPwdChange" class="modal-body"  style="color:black">
			<form action="<c:url value='clinicChangePwd' />" id="clinicPwdForm" method="Post">
			<div><span id="oldPwdSpan"></span></div>
			<div>
			舊密碼:<input type="password" id="clinicOldPwd" name="clinicOldPwd" placeholder="請輸入舊密碼"/>
			</div>
			
			<div>
			新密碼:<span id="newPwdSpan"></span><input type="password" id = "clinicNewPwd" name="clinicNewPwd" placeholder="請輸入新密碼"/>
			</div>
			
			<div>
			確認新密碼:<span id="checkPwdSpan"></span><input type="password" id = "clinicNewPwdCheck" name="clinicNewPwdCheck" placeholder="請再次輸入新密碼"/>
			</div>
			
			</form>
	       
	  
	        </div>
	        <div class="modal-footer">
	        	<button type="button" class="btn btn-default contactMember" id="newPwdformButton">確定修改</button>
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        </div>
	    </div>
	</div>
</div>



	
<!-- 	修改診所資料的modal -->
<div id="clinicDetailModal" class="modal fade" style="color:black">
	<div class="modal-dialog"  style="width:50%">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            <h4 id="clinicDetailModalTitle" class="modal-title"  style="color:black">${clinicBean.clinicName}</h4>
	        </div>
	        <div id="clinicDetailModalBody" class="modal-body"  style="color:black">
	        <form:form id="reviseForm" modelAttribute="clinicBean" action="${pageContext.request.contextPath}/reviseClinic" method="POST" class='form-horizontal' enctype="multipart/form-data">
	        	<div>
	        	診所名稱：<input type="text" name="clinicName" value="${clinicBean.clinicName}" required>
	        	</div>
	        	<br>
	        	<div>
	        	診所電話：<input id="clinicPhone" type="text" name="clinicPhone" value="${clinicBean.clinicPhone}" placeholder="區碼-xxxxxxx" required><span id="checkPhone"></span>
	        	</div>
	        	<br>
	        	<div>
	        	診所縣市/區：
	        	<select name="clinicCityId" id="clinicCity" class="form-control form-control-lg" style="width:20%;display: inline;">
	        	<c:forEach var="city" items="${cityList}" varStatus="vs">
				<option value="${city.cityPkId}">${city.cityName}</option>
				</c:forEach>
	        	</select>
	        	<select name="clinicDistId" id="dist" class="form-control form-control-lg" style="width:20%;display: inline;">
	        	
	        	</select>
	        	</div>
	        	<br>
	        	<div>
	        	診所地址：<input type="text" name="clinicAddress" value="${clinicBean.clinicAddress}" style="width:70%;" required>
	        	</div>
	        	<br>
	        	<button type="button" class="btn btn-default" id="imageBtn">更改圖片</button>
	        	<br>
	        	<div id="chageImage" style="display: none;">
	        	更換圖片：
	        	<input type="file" id="upload" name="image">
	        	<br>
	        	</div>
	        </form:form>
	       
	  
	        </div>
	        <div class="modal-footer">
	        	<button type="button" class="btn btn-default contactMember" id="formButton">確定修改</button>
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
				<li class="animate-box fh5co-active"><a href="#" class="transition">診所資料</a></li>
				<li class="animate-box"><a href="<c:url value='getDentist'/>" class="transition">醫師資料</a></li>
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
			<div id="colorsetumeis" class="animate-box">
	        	    <button type="button" class="btn btn-warning" id="reviseClinic">修改診所資料</button>
	        	    <button type="button" class="btn btn-danger" id="reviseClinicPwd">修改密碼</button>
	        	  
			</div>
			診所帳號:<span>${clinicBean.clinicAccount}</span><br/>
			診所名稱:<span>${clinicBean.clinicName}</span><br/>
			診所電話:<span>${clinicBean.clinicPhone}</span><br/>
			所在縣市:<span>${clinicBean.cityBean.cityName}/${clinicBean.distBean.distName}</span><br/>
			診所地址:<span>${clinicBean.clinicAddress}</span><br/>
			診所會籍到期日:<span>${clinicBean.clinicEndTime}</span><br/>
	   			
	        </div>
	        <c:if test="${clinicBean.clinicImage !='defaultImage'}">
	        <div class="imgDiv animate-box">
			<img src="${clinicBean.clinicImage}" width="50%" style="margin:auto">
			</div>
	        </c:if>
	  
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
	<script>
	$(function(){
		if("${error}"=="原密碼錯誤"){
			$("#oldPwdSpan").css("color","red");
			$("#oldPwdSpan").html("原密碼錯誤");
			$("#clinicPwdChangeModal").modal("show");
		}
		
	 async function openConfirmModal() {
	        this.myModal = new SimpleModal("確認", "圖片上傳成功", "是", "否");

	        try {
	          const modalResponse = await myModal.question();
	        } catch(err) {
	          console.log(err);
	        }
	        
	      }
	 async function openConfirmModalForm() {
	        this.myModal = new SimpleModal("確認", "確認更改診所資料", "是", "否");

	        try {
	          const modalResponse = await myModal.question();
	        } catch(err) {
	          console.log(err);
	        }
	        
	      } 
	 async function waitImage() {
		        this.myModal = new SimpleModal("錯誤", "請等待圖片上傳成功", "是", "否");

		        try {
		          const modalResponse = await myModal.question();
		        } catch(err) {
		          console.log(err);
		        }
		        
		      }
	 async function wrongInput() {
	        this.myModal = new SimpleModal("錯誤", "請輸入正確診所資料", "是", "否");

	        try {
	          const modalResponse = await myModal.question();
	        } catch(err) {
	          console.log(err);
	        }
	        
	      }
	 async function confirmPwd() {
	        this.myModal = new confirmNewClinicPwd("確認", "確認更改診所密碼", "是", "否");

	        try {
	          const modalResponse = await myModal.question();
	        } catch(err) {
	          console.log(err);
	        }
	        
	      }
	 
	 async function errorPwd() {
	        this.myModal = new confirmNewClinicPwd("錯誤", "請輸入正確資料", "是", "否");

	        try {
	          const modalResponse = await myModal.question();
	        } catch(err) {
	          console.log(err);
	        }
	        
	      }
	 var flagPwd = false;
	 var flagClinicPwdCheck=false;

	 $("#reviseClinicPwd").click(function(){
		 $("#clinicPwdChangeModal").modal("show");
	 })
	 
	 $("#clinicOldPwd").blur(function(){
		 if($("#clinicOldPwd").val()==$("#clinicNewPwd").val()){
		 }
	 })
	 
	  $("#clinicNewPwd").blur(function(){
		  let flag1 = false, flag2 = false, flag3 = false;
			 $("#newPwdSpan").css("color", "red");
			let pwdValue = document.getElementById("clinicNewPwd").value;
			if (pwdValue == "") {
				$("#newPwdSpan").html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入密碼");
				flagPwd = false;
			} else if (pwdValue.length <= 6) {
				$("#newPwdSpan").html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>密碼必須大於6");
				flagPwd = false;
			} else {
				for (let i = 0; i < pwdValue.length; i++) {
					let char1 = pwdValue.charAt(i).toUpperCase();
					let char2 = pwdValue.charCodeAt(i);
					if (char1 >= "A" && char1 <= "Z") {
						flag1 = true;
					}
					if (char1 >= 0 && char1 <= 9) {
						flag2 = true;

					}
					if ((char2 >= 33 && char2 <= 47)
							|| (char2 >= 58 && char2 <= 64)
							|| (char2 >= 91 && char2 <= 96)
							|| (char2 >= 123 && char2 <= 126)) {
						flag3 = true;
					}

					if (flag1 && flag2 && flag3) {
						$("#newPwdSpan").html("");
						break;
					}
				}
				if (flag1 && flag2 && flag3) {
					$("#newPwdSpan").html("");
					  if($("#clinicOldPwd").val()==$("#clinicNewPwd").val()){
						 $("#newPwdSpan").html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>不可與舊密碼相同");
					 }else{
						 $("#newPwdSpan").html("");
								flagPwd = true;
		 				}
				} else {
					$("#newPwdSpan").html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確密碼格式");
					flagPwd = false;
				}
			}
		  
	 })
	 
	 $("#clinicNewPwdCheck").blur(function(){
		 let span = $("#checkPwdSpan");
			if($("#clinicNewPwdCheck").val()!=$("#clinicNewPwd").val()){
				flagClinicPwdCheck=false;
				span.css("color","red");
				span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>與新密碼不符");
			}else {
				flagClinicPwdCheck=true;
				span.css("color","green");
				span.html("&nbsp &nbsp <i class='far fa-check-circle'></i>密碼相符");
			}
	 });
	 
	 $("#newPwdformButton").click(function(){
		if(flagClinicPwdCheck&&flagPwd){
			confirmPwd();
		}else{
			errorPwd();
			$("body > dialog > div > div.simple-modal-button-group").children().remove();

		}
		 
	 });
	 
	 
		var flagPhone = true;
		var flagImage = true;
			$("#clinicPhone")
					.blur(
							function() {
								let phoneVal = $("#clinicPhone").val();
								let span = $("#checkPhone");
								let flag1 = false;
								let a = /\d{2,3}-\d{7,8}/;
								console.log(a);
								$("#checkPhone").css("color", "red");
								if (phoneVal == "") {
									span
											.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入電話號碼");
									flagPhone = false;
								} else if (phoneVal.length > 11) {
									span
											.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確電話號碼");
									flagPhone = false;
								} else if (!a.test(phoneVal)) {
									span
											.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確電話號碼");
									flagPhone = false;
								} else {
									span.html("");
									flagPhone = true;
								}

							});
		
	
		$("#imageBtn").click(function(){
			$("#chageImage").toggle();
		});
		
		$("#reviseClinic").click(function(){
			$("#clinicCity > option[value='${clinicBean.cityBean.cityPkId}']").prop('selected', true);
			$("#clinicCity > option[value='${clinicBean.cityBean.cityPkId}']").siblings().prop('selected', false);
			let str="";
			let urlQuery = new URLSearchParams({
				cityPkId : $("#clinicCity").val(),
				method : "fetch()",
				doWhat : "GET"
			});

			fetch("getDist?" + urlQuery, {
				method : "GET"
			}).then(function(response) {
				return response.json();
			}).then(function(data) {
				var jsonLength = 0;
				for(var item in data){
				jsonLength++;
				}
				for (var i = 0; i < data.length; i++) {
				let distName=data[i].distName;
					str+="<option value='"+data[i].distPkId+"'>"+distName+"</option>";
				}
					$("#dist").html(str);
			$("#dist > option[value='${clinicBean.distBean.distPkId}']").prop('selected', true);
			});
			$("#clinicDetailModal").modal("show");
		});
		
		$("#clinicCity").change(function() {
			let str ="";
			let urlQuery = new URLSearchParams({
				cityPkId : $("#clinicCity").val(),
				method : "fetch()",
				doWhat : "GET"
			});

			
			fetch("getDist?" + urlQuery, {
				method : "GET"
			}).then(function(response) {
				return response.json();
			}).then(function(data) {
				var jsonLength = 0;
				for(var item in data){
				jsonLength++;
				}
				for (var i = 0; i < data.length; i++) {
				let distName=data[i].distName;
					str+="<option value='"+data[i].distPkId+"'>"+distName+"</option>";
				}
					$("#dist").html(str);
			});

		});
		
// 	//  使用imgur API 上傳圖片 取得圖片網址
// 		var x="";
// 		$("#upload").change(function(e){
// 			flagImage=false;
// 			 x = e.target.files[0]; // get file object
// 			});
		
// 		$("#imageUpload").click(function(){
// 			flagImage=false;
// 			var form = new FormData();
// 			form.append("image", x);   //設定 圖片file值
// 			form.append("album", 'gMbwr3Z')  // 設定圖片存到哪一個相簿
			
// 			var settings = {
// 					  "async": true,
// 				      "crossDomain": true,
// 				      "processData": false,
// 				      "contentType": false,
// 					  "url": "https://api.imgur.com/3/image",
// 					  "method": "POST",
// 					  "timeout": 0,
// 					  "headers": {
// 						"Authorization": 'Bearer ' + "9d5b4a203ea24b781851009260d5138e60b510b9"
// 					  },
// 					  "processData": false,
// 					  "mimeType": "multipart/form-data",
// 					  "contentType": false,
// 					  "data": form
// 					};
// 			$.ajax(settings).done(function (response) {  // 使用ajax 取得imgur網址
// 				let resJSON = JSON.parse(response);  
// 				let imageStr = resJSON.data.link;
// 				$("#clinicImage").attr("value", imageStr);
// 				flagImage=true;
// 				openConfirmModal();
// 				$("body > dialog > div > div.simple-modal-button-group").children().remove();
// 				});
// 		})
		
		
		$("#formButton").click(function(){
			if(flagPhone && flagImage){
				openConfirmModalForm();
				$("#body > dialog > div > div.simple-modal-button-group > button.simple-modal-button-green").click(function(){
					$("#reviseForm").trigger("submit");
				})
			}else if (flagPhone &&(flagImage==false)){
				waitImage();
				$("body > dialog > div > div.simple-modal-button-group").children().remove();
			}else{
				wrongInput();
				$("body > dialog > div > div.simple-modal-button-group").children().remove();
			}
			
		});

	});
	
	
	
	</script>
</body>
</html>