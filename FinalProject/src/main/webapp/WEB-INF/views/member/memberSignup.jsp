<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>完成中請燒等</title>

</head>
<body>
<h4>註冊會員</h4>

<form:form action ="${pageContext.request.contextPath}/member" method="post" modelAttribute="member" >

     <strong>會員信箱帳號:<br><form:input placeholder="請輸入您的信箱帳號"  path="memberAccount"/></strong>
     <br><br>
     <strong>會員密碼:<br><form:input placeholder="請輸入您的密碼" path="memberPwd"/></strong>
     <br><br>
     <strong>會員姓名:<br><form:input placeholder="請輸入您的姓名" path="memberName"/></strong>
     <br><br>
     <strong>會員身分證號:<br><form:input placeholder="請輸入您的身分證號10碼" path="memberIdNumber"/></strong>
     <br><br>
    <strong> 會員通訊地址:<br><form:input placeholder="請輸入您的地址" path="memberAddress"/></strong>
     <br><br>
     <strong>會員電話:<br><form:input placeholder="請輸入您的電話" path="memberPhone"/></strong>
     <br><br>
     <input type="submit" value="註冊" />

</form:form>
</body>
</html>