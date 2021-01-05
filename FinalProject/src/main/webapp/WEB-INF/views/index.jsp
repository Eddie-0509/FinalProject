<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center">MVC Exercise</h1>
	<hr>
	<table border="1" style="margin: 0px auto;">
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left" /> 
				<a href="<c:url value='/welcome'/>">Hello	Spring MVC</a><BR>
				
			</td>
			<td width="350"><p align="left" /><a href="<c:url value='/products'/>">查詢產品資料</a><BR><BR>
			</td>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left" />
				<a href="<c:url value='/products'/>">查詢所有產品資料</a><BR>
			<BR>
			<td width="350"><p align="left" />
				<a href="<c:url value='/update/stock'/>">更新多筆產品庫存數量</a><BR>
			<BR>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left" />
				<a href="<c:url value='/queryByCategory'/>">分類查詢</a><BR>
			<BR>
			<td width="350"><p align="left" />
				<a href="<c:url value='/products/add'/>">新增產品資料</a><BR>
			<BR>
		</tr>
		<tr height="52" bgcolor="lightblue" align="center">
			<td width="350"><p align="left" /> 
				<a href='forwardDemo'>RedirectView:	forwardDemo</a><br><BR>
			</td>
			<td width="350"><p align="left" /> 
				<a href='redirectDemo'>RedirectView: redirectDemo</a><br><BR>
			</td>
		</tr>
		
	</table>
<hr>
req.getRequestURL() = ${getRequestURL}<br/>
req.getRequestURI() = ${getRequestURI}<br/>
req.getContextPath() = ${getContextPath}<br/>
req.getQueryString() = ${getQueryString}<br/>

</body>
</html>
