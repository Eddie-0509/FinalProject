<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>

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
<!-- <meta property="og:title" content="" /> -->
<!-- <meta property="og:image" content="" /> -->
<!-- <meta property="og:url" content="" /> -->
<!-- <meta property="og:site_name" content="" /> -->
<!-- <meta property="og:description" content="" /> -->
<!-- <meta name="twitter:title" content="" /> -->
<!-- <meta name="twitter:image" content="" /> -->
<!-- <meta name="twitter:url" content="" /> -->
<!-- <meta name="twitter:card" content="" /> -->

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<!-- <link rel="shortcut icon" href="favicon.ico"> -->

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
<!-- <link -->
<!-- 	href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.css" -->
<!-- 	rel="stylesheet" /> -->
<!-- <link -->
<!-- 	href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.print.css" -->
<!-- 	rel="stylesheet" media="print"> -->
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.8.1/fullcalendar.min.js"></script>


<!--登入modal css bySCONE-->
<link rel="stylesheet" href="css/login.css">

<!--fontawesome bySCONE-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.1/css/all.css"
	integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
	crossorigin="anonymous">

<!--首頁文字輪播、modal js bySCONE-->
<script src="js/hpother.js"></script>

</head>

<body>

	<!-- Loader -->
	<div class="fh5co-loader"></div>

	<div id="fh5co-page">
		<nav id="fh5co-nav" role="navigation">
			<ul>
				<li class="animate-box "><a href="<c:url value='index'/>"
					class="transition">Home</a></li>
				<li class="animate-box fh5co-active"><a
					href="<c:url value='productManage'/>" class="transition">商品管理</a></li>
				<li class="animate-box"><a href="<c:url value='memberManage'/>"
					class="transition">會員管理</a></li>
				<li class="animate-box"><a href="<c:url value='clinicManage'/>"
					class="transition">診所管理</a></li>
				<li class="animate-box"><a
					href="<c:url value='commentManage'/>" class="transition">評論管理</a></li>
				<li class="animate-box"><a href="<c:url value='memberLogout'/>"
					class="transition style-logout">登出</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
		<!--新增/修改產品表單-->
	<div class="modal fade" id="productFormModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<form:form action="${pageContext.request.contextPath}/addProduct" method="POST" modelAttribute="product" enctype="multipart/form-data">
				<div class="formcontainer">
					<div class="containerF">
						<label><i class="fas fa-tooth"></i>產品資料</label><br> 
						<label for="productCategory" ><strong>產品類別</strong></label><span id="checkCategory"></span>
					<select name="productCategory" id="Category">
						<option id ="電動牙刷" value="電動牙刷" selected="selected">電動牙刷</option>
						<option id ="沖牙機" value="沖牙機">沖牙機</option>
						<option id ="牙刷" value="牙刷">牙刷</option>
						<option id ="牙膏" value="牙膏">牙膏</option>
					</select><br/>
						<label for="productName"><strong>產品名稱</strong></label><span id="checkName"></span>
						<input type="text" id="productName" name="productName" placeholder="請輸入產品名稱"/><br/>						
						<label for="productProfile" ><strong>產品簡介</strong></label><span id="checkProfile"></span>
						<textarea id="productProfile" name="productProfile" placeholder="請輸入產品簡介"></textarea><br/>						
						<label for="productSpec"><strong>產品規格</strong></label><span id="checkSpec"></span>
						<textarea id="productSpec" name="productSpec" placeholder="請輸入產品規格"></textarea><br/>						
						<label for="productPrice"><strong>產品價格</strong></label><span id="checkPrice"></span>
						<input type="text" id="productPrice" name="productPrice" placeholder="請輸入產品價格"/><br/>																
						<label for="productQuantity"><strong>產品數量</strong></label><span id="checkPrice"></span>
						<input type="text" id="productQuantity" name="productQuantity" placeholder="請輸入產品數量"/><br/>																
						<label for="productStutas"><strong>產品狀態</strong></label>
						<input type="radio" id="launch" name="productStatus" value="下架" checked="checked">下	架
						<input type="radio" id="unLaunch" name="productStatus" value="上架" >上架<br/>
						<div>
							<label for="upload" >上傳產品圖片</label>
  							<input id="upload" type="file" accept="image/*" multiple="multiple" />
  							<img id="preview_productImg" src="#" alt="your image" />
  							<input type="button"  type="button" id="imageUpload" value="上傳"><br/>
  							<input type='hidden' id='hiddenProductImage' name='productImage' value='#' >
						</div>
						<button class="btn btn-primary" type="submit">提交</button>
					</div>
				</div>
				</form:form>	
			</div>			
		</div>
	</div>		
		

		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main"
			data-colorbg="">
			<div id="container" class="container" style="width: 1500px">
				<table class='table table-bordered' id='showAllProductTable'>
					<thead>
						<tr>
							<th style='width: 60px;'>序號</th>
							<th style='width: 180px;'>產品圖片</th>
							<th style='width: 140px;'>
								<select name="h_productCategory" id="h_Category">
									<option id ="產品類別" value="all" selected="selected">產品類別</option>
									<option id ="電動牙刷" value="電動牙刷" >電動牙刷</option>
									<option id ="沖牙機" value="沖牙機">沖牙機</option>
									<option id ="牙刷" value="牙刷">牙刷</option>
									<option id ="牙膏" value="牙膏">牙膏</option>
								</select>
							</th>
							<th style='width: 150px;'>名稱</th>
							<th style='width: 200px;'>簡介</th>
							<th style='width: 200px;'>規格</th>
							<th style='width: 60px;'>
								<select name="h_price" id="h_price">
									<option id ="價格" value="價格" selected="selected">價格</option>
									<option id ="高到低" value="高到低" >高到低</option>
									<option id ="低到高" value="低到高" >低到高</option>
								</select>
							</th>
							<th style='width: 60px;'>數量</th>
							<th style='width: 120px;'>
								<select name="h_updateTime" id="h_updateTime">
									<option id ="更新時間" value="更新時間" >更新時間</option>
									<option id ="舊到新" value="舊到新" selected="selected">舊到新</option>
									<option id ="新到舊" value="新到舊" >新到舊</option>
								</select>
							</th>
							<th style='width: 80px;'>狀態</th>
							<th style='width: 80px;'></th>
						</tr>
					</thead>
					<tbody id="productBody">
						
					</tbody>
				</table>
						
						<input type="button" id="addProduct" value="新增產品" />
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
// 	產品清單表格內容生成及新增修改按鈕綁定
		let model = ${products};
		let products = model.product;
		
		let category = $("#category");
		let name = $("#productName");
		let profile = $("#productProfile");
		let spec = $("#productSpec");
		let price = $("#productPrice");
		let quantity = $("#productQuantity");
		let stutas = $('input[name="productStatus"]');
		let image = $("#preview_productImg");
		function showData(){			//顯示產品資料
			let str = "";
			for (let i = 0; i < products.length; i++) {
				let j = i + 1;
				let localDate = new Date(products[i].productUpdateDate).toLocaleDateString("zh-TW");
				str += "<tr id='bean"+products[i].productPkId+"'><td>" + j + "</td>";
				str += "<td>"+ "<img src='"+products[i].productImage+"' style='width:180px' />'"+ "</td>";
				str += "<td>" + products[i].productCategory+ "</td>";
				str += "<td>" + products[i].productName+ "</td>";
				str += "<td>" + products[i].productProfile+ "</td>";
				str += "<td>" + products[i].productSpec+ "</td>";
				str += "<td>" + products[i].productPrice+ "</td>";
				str += "<td>" + products[i].productQuantity+ "</td>";
				str += "<td>" + localDate + "</td>";
				str += "<td>" + products[i].productStatus+ "</td>";
				str += "<td><button type='button' id='updateProduct"+products[i].productPkId+"' value='bean"+products[i].productPkId+"'>修改</button></td>"
				str += "</tr>"
			};
			$("#productBody").html(str);
			for (let i = 0; i < products.length; i++) {
				$("#updateProduct"+products[i].productPkId).click(function(){
					$("#"+products[i].productCategory).attr("selected","selected");
					name.val(products[i].productName);
					profile.val(products[i].productProfile);
					spec.val(products[i].productSpec);
					price.val(products[i].productPrice);
					quantity.val(products[i].productQuantity);
					let launched = "下架";
					if(launched==products[i].productStatus){
					stutas[0].checked = true;									
					}else{
					stutas[1].checked = true;																		
					}
					image.attr("src",products[i].productImage);
					$("#upload").text("上傳產品圖片");
					$("#productFormModal").modal('show');
				});	
			};
		};
		
		$(document).ready(function() {
			showData();
							$("#addProduct").click(function(){
								$("#電動牙刷").attr("selected","selected");
								name.val("");
								profile.val("");
								spec.val("");
								price.val("");
								quantity.val("");
								stutas[0].checked = true;
								$("#productFormModal").modal('show');
							});
							$("#h_Category").change(function(){
								console.log($("#h_Category option:selected" ).text());
									fetch("http://localhost:9998/FinalProject/getAllProductsByCategory?"+ "h_productCategory=" + $(this).val(), {
										method : "GET"
										}).then(function(response) {
											return response.json();
											}).then(function(data) {
										products = data;
										showData();
									});	
							});
							
						});
		$("#h_updateTime").change(function(){
			$("#價格").attr("selected","selected");
			let v = $("#h_updateTime option:selected").text();
			if(v!="更新時間"){
				if(v=="新到舊"){
					products = products.sort(function (a, b) {
						 return a.productUpdateDate < b.productUpdateDate ? 1 : -1;
						});
					showData();
				}else{
					products = products.sort(function (a, b) {
						 return a.productUpdateDate > b.productUpdateDate ? 1 : -1;
						});
					showData();
				}
			};
		});
							
// 圖片上傳Imgur API功能
	var targetImage="";		//Image物件陣列(input內有限制Image檔案類別)
		$("#upload").change(function(e){
		readURL(this);
		targetImage = e.target.files[0]; 
		//e.target.files 會是一個陣列，裡面可以取得使用者所有想要上傳的檔案，陣列裡都是該檔案的 Blob 物件，而不是一般的物件。
		//只有上傳一個檔案，所以使用 e.target.files[0] 即可取得使用者想要上傳的檔案	
	});

	
	$("#imageUpload").click(function(){
		var str="";
		var form = new FormData();
		form.append("image", targetImage);   //設定 圖片file值
// 		form.append("album", 'gMbwr3Z')  // 設定圖片存到哪一個相簿
		
		//Setting內為Imgur Api required dateformat
		var settings = {
			"async": true,
			"crossDomain": true,
			"processData": false,
			"contentType": false,
			"url": "https://api.imgur.com/3/image",
			"method": "POST","timeout": 0,
			"headers": {
				"Authorization": 'Bearer ' + "bccfb85ad1d0f01076103c177dba532354ac9cc2"
				},//Oath2 Api token
			"processData": false,
			"mimeType": "multipart/form-data",
			"contentType": false,
			"data": form
			};
			$.ajax(settings).done(function (response) {  // 使用ajax 取得imgur網址
				let resJSON = JSON.parse(response);  
				let imageStr = resJSON.data.link;
				console.log(imageStr);
				$("#hiddenProductImage").val(imageStr);
				window.alert("上傳成功");
			});
	});
	
	

</script>

</body>
</html>