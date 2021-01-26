<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>U YA MALL</title>
<link rel="shortcut icon" href="tools/favicon.ico">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/js-cookie@beta/dist/js.cookie.min.js"></script>
<style>
#topBar {
	height: 150px;
	background-color: black;
	margin-bottom: 30px;
}

.sp1 {
	font-family: 'Alfa Slab One', cursive;
	color:white;
	font-size:80px;
	line-height:150px;
	margin-left:20px;
}

.sp2 {
	font-family: 'Caveat', cursive;
	color:white;
	font-size:32px;
	margin-left:20px;
}

.icon {
 	margin-left: 25vw;
 	color: white;
 	font-size: 25px;
}

.icon i {
	margin: 6px;
}

.bi-plus-square:hover, .bi-dash-square:hover {
	opacity: 0.5;
}

#main {
	width: 1000px;
	margin: auto;
	margin-bottom: 100px;
	padding: 10px;
}

tr {
	border-bottom: 3px solid #E0E0E0;
}

#title{
	height: 50px;
	background-color: #E0E0E0;
}

#olist table, #main table {
	margin-top: 20px;
	width: 1000px;
	font-size: 20px;
}

.cpic {
	height: 100px;
	width: 100px;
}

.cname {
	width: 60%;
}

.cqty {
	width: 20%;
}

.cqty .bi {
	margin: 20px;
}

.cprice {
	width: 10%;
}

.cdel {
	width: 8%;
}

.bi:hover {
	cursor: pointer;
	opacity: 0.5;
}

#main2 {
	width: 1200px;
	margin: auto;
	clear: both;
}

#freight {
	width: 650px;
	float: left;
	border: 2px solid #E0E0E0;
}

#freight h4 {
	background-color: #E0E0E0;
	height: 60px;
	line-height: 60px;
}

#freight div {
	padding: 30px 50px;
}

#freight select {
	width: 180px;
	height: 30px;
	border: 2px solid #E0E0E0;
}

#freight input {
	width: 400px;
	border: 2px solid #E0E0E0;
}

#coupon {
	width: 250px;
	height: 38px;
	border: 2px solid #E0E0E0;
	margin-right: 30px;
}

#dist {
	margin-left: 30px;
}

#detail {
	border: 2px solid #E0E0E0;
	float: right;
	width: 500px;
	margin-bottom: 200px;
}

#detail h4 {
	background-color: #E0E0E0;
	height: 60px;
	line-height: 60px;
}

#detail div {
	padding: 30px;
}

#ucoupon {
	font-weight: 900;
	color: blue;
}

#ucoupon:hover {
	color: orange;
	font-weight: 900;
	cursor: pointer;
}

#total, #finfo, #fcharge, #gtotal, #discount, #ffull {
	float: right;
}

#submit {
	width: 250px;
	height: 60px;
	font-size: 23px;
	font-weight: 900;
	margin-left: 125px;
}

#discount {
	color: red;
}

#finfo {
	font-size: 15px;
}

#fbal {
	color: blue;
	font-weight: 900;
}

footer {
	clear: both;
	background-color: black;
	color: 	#6C6C6C;
	height: 200px;
}

#fdiv {
	text-align: center;
}
</style>
</head>
<body>
<div id="topBar">  
		<span class=sp1>U YA MALL</span>
		<span class=sp2>for a better teeth health</span>
		<span class=icon>
			<i class="bi bi-house"></i>
			<i class="bi bi-person-fill"></i>
		</span>
	</div>
	
	
<div id="main">
<table id="title">
	<tr>
	<th style="width: 69%">&ensp;商品</th>
	<th style="width: 14%">數量</th>
	<th style="width: 8%">小計</th>
	<th style="width: 10%">刪除</th>
	</tr>
</table>	
<div id="olist"></div>
</div>


<div id="main2">
<div id="freight">
	<h4>&ensp;配送資訊</h4>
	<div>
	<label><strong>縣市 / 地區</strong></label><br>
		<select name="city" id="city">
			<option style="display: none">請選擇</option>
			<c:forEach var="city" items="${cities}" varStatus="vs">
			<option value="${city.cityPkId}">${city.cityName}</option>
			</c:forEach>
		</select>
		<select name="dist" id="dist">
			<option value="0" selected>請選擇縣市</option>
		</select><br><br>
	<label><strong>收件地址</strong></label><br>
	<input type="text" id="address"><br><br>
	<label><strong>收件人</strong></label><br>
	<input type="text" id="receiverr"><br><br>
	<label><strong>連絡電話</strong></label><br>
	<input type="text" id="phone"><br><br>
</div>
</div>


<div id="detail">
	<h4>&ensp;訂單資訊</h4>
	<div>
		<span>金額小計</span><span id="total">0</span><br><br><br>
		<span id="ucoupon">使用優惠碼</span>
		<span id="discount">
			<span id="cpname"></span>
			&ensp;&ensp;<span id="cpdis">0</span>
		</span><br><br>
		<span id="icoupon">
			<input type="text" id="coupon"><button type="button" class="btn btn-primary">套用</button><br><br>
		</span>
		<span>運費</span><span id="fcharge">150</span><br>
		<span id="finfo">還差&ensp;<span id="fbal"></span>&ensp;元免運費哦!</span><span id="ffull">消費千元免運!!</span><br><br>
		<hr/><br>
		<label><strong>合計</strong></label><span id="gtotal">0</span><br><br><br>
		<button type="button" id="submit" class="btn btn-success">提交訂單</button>
	</div>
</div>
</div>

<div id="ordersform">
	<form:form method='POST' action="${pageContext.request.contextPath}/processOrder" modelAttribute="orders" id="orders">
		<input id="memberPkid" name="memberPkId" value="">
		<input id="totalPayment" name="totalPayment">
		<input id="orderStatus" name="orderStatus">
		<input id="receiver" name="receiver">
		<input id="mobilephone" name="mobilephone">
		<input id="shipAddress" name="shipAddress">
		<input id="couponId" name="couponId">
		<input id="products" name="products">
		<input id="quantity" name="quantity">
	</form:form>
</div>


<footer>
	<div id="fdiv">
		<br><br><br>&copy; 2021 UYAYI. All Rights Reserved.<br><br>
		<i class="bi bi-twitter"></i>&emsp;
		<i class="bi bi-facebook"></i>&emsp;
		<i class="bi bi-instagram"></i>&emsp;
		<i class="bi bi-globe2"></i>
	</div>	 
</footer>
</body>
<script>
	let cpDis;
	let couponid = "";
		
	$(document).ready(function(){
	
		beReady();

		cal();

		$("#icoupon").hide();

		$("#ordersform").hide();
		
		$("#city").change(getDist);

		$(".btn-primary").click(checkCoupon);

		$("#submit").click(goProcess);
		
		$("#ucoupon").click(function(){
			$("#icoupon").show();
		});

		$(".bi-house").click(function(){
			window.location.href="${pageContext.request.contextPath}";
		});

		$(".bi-person-fill").click(function(){
			window.location.href="${pageContext.request.contextPath}/orders";
		});
	});

	
	function beReady(){
		$("#olist").html(Cookies.get("cart"));
		let allqty = $(".cqty");

		allqty.each(function(){
			let qty = $(this).text();
			$(this).html("<i class='bi bi-dash-square'></i><span>" + qty + "</span><i class='bi bi-plus-square'></i>");
		});

		$(".bi-plus-square").click(function(){
			let qty = parseInt($(this).parent().text(), 10);
			let unitPrice = parseInt($(this).parent("td").next().text(), 10) / qty;
			$(this).prev("span").text(qty + 1);
			$(this).parent().next("td").text(parseInt($(this).prev("span").text(), 10) * unitPrice);
			setCookie();
			cal();
		});

		$(".bi-dash-square").click(function(){
			let qty = parseInt($(this).parent().text(), 10);
			let unitPrice = parseInt($(this).parent("td").next().text(), 10) / qty;
			$(this).next("span").text(qty - 1);

			if ($(this).next("span").text() < 1) {
				$(this).next("span").text(1)
			}
			
			$(this).parent().next("td").text(parseInt($(this).next("span").text(), 10) * unitPrice);
			setCookie();
			cal();
		});

		$(".bi-trash").click(function(){
			$(this).parents("table").remove();
			setCookie();
			cal();
		});
	}

	
	function getDist(){
		let urlQuery = new URLSearchParams({
			cityPkId : $("#city").val(),
			method : "fetch()",
			doWhat : "GET"
		});

		fetch("getDist?" + urlQuery, {
			method : "GET"
				
		}).then(function(response){
			return response.json();
			
		}).then(function(data){
			let str = "";
			for (let i = 0 ; i < data.length ; i++) {
				str += "<option value='" + data[i].distPkId + "'>" + data[i].distName + "</option>";
			}

			$("#dist").html(str);
		});
	}


	function cal(){
		let total = 0;
		$(".cprice").each(function(){
			let price = parseInt($(this).text(), 10);
			total += price;
		});

		$("#total").text(total);
		$("#cpdis").text(Math.round(parseInt($("#total").text(), 10) - parseInt($("#total").text(), 10) * cpDis));

		if ($("#cpdis").text() == "NaN") {
			$("#cpdis").text(0);
		}
		
		let gtotal = total - parseInt($("#cpdis").text(), 10);

		if (total == 0) {
			$("#gtotal").text(0);
		}

		if (gtotal >= 1000) {
			$("#fcharge").text(0);
			$("#finfo").hide();
			$("#ffull").show();
			
		} else {
			$("#fcharge").text(150);
			$("#ffull").hide();
			$("#finfo").show();
			$("#fbal").text(1000 - gtotal);
		}

		if (Cookies.get("cart") == "") {
			$("#main").html("<h1 style='text-align: center; line-height: 200px;'>您的購物車沒有商品</h1>");
			$("#main2").hide();
		}

		$("#gtotal").text(total - parseInt($("#cpdis").text(), 10) + parseInt($("#fcharge").text(), 10));
	}


	function checkCoupon(){
		let urlQuery = new URLSearchParams({
			couponCode : $("#coupon").val(),
			method : "fetch()",
			doWhat : "POST"
		});

		fetch("checkCoupon?" + urlQuery, {
			method : "POST"
		}).then(function(response){
			return response.json();
		}).then(function(data){
			if (data == "") {
				$("#cpname").text("優惠碼不存在");
				couponid = "";
				cpDis = 1;
			} else {
			let cpName = data.couponName;
			couponid = data.couponPkId;
			cpDis = parseFloat(data.couponContext);
			$("#cpname").text(cpName);
			$("#cpdis").text(Math.round(parseInt($("#total").text(), 10) - parseInt($("#total").text(), 10) * cpDis));
			}
			cal();
		});
	}


	function goProcess(){
		$("#couponId").val(couponid);
		$("#totalPayment").val($("#gtotal").text());
		$("#orderStatus").val("未付款");
		$("#receiver").val($("#receiverr").val());
		$("#mobilephone").val($("#phone").val());
		$("#shipAddress").val($("#city option:selected").text() + $("#dist option:selected").text() + $("#address").val());

		let allp = $(".pkid");
		let plist = [];
		allp.each(function(){
			plist.push($(this).text());
		});

		let allq = $(".cqty");
		let pqty = [];
		allq.each(function(){
			pqty.push($(this).text());
		});

  		$("#products").val(plist);
  		$("#quantity").val(pqty)
   		$("#orders").submit();
	}


	function setCookie(){
		let re1 = /\<i class=\"bi bi-dash-square\"\>\<\/i\>\<span\>/gi;
		let re2 = /\<\/span\>\<i class=\"bi bi-plus-square\"\>\<\/i\>/gi;
		cookiestr = $("#olist").html().replace(re1, '').replace(re2, '');
		Cookies.set("cart", cookiestr, { expires: 7 });
		console.log("str = " + cookiestr);
	}
</script>
</html>