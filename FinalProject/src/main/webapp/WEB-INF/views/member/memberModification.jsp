<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html>
<!-- 會員修改 -->
<head>
    <meta charset="UTF-8"/>
    <title>牙醫會員</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>


<body>


<h4>修改用戶訊息</h4>
<form:form>
<form:hidden path="memberPkId"/><br><br>
<form:input path="memberPwd"/><br><br>
<form:input path="memberName"/><br><br>
<form:input path="memberAddress"/><br><br>
<form:input path="memberPhone"/><br><br>
<input type="submit" value="修改會員"/>



</form:form>

</body>
</html>