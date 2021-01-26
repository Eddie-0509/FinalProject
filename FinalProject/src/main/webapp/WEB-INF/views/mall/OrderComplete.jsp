<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
<style>
#topBar {
	height: 150px;
	background-color: black;
	margin-bottom: 80px;
}

.sp1 {
	font-family: 'Alfa Slab One', cursive;
	color: white;
	font-size: 80px;
	line-height: 150px;
	margin-left: 20px;
}

.sp2 {
	font-family: 'Caveat', cursive;
	color: white;
	font-size: 32px;
	margin-left: 20px;
}

.icon {
 	margin-left: 25vw;
 	color: white;
 	font-size: 25px;
}

.icon i {
	margin: 6px;
}

.bi:hover {
	cursor: pointer;
	opacity: 0.5;
}

#title {
	margin-bottom: 3%;
}

#title h1 {
	text-align: center;
}

.accordion {
	width: 50%;
	margin: auto;
}

.accordion-button {
	font-size: 25px;
	font-weight: 900;
}

#ptable, #ftable {
	width: 100%;
	padding-left: 1%;
}

#ptable th {
	background-color: #FFFFB9;
	font-size: 20px;
}

#ptable th, #ptable td, #ftable td {
	line-height: 50px;
}

#bottom {
	width: 50%;
	margin: 3% auto;
	margin-bottom: 10%;
}

#bottom p {
	text-align: right;
	color: #FF8000;
	font-weight: 900;
	font-size: 18px;
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
	<div id="title">
		<h1>【&ensp;訂單成立&ensp;】</h1>
	</div>

<div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        	商品明細
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
      	<table id="ptable">
			<tr>
				<th>&ensp;商品</th>
				<th>單價</th>
				<th>數量</th>
				<th>小計</th>
			</tr>
				<c:forEach var="detail" items="${order.orderDetails}" varStatus="vs">
				<tr>
					<td>${detail.productBean.productName}</td>
					<td>${detail.productBean.productPrice}</td>
					<td>${detail.orderQuantity}</td>
					<td>${detail.productBean.productPrice * detail.orderQuantity}</td>
				</tr>
				</c:forEach>
				<tr></tr>
		</table> 
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
        	配送資訊
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
		<table id="ftable">
			<tr>
				<td>收件人： ${order.receiver}</td>
				<td>連絡電話： ${order.mobilephone}</td>
			</tr>
			<tr>
				<td colspan="2">配送地址： ${order.shipAddress}</td>
			</tr>
		</table>
      </div>
    </div>
  </div>
</div>
</div>

<div id="bottom">
	<div>
		<p>感謝您的購買，期待再次為您服務 !!</p>
	</div>
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
	$(document).ready(function(){
		$(".bi-house").click(function(){
			window.location.href="${pageContext.request.contextPath}";
		});
	});
</script>
</html>