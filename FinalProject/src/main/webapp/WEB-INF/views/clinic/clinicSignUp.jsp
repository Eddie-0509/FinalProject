<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="css/calendar_confirm-modal.css">
<script src="js/clinicSignUp.js"></script>

<style>
#upload{
display: inline;
    width: 250px;
}
#imageUpload{
display: inline;
height: 33.600px;
line-height: 33.600px;
}
</style>
</head>

<body>
	
	<div id="privacyModal" class="modal fade" style="color:black">
	<div class="modal-dialog"  style="width:50%">
	    <div class="modal-content">
	        <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            <h4 id="privayModalTitle" class="modal-title"  style="color:black">會員政策隱私權條款</h4>
	        </div>
	       <div id="privacyModalDiv" class="modal-body"  style="color:black">
	        <div>
	        <p>一、隱私權保護政策的適用範圍
隱私權保護政策內容，包括本網站如何處理在您使用網站服務時收集到的個人識別資料。隱私權保護政策不適用於本網站以外的相關連結網站，也不適用於非本網站所委託或參與管理的人員。
</P>
<p>
二、個人資料的蒐集、處理及利用方式
當您造訪本網站或使用本網站所提供之功能服務時，我們將視該服務功能性質，請您提供必要的個人資料，並在該特定目的範圍內處理及利用您的個人資料；非經您書面同意，本網站不會將個人資料用於其他用途。
本網站在您使用服務信箱、問卷調查等互動性功能時，會保留您所提供的姓名、電子郵件地址、聯絡方式及使用時間等。
於一般瀏覽時，伺服器會自行記錄相關行徑，包括您使用連線設備的IP位址、使用時間、使用的瀏覽器、瀏覽及點選資料記錄等，做為我們增進網站服務的參考依據，此記錄為內部應用，決不對外公佈。
為提供精確的服務，我們會將收集的問卷調查內容進行統計與分析，分析結果之統計數據或說明文字呈現，除供內部研究外，我們會視需要公佈統計數據及說明文字，但不涉及特定個人之資料。
</p>
<p>
三、資料之保護
本網站主機均設有防火牆、防毒系統等相關的各項資訊安全設備及必要的安全防護措施，加以保護網站及您的個人資料採用嚴格的保護措施，只由經過授權的人員才能接觸您的個人資料，相關處理人員皆簽有保密合約，如有違反保密義務者，將會受到相關的法律處分。
如因業務需要有必要委託其他單位提供服務時，本網站亦會嚴格要求其遵守保密義務，並且採取必要檢查程序以確定其將確實遵守。
</p>
<p>
四、網站對外的相關連結
本網站的網頁提供其他網站的網路連結，您也可經由本網站所提供的連結，點選進入其他網站。但該連結網站不適用本網站的隱私權保護政策，您必須參考該連結網站中的隱私權保護政策。
</p>
<p>

五、與第三人共用個人資料之政策
本網站絕不會提供、交換、出租或出售任何您的個人資料給其他個人、團體、私人企業或公務機關，但有法律依據或合約義務者，不在此限。
</p>

前項但書之情形包括不限於：

經由您書面同意。
法律明文規定。
為免除您生命、身體、自由或財產上之危險。
與公務機關或學術研究機構合作，基於公共利益為統計或學術研究而有必要，且資料經過提供者處理或蒐集者依其揭露方式無從識別特定之當事人。
當您在網站的行為，違反服務條款或可能損害或妨礙網站與其他使用者權益或導致任何人遭受損害時，經網站管理單位研析揭露您的個人資料是為了辨識、聯絡或採取法律行動所必要者。
有利於您的權益。
本網站委託廠商協助蒐集、處理或利用您的個人資料時，將對委外廠商或個人善盡監督管理之責。
<p>
六、Cookie之使用
為了提供您最佳的服務，本網站會在您的電腦中放置並取用我們的Cookie，若您不願接受Cookie的寫入，您可在您使用的瀏覽器功能項中設定隱私權等級為高，即可拒絕Cookie的寫入，但可能會導致網站某些功能無法正常執行 。
</p>

<p>
七、隱私權保護政策之修正
本網站隱私權保護政策將因應需求隨時進行修正，修正後的條款將刊登於網站上。</p>
	        </div>
	        </div>
			
	        <div class="modal-footer">
	        	<button type="button" class="btn btn-default contactMember" data-dismiss="modal" id="privacyAgree">同意</button>
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
				<li class="animate-box "><a href="<c:url value='clinicIndex'/>"
					class="transition">Home</a></li>
				<li class="animate-box fh5co-active"><a
					href="<c:url value='clinicIndex'/>" class="transition">回上頁</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>

		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main"
			data-colorbg="">
			<div class="container">
				<form:form method='POST' action="${pageContext.request.contextPath}/signUp" modelAttribute="clinic" id="clinicForm" class='form-horizontal' enctype="multipart/form-data">
					<h1>註冊</h1>
					<div class="usericon"></div>
					<div class="formcontainer">
						<div class="containerF">
							<h3>
								<i class="fas fa-tooth"></i>診所資料
							</h3>
							<br> 
								<div>
								<label for="clinicAccount"><strong>電子信箱</strong></label><span id="checkEmail"></span> 
								<input type="text" placeholder="請輸入E-mail" name="clinicAccount" id="clinicEmail" required >
								</div>
								<div>
								<label for="clinicPwd"><strong>密碼</strong></label><span id="checkPwd"></span><br/>
								<input type="password" placeholder="請輸入密碼" name="clinicPwd" id="clinicPwd" required>
								</div>
								<div>
								<label for="clinicPwdCheck"><strong>確認密碼</strong></label><span id="spPwdCheck"></span>
								<input type="password" placeholder="請再次輸入密碼" name="clinicPwdCheck" id="clinicPwdCheck" required>
								</div>
								<div>
								<label for="clinicName"><strong>診所名稱</strong></label> 
								<input type="text" placeholder="請輸入診所名稱" name="clinicName" id="clinicName"> 
								</div>
								<div>
								<label for="clinicPhone"><strong>診所電話</strong></label><span id="checkPhone"></span> 
								<input type="text" name="clinicPhone" id="clinicPhone" placeholder="02-xxxxxxx"><br> 
								</div>
								<label for="clinicCity"><strong>縣市 / 區</strong></label>
							<div>
								<select name="clinicCityId" id="city" class="form-control form-control-lg" style="width:10%">
									<option id="cityDefault">請選擇</option>
									<c:forEach var="city" items="${cities}" varStatus="vs">
										<option value="${city.cityPkId}">${city.cityName}</option>
									</c:forEach>
								</select> 
								<select name="clinicDistId" id="dist" class="form-control form-control-lg" style="width:10%">
									<option value="0" selected>請選擇</option>
								</select>
							</div>
							<label for="clinicAddress"><strong>地址</strong></label><br/>
							<input
								type="text" name="clinicAddress" id="clinicAddress">
							<div>
							<label for="upload">上傳診所圖片</label><br/>
  							<input id="upload" type="file" accept="image/*" name="clinicFile" >
<!--   							<input type="button" id="imageUpload" value="上傳" style="color : black;"> -->
<!-- 							<input type="hidden" id="clinicImage" name="clinicImage" value="defaultImage"> -->
							</div>
							<br/>
							<div id="privacyDiv">
							<input type="checkbox" id= "privacyCheck" name="privacyCheck" required="required">同意<a id=privacyBtn>隱私權條款</a>
							</div>
<!-- 								<input type="hidden"  name="clinicLocation"> -->
<!-- 								<input type="hidden"  name="clinicStartTime"> -->
<!-- 								<input type="hidden" name="clinicEndTime"> -->
<!-- 								<input type="hidden" name="clinicStatus"> -->
						</div>
						<div>
						<span ><a href="javascript:void(0)" id="eddieDemo">demo</a></span>
						<button class="btn btn-primary" type="button" id="formButton">送出</button>
						</div>

					</div>
				</form:form>
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
	$(function(){
		$("#eddieDemo").click(function(){
			$("#clinicEmail").val("tihtom@gmail.com")
			$("#clinicPwd").val("qq11!!!")
			$("#clinicPwdCheck").val("qq11!!!")
			$("#clinicName").val("宏昌牙醫診所")
			$("#clinicPhone").val("02-25794491")
			$("#clinicAddress").val("延吉街49號")
			flagPwd=true
			flagEmail = true
			flagPhone = true
// 			flagImage = true
			flagClinicPwdCheck = true
			
		})
		
		$("#privacyBtn").click(function(){
			$("#privacyModal").modal("show");
		});
		$("#privacyAgree").click(function(){
			$("#privacyCheck").prop("checked", true);
		})
		
	})
	
	async function confirmClinic() {
        this.myModal = new confirmNewClinic("確認", "確認診所資料填寫正確嗎?", "是", "否");

        try {
          const modalResponse = await myModal.question();
        } catch(err) {
          console.log(err);
        }
        
      }
	
	async function waitImage() {
        this.myModal = new confirmNewClinic("錯誤", "請等候圖片上傳成功", "是", "否");

        try {
          const modalResponse = await myModal.question();
        } catch(err) {
          console.log(err);
        }
        
      }
	
	async function imageSuccess() {
        this.myModal = new confirmNewClinic("確認", "圖片上傳成功", "是", "否");

        try {
          const modalResponse = await myModal.question();
        } catch(err) {
          console.log(err);
        }
        
      }
	
	async function wrongInput() {
        this.myModal = new confirmNewClinic("錯誤", "請輸入正確資料再送出", "是", "否");

        try {
          const modalResponse = await myModal.question();
        } catch(err) {
          console.log(err);
        }
        
      }
	
	async function wrongPrivacy() {
        this.myModal = new confirmNewClinic("錯誤", "須同意隱私政策", "是", "否");

        try {
          const modalResponse = await myModal.question();
        } catch(err) {
          console.log(err);
        }
        
      }
	
	
	var flagPwd = false;
		var flagEmail = false;
		var checkEmail = false;
		var flagPhone = false;
// 		var flagImage = true;
		var flagClinicPwdCheck=false;
		$(function() {
			
			// 使用Fetch 取得行政區
			$("#city").change(function() {
				$("#cityDefault").css("display","none")
				let str ="";
				let urlQuery = new URLSearchParams({
					cityPkId : $("#city").val(),
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

			$("#clinicEmail")
					.blur(
							function() {
								let emailVal = $("#clinicEmail").val();
								let span = $("#checkEmail");
								let flag1 = false;
								$("#checkEmail").css("color", "red");
								if (emailVal == "") {
									span
											.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入電子信箱");
									flagEmail = false;
									checkEmail = false;
								} else {
									for (let i = 0; i < emailVal.length; i++) {
										let char1 = emailVal.charCodeAt(i);
										if (char1 == 64) {
											span.html("");
											checkEmail = true;
											break;
										} else {
											flagEmail = false;
											checkEmail = false;

											span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確電子信箱");
										};
									};
								};
								
								if(checkEmail){
									let urlQuery = new URLSearchParams({
										clinicAccount : emailVal,
										method : "fetch()",
										doWhat : "post"
									});
									
									fetch("checkAccount", {
										method : "POST",
										body : urlQuery
									}).then(function(response) {
										return response.json();
									}).then(function(data) {
										if(data){
											flagEmail = true;
											span.css("color","green");
											span.html("&nbsp &nbsp <i class='far fa-check-circle'></i>帳號可以使用");
										}else {
											flagEmail = false;
											span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>帳號已被使用過");
										}
									})
									
								}

							});
			document.getElementById("clinicPwd").onblur = checkPwd;
			function checkPwd() {
				let flag1 = false, flag2 = false, flag3 = false;
				let span = document.getElementById("checkPwd");
				let pwdValue = document.getElementById("clinicPwd").value;
				document.querySelector("#checkPwd").style.color = 'red';
				if (pwdValue == "") {
					span.innerHTML = "&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入密碼";
					flagPwd = false;
				} else if (pwdValue.length <= 6) {
					span.innerHTML = "&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>密碼必須大於6";
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
							span.innerHTML = "";
							break;
						}
					}
					if (flag1 && flag2 && flag3) {
						span.innerHTML = "";
						flagPwd = true;
					} else {
						span.innerHTML = "&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確密碼格式";
						flagPwd = false;
					}
				}
			}
			
			$("#clinicPwdCheck").blur(function(){
				let span = $("#spPwdCheck");
				if($("#clinicPwdCheck").val()!=$("#clinicPwd").val()){
					flagClinicPwdCheck=false;
					span.css("color","red");
					span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>輸入密碼不同");
				}else {
					flagClinicPwdCheck=true;
					span.css("color","green");
					span.html("&nbsp &nbsp <i class='far fa-check-circle'></i>密碼相符");
				}
			});

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
											.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確電話號碼 ex.區碼-xxxxxxx");
									flagPhone = false;
								} else if (!a.test(phoneVal)) {
									span
											.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確電話號碼 ex.區碼-xxxxxxx");
									flagPhone = false;
								} else {
									span.html("");
									flagPhone = true;
								}

							});
			//  使用imgur API 上傳圖片 取得圖片網址
// 			var x="";
// 			$("#upload").change(function(e){
// 				flagImage=false;
// 				 x = e.target.files[0]; // get file object
// 				 console.log(x);
// 				});
				 
			
// 			$("#imageUpload").click(function(){
// 				flagImage=false;
// 				var form = new FormData();
// 				form.append("image", x);   //設定 圖片file值
// 				form.append("album", 'gMbwr3Z')  // 設定圖片存到哪一個相簿
				
// 				var settings = {
// 						  "method":"POST",
// 						  "url": "https://api.imgur.com/3/image",
// 						  "headers": {
// 						  "Authorization": "Bearer 83104ee9305c5df78a74dc0d479e208342f876ad",
// 						  "Access-Control-Allow-Headers":"Authorization, Content-Type, Accept, X-Mashape-Authorization, IMGURPLATFORM, IMGURUIDJAFO, SESSIONCOUNT, IMGURMWBETA, IMGURMWBETAOPTIN",
// 						  "Access-Control-Allow-Origin": "*",
// 						  "Access-Control-Allow-Methods":"GET, PUT, POST, DELETE, OPTIONS",
// 						  "Access-Control-Allow-Credentials" :"true"
// 						  },		
// 						  "processData": false,
// 						  "mimeType": "multipart/form-data",
// 						  "contentType": "multipart/form-data",
// 						  "data": form,
						  
// 						};
// 				$.ajax(settings).done(function (response) {  // 使用ajax 取得imgur網址
// 					let resJSON = JSON.parse(response);  
// 					let imageStr = resJSON.data.link;
// 					$("#clinicImage").attr("value", imageStr);
// 					flagImage=true;
// // 					window.alert("上傳成功");
// 					imageSuccess();
// 					$("body > dialog > div > div.simple-modal-button-group").children().remove();

// 					});
// 			})
			
			// 驗證每一個欄位都填寫正確再送出資料 並且上傳成功
			$("#formButton").click(function(){
				if($("#privacyDiv > input[type=checkbox]:checked").length>0){
					
				if(flagPwd && flagEmail &&flagPhone&&flagClinicPwdCheck){
// 				  $("#clinicForm").submit();
					confirmClinic();
// 				}else if (flagPwd && flagEmail &&flagPhone &&flagClinicPwdCheck&& (flagImage==false)){
// // 					window.alert("請等候圖片上傳");
// 					waitImage();
// 					$("body > dialog > div > div.simple-modal-button-group").children().remove();

				}else{
// 					window.alert("請輸入正確資料再送出");
						wrongInput();
						$("body > dialog > div > div.simple-modal-button-group").children().remove();

				}
				}else{
					wrongPrivacy();
					$("body > dialog > div > div.simple-modal-button-group").children().remove();

				}
				
			});
			
			
			
			
			
			
			
			
		});
	</script>
</body>
</html>