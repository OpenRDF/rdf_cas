<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page session="true" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	    <base href="<%=basePath%>">
	    <title>知识库系统 -- 中央认证</title>
        <link type="text/css" rel="stylesheet" href="<%=basePath%>css/cas_rdf.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	    <link rel="icon" href="<%=basePath%>favicon.ico" type="image/x-icon" />
	</head>
	<body class="user-style ms-windows">
		<!-- head -->
		<div id="head">
			<div id="head-inner">
				<div class="head-inner-left">
					<ul>
						<li class="logo">
							<a href="http://www.156it.com/" style="display: block; height: 50px; width: 200px; padding-top: 25px;">
								<img src="<%=basePath%>images_rdf/logo_reg.png" alt="logo"/>
							</a>
						</li>
						<i></i>
						<li class="info">登录账号</li>
					</ul>
				</div>
				<div class="head-inner-right">
					<span>没有账户，现在就</span>
					<button class="login-btn" id="login_btn">注册</button>
				</div>
			</div>
		</div>
		<!-- nav -->
		<div id="nav"> 
			<div class="nav-2">
				<div class="mod-nav clearfix">
					<h1 class="page-type-notab"></h1>
				</div>
			</div>
		</div>