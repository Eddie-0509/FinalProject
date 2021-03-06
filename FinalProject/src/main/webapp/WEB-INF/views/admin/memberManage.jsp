<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    		
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<link rel="stylesheet" href="css/calendar_confirm-modal.css">
	<script src="js/admin_updateMember.js"></script>
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
				<li class="animate-box"><a href="<c:url value='couponManage'/>" class="transition">折價券管理</a></li>
				<li class="animate-box fh5co-active"><a href="<c:url value='memberManage'/>" class="transition">會員管理</a></li>
				<li class="animate-box"><a href="<c:url value='clinicManage'/>" class="transition">診所管理</a></li>
				<li class="animate-box"><a href="<c:url value='memberLogout'/>" class="transition style-logout">登出</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
   
		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main" data-colorbg="">
			<div id="container" class="container" style='width: 1000px;'>
				<input id="searchBar" name="keyName" placeholder="請輸入會員姓名">
				<button type="button" id="searchData" class="btn btn-info">搜尋</button>
				<span ><a href="javascript:void(0)" id="searchDemo">demo</a></span>
				<table class='table table-bordered' id='showAllMemberTable' >
					<thead>
						<tr>
							<th style='width: 10%;'>序號</th>
							<th style='width: 40%;'>會員帳號</th>
							<th style='width: 15%;'>姓名</th>
							<th style='width: 10%;'>
							<select name="h_memberStatus" id="h_memberStatus">
									<option id ="狀態" value="狀態" selected="selected">狀態</option>
									<option id ="未開通" value="未開通" >未開通</option>
									<option id ="已開通" value="已開通" >已開通</option>
									<option id ="已填寫" value="已填寫" >已填寫</option>
									<option id ="停權" value="停權" >停權</option>
								</select>
							</th>
							<th style='width: 25%;'></th>
						</tr>
					</thead>
					<tbody id="memberBody">
						
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
	let model = ${members};
	let members = model.member;
	console.log(members);
	$("#searchDemo").click(function(){
		$("#searchBar").val("炭治郎");
	});
	$(document).ready(function(){
		showData();
		//依會員狀態篩選
		$("#h_memberStatus").change(function(){
			members = model.member;
			if($("#h_memberStatus option:selected").val()!="狀態"){
				m=[];
				for(i = 0; i<members.length; i++){
					if(members[i].memberStatus==($("#h_memberStatus option:selected").val())){
						m.push(members[i]);
					}
				}
				members = m;
				$("#searchBar").val("");
				showData();
			}else{
				let urlQuery = new URLSearchParams({
	 				h_memberStatus : $("#h_memberStatus option:selected").val(),
	 				method : "fetch()",
	 				doWhat : "GET"
	 			});
	 			fetch("getAllMemberByStatus?" + urlQuery, {
	 				method : "GET"
	 			}).then(function(response) {
	 				return response.json();
	 			}).then(function(data) {
					$("#searchBar").val("");
	 				members = data;
	 				showData();
	 			});
			}
		});
		//模糊搜尋會員姓名
		$("#searchData").click(function(){
			console.log($("#searchBar").val());
			let urlQuery = new URLSearchParams({
				keyName : $("#searchBar").val(),
				method : "fetch()",
				doWhat : "GET"
			});
			fetch("getAllMemberByName?" + urlQuery, {
				method : "GET"
			}).then(function(response) {
				return response.json();
			}).then(function(data) {
				members = data;
				if($("#h_memberStatus option:selected").val()!="狀態"){
					$("#狀態").prop("selected","selected");
				}
				showData();
				if(members==""){
					$("#searchResult").html("查無資料!!!");
				}else{
					$("#searchResult").html("");
				}
			});
		});
	});
	//會員清單表格內容生成及修改按鈕綁定
	function showData(){			
		//顯示會員資料
		let str = "";
		for (let i = 0; i < members.length; i++) {
			let j = i + 1;
			str += "<tr id='bean"+members[i].memberPkId+"'><td>" + j + "</td>";
			str += "<td>" + members[i].memberAccount+ "</td>";
			str += "<td>" + members[i].memberName+ "</td>";
			str += "<td>" + members[i].memberStatus+ "</td>";
			if(members[i].memberStatus=="停權"){
				str +="<td><button type ='button' class='btn btn-danger' id='updateBtn"+members[i].memberPkId+"'>開放</button> "	;	
			}else{
				str +="<td><button type ='button' class='btn btn-danger' id='updateBtn"+members[i].memberPkId+"'>停權</button> "	;	
			}
			str += "<button type ='button' class='btn btn-warning' id='memberDetail"+members[i].memberPkId+"'>歷史紀錄</button>";
			//更新會員狀態Form表單(隱藏)
			//會員權限及ID來更改權限
			str += "<div style='display:none'><form id='update_form"+members[i].memberPkId+"' action='${pageContext.request.contextPath}/updateMemberStatus' method='post'><input name='memberPkId' value='"+members[i].memberPkId+"'/><input name='memberStatus' value='"+members[i].memberStatus+"'/></form></div>";
			//查詢會員明細Form表單(隱藏)
			str += "<div style='display:none'><form id='show_form"+members[i].memberPkId+"' action='${pageContext.request.contextPath}/memberManage_Detail' method='POST'><input name='memberPkId' value='"+members[i].memberPkId+"'/></form></div></td>";
			str += "</tr>";
		}
		$("#memberBody").html(str);
		for(let i = 0; i < members.length; i++) {
			//更改權限功能(先檢查會員權限是否符合再進行修改)
			$("#updateBtn"+members[i].memberPkId).click(function(){
				if(members[i].memberStatus=="未開通"||members[i].memberStatus=="已開通"){
					errStatus();
					$("body > dialog > div > div.simple-modal-button-group").children().remove();
				}else{
					$("#update_form"+members[i].memberPkId).trigger("submit");
				}
				});
			$("#memberDetail"+members[i].memberPkId).click(function(){
				$("#show_form"+members[i].memberPkId).trigger("submit");
			});
		}
	}
	//修改商品確認彈窗
	async function errStatus() {
        this.myModal = new updateMember("確認", "會員尚未完成註冊，無法變更權限", "是", "否");

        try {
          const modalResponse = await myModal.question();
        } catch(err) {
          console.log(err);
        }
        
      }
	
	</script>
	</body>
</html>