<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>U YA MALL</title>
<style>
#topBar {
	height: 150px;
	background-color: black;
	margin-bottom: 30px;
}

#title {
	margin: 50px 25%;
}

#left {
	/*  		background-color: lightgreen; */
	width: 20vw;
	height: 80vh;
	float: left;
	text-align: center;
	padding-top: 60px;
}

#left p {
	margin: 20px;
}

#main {
	margin-top: 30px;
	margin-left: 25%;
}

td {
	width: 350px;
	padding: 20px;
}
</style>
</head>
<body>
	<div id="topBar"></div>
	<div id="left">
		<h2>Category</h2>
		<br>
		<p>電動牙刷</p>
		<p>沖牙機</p>
		<p>牙刷</p>
		<p>牙膏</p>
	</div>
	<div id="title">
		<h1>Products</h1>
	</div>
	<table id="main">
		<tr>
			<c:forEach var='product' items="${productsList}" varStatus="vs">
				<td>${product.productImage}<br> ${product.productName}<br>
					NTD$ ${product.productPrice}
				</td>
				<c:if test="${(vs.count % 3) eq '0'}">
		</tr>
		</c:if>
		</c:forEach>
	</table>
	<script src="js/jquery.min.js"></script>
	<script>
		$("#left p").click(function() {
			fetch("http://localhost:8080/FinalProject/productsByCategory?"+"productCategoty="+$(this).text(), {
				method: "GET"

			}).then(function(response) {
				console.log(response);
			});
		});
	</script>
</body>
</html>