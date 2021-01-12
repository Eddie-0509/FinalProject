<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>U YA MALL</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Caveat:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
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

#title {
	margin: 50px 20vw;
}

#title h1 {
	display: inline;
}

#left {
	height: 80vh;
	float: left;
	text-align: center;
	padding-top: 60px;
	margin-left: 5vw;
}

#left p {
	margin: 20px;
	cursor:pointer;
}

#left p:hover {
	color: orange;
	font-weight: 900;
}

#main {
 	margin-left: 19vw;
}

.showby {
	height: 35px;
	width: 200px;
	text-align: center;
 	float: right;
 	padding: 5px 10px;
}

.showby:focus{
  box-shadow: 0 0 5px 2px #467BF4;    
}

td {
	width: 300px;
	border: 15px solid white;
	padding: 20px;
}

td:hover {
	cursor: pointer;
}

.ppic {
	width: 300px;
	margin-bottom: 20px;
}

.dpic {
	margin: 15px;
}

.pnum {
	display: none;
}

.price {
	color: #F75000;
	font-weight: 900;
	font-family: Calibri;
}

#dtitle {
	font-size: 35px;
	font-weight: 900;
}

#dcontent {
 	width: 900px; 
}

#dbody p {
	margin: 25px 10px;
	font-weight: 900;
	font-size: 18px;
}

#dprice {
	color: #F75000;
	font-weight: 900;
	font-family: Calibri;
	font-size: 25px;
}

#dfigure {
	height: 300px;
	width: 300px;
	float: left;
	margin: 10px 30px 10px 10px;
}

.dpic {
	height: 100%;
	width: 100%;
}

#dicon {
	margin-right: 100px;
}

#dqty {
	text-align: center;
	width: 80px;
	height: 65px;
	font-weight: 900;
	font-size: 25px;
	border: none;
}

#dicon img:hover{
	opacity: 0.5;
}
</style>
</head>
<body>
	<div id="topBar">
		<span class=sp1>U YA MALL</span>
		<span class=sp2>for a better teeth health</span>
		<span class=icon>
		<i class="bi bi-house"></i>
		<i class="bi bi-person-circle"></i>
		<i class="bi bi-cart4"></i>
		</span>
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
			<option class="zero" style="display: none">商品排序</option>
			<option value="1">價格 - 由高至低</option>
			<option value="2">價格 - 由低至高</option>
			<option value="3">上架時間 - 由新至舊</option>
			<option value="4">上架時間 - 由舊至新</option>
		</select>
	</div>
	<div id="main">
	
	</div>
	<div class="modal right fade" tabindex="-1" role="dialog" id="pdetail">
		<div class="modal-dialog" role="document">
			<div class="modal-content" id="dcontent">
				<div class="modal-header">
					<h5 id="dtitle" class="modal-title"><br></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body" id="dbody">
					<figure id="dfigure"></figure>
					<p id="dprice"></p>
					<p id="dprofile"></p>
					<p id="dspec"></p>
				</div>
				<div class="modal-footer">
				<div id="dicon">
					<img id="dsub" src="images/CartIconSub.png">
					<input type="text" id="dqty" value="1">
					<img id="dadd" src="images/CartIconAdd.png">
				</div>	
					<button type="button" class="btn btn-primary">加入購物車</button>
				</div>
			</div>
		</div>
	</div>
	
	</div>
	<div class="modal right fade" tabindex="-1" role="dialog" id="cart">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 id="ctitle" class="modal-title"><br></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<figure class="dfigure">123</figure>
					<p class="dprice">456</p>
					<p class="dprofile">789</p>
					<p class="dspec"></p>
				</div>
				<div class="modal-footer">	
					<button type="button" class="btn btn-primary">結帳</button>
				</div>
			</div>
		</div>
	</div>
	<script>
		let trans = ${products};
		let products = trans.productList;

		$(document).ready(
				function() {
					let j = 1;

					let str1 = "<table class='ptable'><tr>";
					for (let i = 0; i < products.length; i++) {
						str1 += "<td><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + products[i].productName+ "<br><span class='price'>NTD$ "+ products[i].productPrice + "</span></td>";

						if (j % 3 == 0) {
							str1 += "</tr>";
						}

						j++;
					}

					str1 += "</table>";
					$("#main").html(str1);

					$(".bi-cart4").click(function(){
						$("#cart").modal("show");
					});

					$("#dadd").click(function(){				
						$("#dqty").val(parseInt($("#dqty").val(), 10)+1);
					});

					$("#dsub").click(function(){
						$("#dqty").val(parseInt($("#dqty").val(), 10)-1);

						if($("#dqty").val() < 1) {
							$("#dqty").val(1)
						}
					});

					$("#dqty").blur(function(){
						if($("#dqty").val() < 1) {
							$("#dqty").val(1)
						}
					});

					beReady();
				});

		$("#left p").click(function() {
					$(".showby .zero").prop('selected', true);
					j = 1;
					fetch("http://localhost:8080/FinalProject/productsByCategory?"+ "productCategoty=" + $(this).text(), {
								method : "GET"

							}).then(function(response) {
						return response.json();

					}).then(function(data) {
								products = data;
								let str2 = "<table class='ptable'><tr>";

								for (let i = 0; i < data.length; i++) {
									str2 += "<td><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + data[i].productName+ "<br><span class='price'>NTD$ "+ data[i].productPrice+ "</span></td>";

									if (j % 3 == 0) {
										str2 += "</tr>";
									}
									j++;
								}

								str2 += "</table>";
								$("#main").html(str2);

								beReady();
							});
				});

		$(".showby").change(function() {
							if ($(this).val() == 1) {
								newlist = products.sort(function(a, b) {
									return b.productPrice - a.productPrice;
								});

								let j = 1;
								let str3 = "<table class='ptable'><tr>";
								for (let i = 0; i < newlist.length; i++) {
									str3 += "<td><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + products[i].productName+ "<br><span class='price'>NTD$ "+ products[i].productPrice+ "</span></td>";

									if (j % 3 == 0) {
										str3 += "</tr>";
									}
									j++;
								}
								
								str3 += "</table>";
								$("#main").html(str3);
							}

							else if ($(this).val() == 2) {
								newlist = products.sort(function(a, b) {
									return a.productPrice - b.productPrice;
								});

								let j = 1;
								let str3 = "<table class='ptable'><tr>";
								for (let i = 0; i < newlist.length; i++) {
									str3 += "<td><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + products[i].productName+ "<br><span class='price'>NTD$ "+ products[i].productPrice+ "</span></td>";

									if (j % 3 == 0) {
										str3 += "</tr>";
									}
									j++;
								}
								
								str3 += "</table>";
								$("#main").html(str3);
							}

							else if ($(this).val() == 3) {
								newlist = products.sort(function(a, b) {
									return b.productPkId - a.productPkId;
								});

								let j = 1;
								let str3 = "<table class='ptable'><tr>";
								for (let i = 0; i < newlist.length; i++) {
									str3 += "<td><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + products[i].productName+ "<br><span class='price'>NTD$ "+ products[i].productPrice+ "</span></td>";

									if (j % 3 == 0) {
										str3 += "</tr>";
									}
									j++;
								}
								
								str3 += "</table>";
								$("#main").html(str3);
							}

							else if ($(this).val() == 4) {
								newlist = products.sort(function(a, b) {
									return a.productPkId - b.productPkId;
								});

								let j = 1;
								let str3 = "<table class='ptable'><tr>";
								for (let i = 0; i < newlist.length; i++) {
									str3 += "<td><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + products[i].productName+ "<br><span class='price'>NTD$ "+ products[i].productPrice+ "</span></td>";

									if (j % 3 == 0) {
										str3 += "</tr>";
									}
									j++;
								}
								
								str3 += "</table>";
								$("#main").html(str3);
							}
							beReady();
						});

		
		function beReady() {
			$("td").click(function() {
				$("#dqty").val(1);
				
				let pnum = $(this).children(".pnum").text();
				$("#dtitle").text(products[pnum].productName);
				$("#dfigure").html("<img class='dpic' src='" + products[pnum].productImage + "'/>");
				$("#dprice").text("NTD $ " + products[pnum].productPrice);
				$("#dprofile").text(products[pnum].productProfile);

				let pspec = products[pnum].productSpec;
				let restr = /\|/gi;
				$("#dspec").html(pspec.replace(restr, '<br>'));			
				$("#pdetail").modal("show"); 
			});
		}
	</script>
</body>
</html>