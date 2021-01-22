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
<li><img src='images/UYAYI_white.png' id='logo' width='200' style='float:left;position: absolute; left: 100px; top: 17.6px;'/></li>				<li class="animate-box "><a href="<c:url value='index'/>"
					class="transition">Home</a></li>
				<li class="animate-box fh5co-active"><a
					href="<c:url value='productManage'/>" class="transition">商品管理</a></li>
				<li class="animate-box"><a href="<c:url value='memberManage'/>"
					class="transition">會員管理</a></li>
				<li class="animate-box"><a href="<c:url value='clinicManage'/>"
					class="transition">診所管理</a></li>
				<li class="animate-box"><a
					href="<c:url value='couponManage'/>" class="transition">折價券管理</a></li>
				<li class="animate-box"><a href="<c:url value='memberLogout'/>"
					class="transition style-logout">登出</a></li>
			</ul>
			<!--開關燈-->
			<a class="style-toggle js-style-toggle" data-style="default" href="#">
				<span class="fh5co-circle"></span>
			</a>
		</nav>
				<!--產品詳細資料-->
	<div class="modal fade" id="productDetail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content" >
			<div class="modal-header">
	            	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            	<h4 id="productDetailModalTitle" class="modal-title"  style="color:black"></h4>
	       	</div>
	       	<div>
			<table class='table table-bordered'>
				<thead>
					<tr>
					<th>類別</th>
					<th>狀態</th>
					<th>價格</th>
					<th>數量</th>
					<th>更新時間</th>
					</tr>
				</thead>
				<tbody>
					<tr>
					<td id="d_productCategory"></td>
					<td id="d_productStatus"></td>
					<td id="d_productPrice"></td>
					<td id="d_productQuantity"></td>
					<td id="d_productUpdateDate"></td>
					</tr>
				</tbody>
			</table>
	       	</div>
			<div >
			<img id="d_showImage" src="" style="width: 350px;height: 350px"/>
			</div>
			<div style="padding-left: 5px">
			<label>簡介:</label><p id="d_productProfile"></p>
			</div>
			<div style="padding-left: 5px">
			<label>規格:</label><p id="d_productSpec"></p>
			</div>

			<div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        </div>				
			</div>
		</div>
	</div>		
		<!--新增產品表單-->
	<div class="modal fade" id="addProductFormModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
	            	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            	<h4 id="addProductFormModalTitle" class="modal-title"  style="color:black">產品資料</h4>
	       		</div>
				<form:form action="${pageContext.request.contextPath}/addProduct" method="POST" modelAttribute="addProduct" enctype="multipart/form-data">
				<div class="formcontainer">
					<div class="containerF">
						<div style="padding-left: 10px;margin-top: 10px">
							<label for="productCategory" ><strong>產品類別:</strong></label><span id="checkCategory"></span>
							<select name="productCategory" id="a_Category">
							<option id ="a_電動牙刷" value="電動牙刷" selected="selected">電動牙刷</option>
							<option id ="a_沖牙機" value="沖牙機">沖牙機</option>
							<option id ="a_牙刷" value="牙刷">牙刷</option>
							<option id ="a_牙膏" value="牙膏">牙膏</option>
							</select>
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productName"><strong>產品名稱:</strong></label><span id="a_checkName"></span><br>
						<input type="text" id="a_productName" name="productName" placeholder="請輸入產品名稱" style="width: 90%"/><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productProfile" ><strong>產品簡介:</strong></label><span id="a_checkProfile"></span><br>
						<textarea id="a_productProfile" name="productProfile" placeholder="請輸入產品簡介" style="width: 90%"></textarea><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productSpec"><strong>產品規格:</strong></label><span id="a_checkSpec"></span><br>
						<textarea id="a_productSpec" name="productSpec" placeholder="請輸入產品規格" style="width: 90%"></textarea><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productPrice"><strong>產品價格:</strong></label><span id="a_checkPrice"></span><br>
						<input type="text" id="a_productPrice" name="productPrice" placeholder="請輸入產品價格" style="width: 90%"/><br/>																
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productQuantity"><strong>產品數量:</strong></label><span id="a_checkQuantity"></span><br>
						<input type="text" id="a_productQuantity" name="productQuantity" placeholder="請輸入產品數量" style="width: 90%"/><br/>																
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productStutas"><strong>產品狀態:</strong></label>
						<input type="radio"  name="productStatus" value="下架" checked="checked">下架
						<input type="radio"  name="productStatus" value="上架" >上架<br/>
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
							<label for="upload" >上傳產品圖片</label><span id ="a_checkimage"></span>
  							<input id="a_upload" type="file" accept="image/*" multiple="multiple" />
  							<img id="a_preview_productImg" src="#" alt="your image" style="width: 300px" />
  							<input type="button" id="a_imageUpload" value="上傳"><br/>
  							<input type='hidden' id='a_hiddenProductImage' name='productImage' value='#'/>
						</div>
					</div>
				</div>
				</form:form>	
				<div class="modal-footer">
	        	<button type="button" class="btn btn-default contactMember" id="addFormButton">確定提交</button>
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        	</div>					
			</div>
		</div>
	</div>		
		<!--修改產品表單-->
	<div class="modal fade" id="updateProductFormModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
	            	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span> <span class="sr-only">close</span></button>
	            	<h4 id="updateProductFormTitle" class="modal-title"  style="color:black">產品資料</h4>
	        </div>
				<form:form action="${pageContext.request.contextPath}/updateProduct" method="POST" modelAttribute="updateProduct" enctype="multipart/form-data">
				<div class="formcontainer">
					<div class="containerF">
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productCategory" ><strong>產品類別</strong></label><span id="checkCategory"></span>
							<select name="productCategory" id="u_Category">
							<option id ="u_電動牙刷" value="電動牙刷" selected="selected">電動牙刷</option>
							<option id ="u_沖牙機" value="沖牙機">沖牙機</option>
							<option id ="u_牙刷" value="牙刷">牙刷</option>
							<option id ="u_牙膏" value="牙膏">牙膏</option>
							</select>
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productName"><strong>產品名稱</strong></label><span id="u_checkName"></span><br/>
						<input type="text" id="u_productName" name="productName" placeholder="請輸入產品名稱" style="width: 90%"/><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productProfile" ><strong>產品簡介</strong></label><span id="u_checkProfile"></span><br/>
						<textarea id="u_productProfile" name="productProfile" placeholder="請輸入產品簡介" style="width: 90%"></textarea><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productSpec"><strong>產品規格</strong></label><span id="u_checkSpec"></span><br/>
						<textarea id="u_productSpec" name="productSpec" placeholder="請輸入產品規格" style="width: 90%"></textarea><br/>						
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productPrice"><strong>產品價格</strong></label><span id="u_checkPrice"></span><br/>
						<input type="text" id="u_productPrice" name="productPrice" placeholder="請輸入產品價格" style="width: 90%"/><br/>																
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productQuantity"><strong>產品數量</strong></label><span id="u_checkQuantity"></span><br/>
						<input type="text" id="u_productQuantity" name="productQuantity" placeholder="請輸入產品數量" style="width: 90%"/><br/>																
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
						<label for="productStutas"><strong>產品狀態</strong></label>
						<input type="radio" name="productStatus" value="下架" checked="checked">下架
						<input type="radio" name="productStatus" value="上架" >上架<br/>
						</div>
						<div style="padding-left: 10px;margin-top: 10px">
							<label for="upload" >上傳產品圖片</label>
  							<input id="u_upload" type="file" accept="image/*" multiple="multiple" />
  							<img id="u_preview_productImg" src="#" alt="your image" style="width: 300px" />
  							<input type="button"  id="u_imageUpload" value="上傳"><br/>
  							<input type='hidden' id='u_hiddenProductImage' name='productImage' value='#' >
						</div>
						<input type="text" id="u_productId" name="productPkId" hidden="hidden"/>
					</div>
				</div>
				</form:form>	
			<div class="modal-footer">
	        	<button type="button" class="btn btn-default contactMember" id="updateFormButton">確定修改</button>
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>	            
	        </div>			
			</div>
		</div>
	</div>		

		<div class="js-fh5co-waypoint fh5co-project-detail" id="fh5co-main"
			data-colorbg="">
			<div id="container" class="container" style='width: 1250px;'>
				<input id="searchBar" name="keyName" placeholder="請輸入關鍵字" style="color: gray"/>
				<button type="button" class="btn btn-info" id="searchData">搜尋</button>
				<button type="button" class="btn btn-success" id="addProductBtn" value="新增產品" >新增產品</button>
				<table class='table table-bordered' id='showAllProductTable' >
					<thead>
						<tr>
							<th style='width: 80px;'>序號</th>
							<th style='width: 100px;'>
								<select name="h_productCategory" id="h_Category" style="color: gray;">
									<option id ="產品類別" value="all" selected="selected">產品類別</option>
									<option id ="電動牙刷" value="電動牙刷" >電動牙刷</option>
									<option id ="沖牙機" value="沖牙機">沖牙機</option>
									<option id ="牙刷" value="牙刷">牙刷</option>
									<option id ="牙膏" value="牙膏">牙膏</option>
								</select>
							</th>
							<th style='width: 420px;'>名稱</th>
							<th style='width: 100px;'>
								<select name="h_price" id="h_price" style="color: gray">
									<option id ="價格" value="價格" selected="selected">價格</option>
									<option id ="高到低" value="高到低" >高到低</option>
									<option id ="低到高" value="低到高" >低到高</option>
								</select>
							</th>
							<th style='width: 100px;'>數量</th>
							<th style='width: 150px;'>
								<select name="h_updateTime" id="h_updateTime" style="color: gray">
									<option id ="更新時間" value="更新時間" selected="selected">更新時間</option>
									<option id ="舊到新" value="舊到新" >舊到新</option>
									<option id ="新到舊" value="新到舊" >新到舊</option>
								</select>
							</th>
							<th style='width: 100px;'>
								<select name="h_Status" id="h_Status" style="color: gray">
									<option id ="狀態" value="all" selected="selected">狀態</option>
									<option id ="上架" value="上架" >上架</option>
									<option id ="下架" value="下架" >下架</option>
								</select>
							</th>
							<th style='width: 100px;'></th>
						</tr>
					</thead>
					<tbody id="productBody">
						
					</tbody>
				</table>
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
	let model = ${products};
	let products = model.product;
	
	// 	產品清單表格內容生成及新增修改按鈕綁定
	function showData(){			
		//顯示產品資料
		let str = "";
		for (let i = 0; i < products.length; i++) {
			let j = i + 1;
			let localDate = new Date(products[i].productUpdateDate).toLocaleDateString("zh-TW");
			str += "<tr id='bean"+products[i].productPkId+"'><td>" + j + "</td>";
			str += "<td>" + products[i].productCategory+ "</td>";
			str += "<td><p id='productName"+products[i].productPkId+"'>" + products[i].productName+ "</p></td>";
			str += "<td>" + products[i].productPrice+ "</td>";
			str += "<td>" + products[i].productQuantity+ "</td>";
			str += "<td>" + localDate + "</td>";
			str += "<td>" + products[i].productStatus+ "</td>";
			str += "<td><button type='button' class='btn btn-warning' id='updateProductBtn"+products[i].productPkId+"' value='bean"+products[i].productPkId+"'>修改</button></td>"
			str += "</tr>";
		}
		$("#productBody").html(str);
			//綁定修改按鍵
		for(let i = 0; i < products.length; i++) {
			$("#updateProductBtn"+products[i].productPkId).click(function(){	
				$("#u_"+products[i].productCategory).attr("selected","selected");
				$("#u_productName").val(products[i].productName);
				$("#u_productProfile").val(products[i].productProfile);
				$("#u_productSpec").val(products[i].productSpec);
				$("#u_productPrice").val(products[i].productPrice);
				$("#u_productQuantity").val(products[i].productQuantity);
				$("#u_productId").val(products[i].productPkId);
				let launched = "下架";
				if(launched==products[i].productStatus){
					$('input:radio[name=productStatus][0]').checked = true;									
				}else{
					$('input:radio[name=productStatus][1]').checked = true;																		
				}
				$("#u_preview_productImg").attr("src",products[i].productImage);
				$("#u_hiddenProductImage").val(products[i].productImage);
				$("#updateProductFormModal").modal('show');
				$("#updateFormButton").click(function(){
					if(u_flagName && u_flagProfile && u_flagSpec && u_flagPrice && u_flagQuantity){
						$("#updateProduct").submit();			
					}else{
						alert("請重新確認表單內容");
					}
				});
				});
			$("#productName"+products[i].productPkId).on({
				mouseenter:function(){
					$(this).css("color","blue");
				},
				mouseleave:function(){
					$(this).css("color","black");
				},
				click:function(){
					$("#productDetailModalTitle").text(products[i].productName);
					let localDate = new Date(products[i].productUpdateDate).toLocaleDateString("zh-TW");
					$("#d_showImage").attr("src",products[i].productImage);
					$("#d_productCategory").text(products[i].productCategory);
					$("#d_productProfile").text(products[i].productProfile);
					$("#d_productSpec").text(products[i].productSpec);
					$("#d_productPrice").text(products[i].productPrice);
					$("#d_productQuantity").text(products[i].productQuantity);
					$("#d_productUpdateDate").text(localDate);
					$("#d_productStatus").text(products[i].productStatus);
					$("#productDetail").modal('show');
					
				},
			});
		};	
	};
	$(document).ready(function(){
		showData();
		//依產品類別篩選功能
		$("#h_Category").change(function(){
		console.log($("#h_Category option:selected").text());
		console.log($("#h_Status option:selected").text());
		fetch("getAllProductsByCategoryAndStatus?"+ "h_productCategory=" + $("#h_Category").val()
				+ "&h_Status=" + $("#h_Status").val(), {
			method : "GET"
			}).then(function(response) {
				return response.json();
				}).then(function(data) {
					products = data;
					showData();
					});	
		});
		//依產品狀態篩選功能
		$("#h_Status").change(function(){
		console.log($("#h_Category option:selected").text());
		console.log($("#h_Status option:selected").text());
		fetch("getAllProductsByCategoryAndStatus?"+ "h_productCategory=" + $("#h_Category").val() 
				+ "&h_Status=" + $("#h_Status").val(), {
			method : "GET"
			}).then(function(response) {
				return response.json();
				}).then(function(data) {
					products = data;
					showData();
					});	
		});
		//產品名稱模糊搜尋功能
		$("#searchData").click(function(){
			console.log($("#searchBar").val());
			fetch("getAllProductsByName?"+ "keyName=" + $("#searchBar").val(), {
				method : "GET"
				}).then(function(response) {
					return response.json();
					}).then(function(data) {
						products = data;
						showData();
						});	
		});
		$("#addProductBtn").click(function(){
			$("#電動牙刷").attr("selected","selected");
			$("#a_productName").val("");
			$("#a_productProfile").val("");
			$("#a_productSpec").val("");
			$("#a_productPrice").val("");
			$("#a_productQuantity").val("");
			$('input:radio[name=productStatus][0]').checked = true;	
			$("#a_checkName").html("");
			$("#a_checkProfile").html("");
			$("#a_checkSpec").html("");
			$("#a_checkPrice").html("");
			$("#a_checkQuantity").html("");
			$("#addProductFormModal").modal('show');
			$("#addFormButton").click(function(){
				if(a_flagName && a_flagProfile && a_flagSpec && a_flagPrice && a_flagQuantity && a_flagImage){
					$("#addProduct").submit();			
				}else{
					alert("請重新確認表單內容");
				}
			});
		});
	});
	//新增表單欄位檢查
	var a_flagName = false;
	var a_flagProfile =false;
	var a_flagSpec = false;
	var a_flagPrice = false;
	var a_flagQuantity = false;
	var a_flagImage = false;

	$("#a_productName").blur(function(){
		let nameVal = $("#a_productName").val();
		let span = $("#a_checkName");
		span.css("color","red");
		if(nameVal ==""){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品名字");
			a_flagName =false;
		}else{
			span.html("");
			a_flagName = true;
		}
	});
	$("#a_productProfile").blur(function(){
		let profileVal = $("#a_productProfile").val();
		let span = $("#a_checkProfile");
		if(profileVal ==""){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品簡介");
			a_flagProfile = false;
		}else{
			span.html("");
			a_flagProfile = true;
		}
	});
	$("#a_productSpec").blur(function(){
		let specVal = $("#a_productSpec").val();
		let span = $("#a_checkSpec");
		if(specVal ==""){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品規格");
			a_flagSpec = false;
		}else{
			span.html("");
			a_flagSpec = true;
		}
	});
	$("#a_productPrice").blur(function(){
		let priceVal = $("#a_productPrice").val();
		let span = $("#a_checkPrice");
		let a = /\d/;
		if(priceVal==""){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品價格");
			a_flagPrice = false;
		}else if(!a.test(priceVal)){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品價格");
			a_flagPrice = false;	
		}else{
			span.html("");
			a_flagPrice = true;
		}
	});
	$("#a_productQuantity").blur(function(){
		let quantityVal = $("#a_productQuantity").val();
		let span = $("#a_checkQuantity");
		let a = /\d/;
		if(quantityVal==""){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品價格");
			a_flagQuantity = false;
		}else if(!a.test(quantityVal)){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品價格");
			a_flagQuantity = false;	
		}else{
			span.html("");
			a_flagQuantity = true;
		}
	});
	$("#a_hiddenProductImage").change(function(){
		a_flagImage = true;
	});
	//修改表單欄位檢查
	var u_flagName = true;
	var u_flagProfile =true;
	var u_flagSpec = true;
	var u_flagPrice = true;
	var u_flagQuantity = true;
	$("#u_productName").blur(function(){
		let nameVal = $("#u_productName").val();
		let span = $("#u_checkName");
		if(nameVal==""){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品名稱");
			u_flagName = false;
		}else{
			span.html("");
			u_flagName = true;
		}
	});
	$("#u_productProfile").blur(function(){
		let profileVal = $("#u_productProfile").val();
		let span = $("#u_checkProfile");
		if(profileVal ==""){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品簡介");
			u_flagProfile = false;
		}else{
			span.html("");
			u_flagProfile = true;
		}
	});
	$("#u_productSpec").blur(function(){
		let specVal = $("#u_productSpec").val();
		let span = $("#u_checkSpec");
		if(specVal == ""){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品規格");
			u_flagSpec = false;
		}else{
			span.html("");
			u_flagSpec = true;
		}
	});
	$("#u_productPrice").blur(function(){
		let priceVal = $("#u_productPrice").val();
		let span = $("#u_checkPrice");
		let a =/\d/;
		if(priceVal ==""){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品價格");
			u_flagPrice = false;
		}else if(!a.test(priceVal)){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確產品價格");
			u_flagPrice = false;
		}else{
			span.html("");
			u_flagPrice = true;
		}
	});
	$("#u_productQuantity").blur(function(){
		let quantityVal = $("#u_productQuantity").val();
		let span = $("#u_checkQuantity");
		let a =/\d/;
		if(quantityVal ==""){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入產品價格");
			u_flagQuantity = false;
		}else if(!a.test(quantityVal)){
			span.html("&nbsp &nbsp <i class='fas fa-exclamation-circle'></i>請輸入正確產品價格");
			u_flagQuantity = false;
		}else{
			span.html("");
			u_flagQuantity = true;
		}
	});
	//依更新時間排序
	$("#h_updateTime").change(function(){
		$("#更新時間").remove();
		if($("#h_price option:selected").text()!="價格"){
		$("#h_price").prepend("<option id ='價格' value='價格' selected='selected'>價格</option>");
		$("#更新時間").remove();
		}
		let v = $("#h_updateTime option:selected").text();
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
	});
	//依價格排序
	$("#h_price").change(function(){
		$("#價格").remove();
		if($("#h_updateTime option:selected").text()!="更新時間"){
		$("#h_updateTime").prepend("<option id='更新時間' value='更新時間' selected='selected'>更新時間</option>");
		$("#價格").remove();
		}
		let v = $("#h_price option:selected").text();
			if(v=="高到低"){
				products = products.sort(function (a, b) {
					 return a.productPrice < b.productPrice ? 1 : -1;
					});
				showData();
			}else{
				products = products.sort(function (a, b) {
					 return a.productPrice > b.productPrice ? 1 : -1;
					});
				showData();
			}
	});
	
	

	//新增表單上傳圖片						
	//圖片上傳Imgur API功能
	var a_targetImage="";		//Image物件陣列(input內有限制Image檔案類別)
		$("#a_upload").change(function(e){
		a_targetImage = e.target.files[0]; 
		//e.target.files 會是一個陣列，裡面可以取得使用者所有想要上傳的檔案，陣列裡都是該檔案的 Blob 物件，而不是一般的物件。
		//只有上傳一個檔案，所以使用 e.target.files[0] 即可取得使用者想要上傳的檔案	
	});
	$("#a_imageUpload").click(function(){
		let form = new FormData();
		form.append("image", a_targetImage);   //設定 圖片file值
		//Setting內為Imgur Api required dateformat
		let settings = {
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
				$("#a_hiddenProductImage").val(imageStr);
				$("#a_preview_productImg").attr("src",imageStr);
				window.alert("上傳成功");
			});
	});
	
	//修改表單上傳圖片
	//圖片上傳Imgur API功能
	var u_targetImage="";		//Image物件陣列(input內有限制Image檔案類別)
		$("#u_upload").change(function(e){
		u_targetImage = e.target.files[0]; 
		//e.target.files 會是一個陣列，裡面可以取得使用者所有想要上傳的檔案，陣列裡都是該檔案的 Blob 物件，而不是一般的物件。
		//只有上傳一個檔案，所以使用 e.target.files[0] 即可取得使用者想要上傳的檔案	
	});
	$("#u_imageUpload").click(function(){
		let form = new FormData();
		form.append("image", u_targetImage);   //設定 圖片file值		
		//Setting內為Imgur Api required dateformat
		let settings = {
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
				$("#u_hiddenProductImage").val(imageStr);
				$("#u_preview_productImg").attr("src",imageStr);
				window.alert("上傳成功");
			});
	});
	
</script>

</body>
</html>