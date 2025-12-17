<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/header.css">
</head>
<body>
	<header class="site-header">
		<div class="brand">
			<a href="JmMainController?cmd=mainPage" class="logo" style="color:#fff;">Joonzis' Music</a>
		</div>
		<div class="search">
			<form action="JmMainController">
				<input type="hidden" name="cmd" value="searchPage">
				<input type="search" name="q" placeholder="가수, 곡, 앨범 검색" aria-label="검색" />
			</form>
		</div>
		<div class="header-actions">
			<c:choose>
				<c:when test="${not empty sessionScope.jmuser }">
					<h5 style="color:#ffffff;">
						<c:choose>
							<c:when test="${not empty sessionScope.jmuser.jmuser_nickname }">
								${sessionScope.jmuser.jmuser_nickname } 님
							</c:when>
							<c:otherwise>
								${sessionScope.jmuser.jmuser_name } 님
							</c:otherwise>
						</c:choose>
					</h5>
					<button class="icon-btn" id="myPage">마이페이지</button>
					<button class="icon-btn" id="logout">로그아웃</button>
				</c:when>
				<c:otherwise>
					<button class="icon-btn" id="signupPage">회원가입</button>
					<button class="icon-btn" id="loginPage">로그인</button>
				</c:otherwise>
			</c:choose>	
		</div>
	</header>
</body>
<script type="text/javascript" src="js/header.js"></script>
</html>