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

#title {
	margin: 50px 20vw;
}

#title h1 {
	display: inline;
	font-family: Arial Black;
}

#left {
	height: 80vh;
	float: left;
	text-align: center;
	padding-top: 60px;
	margin-left: 5vw;
	font-family: Matura MT Script Capitals;
	font-weight: 900;
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
 	float: right;
 	padding: 5px 10px;
}

.showby:focus{
  box-shadow: 0 0 5px 2px #467BF4;    
}

.ptd {
	width: 300px;
	border: 15px solid white;
	padding: 20px;
}

.ptd:hover {
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

#dtitle, #ctitle {
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

#dicon img:hover {
	opacity: 0.5;
}

.ctable {
	width: 100%;
	font-size: 15px;
}

.ctable th {
	text-align: center;
	color: blue;
}

.ctable th, .ctable td {
/*  	border: 2px solid red;  */
	text-align: center;
}

.cpic {
 	hieght: 7vh; 
 	width: 7vw; 
}

.cname {
	width: 50%;
}

.cprice {
	width: 10%;
}

.cqty {
	width: 10%;
}

.cdel {
	width: 10%;
}

#ccal {
 	margin-right: 25vw;
 	font-weight: 900;
 	font-size: 25px;
}

#ctotal {
	color: red;
}

#lhead {
	background-color: black;
	margin: 5px;
}

#ltitle {
	color: white;
	font-weight: 900;
}

#licon {
	height: 220px;
	width: 120px;
	font-size: 120px; 
	margin: auto;
}

#lchoose {
	text-align: center;
}

#lchoose a {
	font-size: 35px;
 	margin: 50px;
}

#lcontainer {
/*  	background-color: lightgreen;  */
	width: 310px;
	padding: 15px;
	margin: auto;
}

#lcontainer label {
	margin-right: 10px;
}

#formcontainer button {
 	margin-left: 200px;
 	width: 100px;
}

#lbot span {
	float: right;
	margin-right: 20px;
}

.modal.right .modal-dialog {
position: fixed;
margin: auto; 
width: 500px;
height: 100%;
-webkit-transform: translate3d(165%, 0, 0);
-ms-transform: translate3d(165%, 0, 0);
o-transform: translate3d(165%, 0, 0);
transform: translate3d(165%, 0, 0);
}

.modal.right .modal-content {   
height: 100vh;
width: 45vw;
max-height: height_body;
overflow: auto;
}   

.modal.right.fade .modal-dialog{
-webkit-transition: opacity 0.5s linear, right 0.5s ease-out;
-moz-transition: opacity 0.5s linear, right 0.5s ease-out;
-o-transition: opacity 0.5s linear, right 0.5s ease-out;
transition: opacity 0.5s linear, right 0.5s ease-out;
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
	
	<div class="modal left fade" tabindex="-1" role="dialog" id="pdetail">
		<div class="modal-dialog" role="document">
			<div class="modal-content" id="dcontent">
				<div class="modal-header">
					<h5 id="dtitle" class="modal-title"><br></h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
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
					<button type="button" class="btn btn-primary" id="djoin">加入購物車</button>
				</div>
			</div>
		</div>
	</div>
	
	    <div class="modal fade right" id= "cart">
        <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
            <h4 id="ctitle" class="modal-title">購物車</h4></div>
            <div class="modal-body experimentMakeAnOffer" id="ccontent">
            	<p id="empty" style="font-size: 35px; text-align: center;"><br><br><br>購物車是空的 Q_Q</p>         
            </div>
            <div class="modal-footer">
                <span  id="ccal">
                	總計：&ensp;<span id="ctotal">0</span>&emsp;元
                </span>
                <button type="button" id="check" class="btn btn-primary submitOffer btn-lg" data-dismiss="modal">結帳</button>
            </div>
        </div>
    </div>
</div>

<div class="modal left fade" tabindex="-1" role="dialog" id="login">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header" id="lhead">
					<h2 class="modal-title" id="ltitle">會員登入</h2>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"></button>
				</div>			
				<div class="modal-content" id="lbody">
					<div id="licon">
						<i id="lpcircle" class="bi bi-person-circle"></i>
					</div>
<!-- 					<form action="mallCheckLogin" method="POST"> -->
							<div id="lchoose">
								<a href="">登入</a>
								<a href="">註冊</a>
							</div>
								<div id="formcontainer">
								<div id="lcontainer">
									<span id="errorMsg" style="color: red; text-align: center; display:block;">${errorMsg}</span><br/>
									<label for="uname"><strong>身分證字號</strong></label>
									<input type="text" placeholder="請輸入身分證字號" name="account" id="uname" required autofocus><br><br>
					
									<label for="upsw"><strong>密　　　碼</strong></label>
									<input type="password" placeholder="請輸入密碼" name="pwd" id="upsw" required>
								</div><br>
								<button type="button" id="loginbtn" class="btn btn-primary submitOffer btn-lg"><strong>登入</strong></button>
								<div id="lbot">
									<br><span><a href="#" class="link">忘記密碼?</a></span>
								</div>
							</div>
<!-- 						</form> -->
				</div>
				<div class="modal-footer">
				
				</div>
			</div>
		</div>
	</div>
	<script>
		let trans = ${products};
		let products = trans.productList;
		let pnum;
		let qty;
		
		$(document).ready(function() {
					let j = 1;
					let str1 = "<table class='ptable'><tr>";
					for (let i = 0; i < products.length; i++) {
						str1 += "<td class='ptd'><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + products[i].productName+ "<br><span class='price'>NTD$ "+ products[i].productPrice + "</span></td>";

						if (j % 3 == 0) {
							str1 += "</tr>";
						}
						j++;
					}

					str1 += "</table>";
					$("#main").html(str1);

					$("#ccontent").html(Cookies.get("cart"));
					cal();

					$(".bi-house").click(function(){
						window.location.href="${pageContext.request.contextPath}";
					});

					$(".bi-person-fill").click(function(){
						alert("...");
					});
					
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

					$("#check").click(function(){
						if ("${LoginOK}" == "") {
							$("#login").modal("show");
						} else {
							window.location.href="${pageContext.request.contextPath}/orderConfirm";
						}
					});

					$("#loginbtn").click(function(){
						let urlQuery = new URLSearchParams({
							account : $("#uname").val(),
							pwd : $("#upsw").val(),
							method : "fetch()",
							doWhat : "post"
						});

						fetch("mallCheckLogin", {
							method : "POST",
							body : urlQuery
							
						}).then(function(response) {
							return response.json();

						}).then(function(data) {
							if (data) {
								window.location.href="${pageContext.request.contextPath}/orderConfirm";
							} else {
								$("#errorMsg").text("帳號密碼錯誤");
							}			
						});
					});

					beReady();
				});

		$("#left p").click(function() {
					$(".showby .zero").prop('selected', true);
					j = 1;
					fetch("${pageContext.request.contextPath}/productsByCategory?" + "productCategoty=" + $(this).text(), {
								method : "GET"

							}).then(function(response) {
						return response.json();

					}).then(function(data) {
								products = data;
								let str2 = "<table class='ptable'><tr>";

								for (let i = 0; i < data.length; i++) {
									str2 += "<td class='ptd'><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + data[i].productName+ "<br><span class='price'>NTD$ "+ data[i].productPrice+ "</span></td>";

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
									str3 += "<td class='ptd'><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + products[i].productName+ "<br><span class='price'>NTD$ "+ products[i].productPrice+ "</span></td>";

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
									str3 += "<td class='ptd'><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + products[i].productName+ "<br><span class='price'>NTD$ "+ products[i].productPrice+ "</span></td>";

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
									str3 += "<td class='ptd'><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + products[i].productName+ "<br><span class='price'>NTD$ "+ products[i].productPrice+ "</span></td>";

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
									str3 += "<td class='ptd'><span class='pnum'>" + i + "</span><img class='ppic' src='" + products[i].productImage + "'/><br>" + products[i].productName+ "<br><span class='price'>NTD$ "+ products[i].productPrice+ "</span></td>";

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
			$(".ptd").click(function() {
				$("#dqty").val(1);
				
				pnum = $(this).children(".pnum").text();
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

		
			$("#djoin").click(function(){
				$("#pdetail").modal("hide");
				$("#empty").hide();
				qty = $("#dqty").val();

				checkExist();

				$("#ctotal").text(parseInt($("#ctotal").text()) + parseInt(products[pnum].productPrice, 10) * parseInt(qty, 10));			
				
				$("#cart").modal("show");
				
			});


			function checkExist(){
				let flag = true;			
				let npid = products[pnum].productPkId;
				
	 			if($(".pkid").text() == ""){
	 				addToCart();
	 				
	 			} else {
				$(".pkid").each(function(){
	 				if(npid == $(this).text()) {
						$(this).parent().next("td").next("td").text(parseInt($(this).parent().next("td").next("td").text(), 10) + parseInt(qty, 10));
						let pri = parseInt(products[pnum].productPrice, 10);
						let nqty = parseInt($(this).parent().next("td").next("td").text());
 						$(this).parent().next("td").next("td").next("td").text(pri * nqty);
						flag = false;
	 				}
				});
					if (flag) {
						addToCart();
					}
				}
			}


			function addToCart(){			
				let cstr = "<table class='ctable'>"
					+ "<tr><td><span class='pkid' style='display: none;'>"
					+ products[pnum].productPkId + "</span><img class='cpic' src='"
					+ products[pnum].productImage + "'/>"
					+ "</td><td class='cname'>" + products[pnum].productName 
					+ "</td><td class='cqty'>" + qty + "</td>"
					+ "</td><td class='cprice'>" + parseInt(products[pnum].productPrice, 10) * parseInt(qty, 10)
					+ "<td class='cdel'><i class='bi bi-trash'></i></td></tr></table>";			
				$("#ccontent").append(cstr);

				let cookiestr = $("#ccontent").html();
				Cookies.set("cart", cookiestr, { expires: 7 });
				
				$(".bi-trash").click(function(){				
					$(this).parentsUntil("table").remove();
					if($("#ccontent .cname").text() == ""){
						$("#empty").show();
						$("#ctotal").text(0);
					}

					let np = 0;
					$(".cprice").each(function(){
						np += parseInt($(this).text(), 10);
						$("#ctotal").text(np);
					});

					let cookiestr = $("#ccontent").html();
					console.log(cookiestr);
					Cookies.set("cart", cookiestr, { expires: 7 });	
				});
			}


			function cal(){
				let np = 0;
				$(".cprice").each(function(){
					np += parseInt($(this).text(), 10);
					$("#ctotal").text(np);
				});
				
				$(".bi-trash").click(function(){				
					$(this).parentsUntil("table").remove();
					if($("#ccontent .cname").text() == ""){
						$("#empty").show();
						$("#ctotal").text(0);
					}

					let cookiestr = $("#ccontent").html();
					console.log(cookiestr);
					Cookies.set("cart", cookiestr, { expires: 7 });	

					let np = 0;
					$(".cprice").each(function(){
						np += parseInt($(this).text(), 10);
						$("#ctotal").text(np);
					});
				});
			}
	</script>
</body>
</html>