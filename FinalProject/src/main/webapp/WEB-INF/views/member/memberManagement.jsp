<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html>
<head>
<!-- 會員管理頁面 -->
    <meta charset="UTF-8"/>
    <title>牙醫會員YYYYY</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">  
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.html">首頁</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
            
                <li><a href="<c:url value='memberLogout'/>">登出</a></li>
                
              
                
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>會員選項</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li> 
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/member"><i class="icon-font">&#xe008;</i>修改會員資料</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe008;</i>新增預約服務</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe005;</i>預約記錄查詢</a></li>
                        <li><a href="design.html"><i class="icon-font">&#xe005;</i>訂單記錄查詢</a></li>
                        
                    </ul>
                </li>
                
            </ul>
        </div>
    </div>   
            </div>
            <div class="result-content">
                <ul class="sys-info-list">  
                </ul>
            </div>
</body>
</html>