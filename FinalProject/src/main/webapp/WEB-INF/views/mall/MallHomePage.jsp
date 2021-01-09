<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>U YA MALL</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<style>
#topBar {
	height: 150px;
	background-color: black;
	margin-bottom: 30px;
/* 	text-align:center; */
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

#title {
	margin: 50px 25%;
}

#title h1 {
	display: inline;
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

.showby {
	align:right;
}

.ptable {
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
	<div id="topBar">
		<span class=sp1>U YA MALL</span>
		<span class=sp2>for a better teeth health</span>
	</div>
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
		<select class="showby" name="showby">
			<option class="zero" style="display: none">--- 商品排序 ---</option>
			<option value="1">價格 - 由高至低</option>
			<option value="2">價格 - 由低至高</option>
			<option value="3">上架時間 - 由新至舊</option>
			<option value="4">上架時間 - 由舊至新</option>
		</select>
	</div>
	<div id="main">
<!-- 	<table class="ptable"> -->
<!-- 		<tr> -->
<%-- 			<c:forEach var='product' items="${products}" varStatus="vs"> --%>
<!-- 				<td> -->
<%-- 				${product.productImage}<br> --%>
<%-- 				${product.productName}<br> --%>
<%-- 				NTD$ ${product.productPrice} --%>
<!-- 				</td> -->
<%-- 				<c:if test="${(vs.count % 3) eq '0'}"> --%>
<!-- 		</tr> -->
<%-- 		</c:if> --%>
<%-- 		</c:forEach> --%>
<!-- 	</table> -->
	</div> 
<!-- 	<script src="../tools/js/jquery-3.5.1.min.js"></script> -->
	<script>
		let trans = ${products};
		let products = trans.productList
		
		$(document).ready(function() {
		let j = 1;
		
		let str1 = "<table class='ptable'><tr>";		
		for(let i=0 ; i<products.length ; i++){
			str1 += "<td>" + products[i].productImage + "<br>" + products[i].productName + "<br>NTD$ " + products[i].productPrice + "</td>";

			if(j % 3 == 0){
				str1 += "</tr>";
			}

			j++;
		}

		str1 += "</table>";
		$("#main").html(str1);
		});

		
		$("#left p").click(function() {
			$(".showby .zero").prop('selected', true);
			j = 1;
			fetch("http://localhost:8080/FinalProject/productsByCategory?"+"productCategoty="+$(this).text(), {
				method: "GET"

			}).then(function(response) {
				return response.json();
				
			}).then(function(data){	
					products = data;				
					let str2 = "<table class='ptable'><tr>";
					
					for(let i=0 ; i<data.length ; i++){
						str2 += "<td>" + data[i].productImage + "<br>" + data[i].productName + "<br>NTD$ " + data[i].productPrice + "</td>";

						if(j % 3 == 0){
							str2 += "</tr>";
						}

						j++;
					}

					str2 += "</table>";
					$("#main").html(str2);
				});
		});

		$(".showby").change(function(){
			if($(this).val() == 1){
			newlist = products.sort(function(a,b){
				return b.productPrice - a.productPrice;
			});
			
			let j = 1;		
			let str3 = "<table class='ptable'><tr>";		
			for(let i = 0 ; i < newlist.length ; i++){
				str3 += "<td>" + products[i].productImage + "<br>" + products[i].productName + "<br>NTD$ " + products[i].productPrice + "</td>";

				if(j % 3 == 0){
					str3 += "</tr>";
				}
				j++;
			}
			str3 += "</table>";
			$("#main").html(str3);
			}

			else if($(this).val() == 2){
				newlist = products.sort(function(a,b){
					return a.productPrice - b.productPrice;
				});
				
				let j = 1;		
				let str3 = "<table class='ptable'><tr>";		
				for(let i = 0 ; i < newlist.length ; i++){
					str3 += "<td>" + products[i].productImage + "<br>" + products[i].productName + "<br>NTD$ " + products[i].productPrice + "</td>";

					if(j % 3 == 0){
						str3 += "</tr>";
					}
					j++;
				}
				str3 += "</table>";
				$("#main").html(str3);
				}

			else if($(this).val() == 3){
				newlist = products.sort(function(a,b){
					return b.productPkId - a.productPkId;			
				});
				
				let j = 1;		
				let str3 = "<table class='ptable'><tr>";		
				for(let i = 0 ; i < newlist.length ; i++){
					str3 += "<td>" + products[i].productImage + "<br>" + products[i].productName + "<br>NTD$ " + products[i].productPrice + "</td>";

					if(j % 3 == 0){
						str3 += "</tr>";
					}
					j++;
				}
				str3 += "</table>";
				$("#main").html(str3);
				}

			else if($(this).val() == 4){
				newlist = products.sort(function(a,b){
					return a.productPkId - b.productPkId;			
				});
				
				let j = 1;		
				let str3 = "<table class='ptable'><tr>";		
				for(let i = 0 ; i < newlist.length ; i++){
					str3 += "<td>" + products[i].productImage + "<br>" + products[i].productName + "<br>NTD$ " + products[i].productPrice + "</td>";

					if(j % 3 == 0){
						str3 += "</tr>";
					}
					j++;
				}
				str3 += "</table>";
				$("#main").html(str3);
				}
		});
	</script>
</body>
</html>