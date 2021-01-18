<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	background-color: lightgreen;
	width: 1000px;
	margin: auto;
}

#orders table {
	margin-top: 20px;
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
			<i class="bi bi-cart4"></i>
		</span>
	</div>
<div id="main">
<table>
	<tr>
		<th colspan="2">商品</th>
		<th>數量</th>
		<th>小計</th>
		<th>刪除</th>
	</tr>
</table>	
<div id="orders"></div>
</div>
</body>
<script>
	$(document).ready(function(){
		beReady();
	});

	
	function beReady(){
		$("#orders").html(Cookies.get("cart"));
		let allqty = $(".cqty");
		console.log(allqty);

		allqty.each(function(){
			let qty = $(this).text();
			console.log(qty);
			$(this).html("<i class='bi bi-plus-square'></i><span>" + qty + "</span><i class='bi bi-dash-square'></i>");
		});

		$(".bi-plus-square").click(function(){
			let qty = parseInt($(this).parent().text(), 10);
			let unitPrice = parseInt($(this).parent("td").next().text(), 10) / qty;
			$(this).next("span").text(qty + 1);
			$(this).parent().next("td").text(parseInt($(this).next("span").text(), 10) * unitPrice);
		});

		$(".bi-dash-square").click(function(){
			let qty = parseInt($(this).parent().text(), 10);
			let unitPrice = parseInt($(this).parent("td").next().text(), 10) / qty;
			$(this).prev("span").text(qty - 1);

			if ($(this).prev("span").text() < 1) {
				$(this).prev("span").text(1)
			}
			
			$(this).parent().next("td").text(parseInt($(this).prev("span").text(), 10) * unitPrice);
		});
	}
</script>
</html>