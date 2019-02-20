<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MFS</title>
<!-- icon for Web -->
<link rel="icon" href="resources/image/icon.png">
<link href="<c:url value="/resources/css/registry.css" />"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="<c:url value="/resources/js/login.js" />"></script>
</head>
<body>
	<div class="panel-wrapper">
		<div class="feature-panel--enterprise">
			<h2 id="enterprise-panel__header" style="pading_top: 330px;">
				<small id="enterprise-panel__subheader">Thông Tin Các Thành
					Viên</small><br> Nhóm Siêu Quậy Tí Hon
			</h2>
			<p id="enterprise-panel__caption">Master Design. in class
				desinger fresher</p>
			<a href="https://www.dxc.technology/" target="_blank"
				class="enterprise-panel__button"
				style="border: 1px solid rgb(255, 51, 102); background: none; color: rgb(255, 51, 102); visibility: visible;">Learn
				More</a>
			<div class="enterprise-panel__footer">
				<p>
					TRUSTED BY THE WORLD'S SMARTEST COMPANIES <br> My group Slogan
				</p>
			</div>
		</div>
		<div class="main-panel">
			<div class="main-panel__table">
				<div class="main-panel__table-cell">
					<div class="main-panel__content">
						<div id="formSignin">
							<h1 class="main-panel__heading">
								Sign in to Files Sharing. <small class="main-panel__subheading">Enter
									your details below. </small>
							</h1>
							<form id="signinform" action="" method="post" novalidate>
								<div id="loginemail" class="form__group">
									<label for="emailAddress" class="form__label">Email
										Address</label> <input id="emailAddress" type="email"
										name="email_login_form" class="form__input"
										placeholder="as1@gmail.com">
								</div>
								<div id="loginpassword" class="form__group">
									<label for="password" class="form__label">Password</label> <input
										id="password" type="password" class="form__input"
										name="password_login_form" placeholder="Enter your password">									
								</div>
								<div class="text--center">
									<button id="login" class="form__button">Sign in</button>
								</div>
							</form>
							<span>${checkUserLogin}</span>
							<p id="two">
								Don't have account? <a href="register" id="singup">Sign up
									here</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>