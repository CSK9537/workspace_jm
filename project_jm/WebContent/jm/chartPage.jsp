<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/chart.css">
</head>
<%@ include file="/include/header.jsp" %>
<body>
	<div class="container">
		<h2>Hot 100</h2>
		<ul class="song-list">
			<li class="song-item">
				<div class="thumb">순위</div>
				<div class="meta">
					<div class="name">곡 정보</div>
				</div>
				<div class="title">재생</div>
				<div class="title">정보</div>
				<div class="title">담기</div>
			</li>
			<c:forEach var="song" items="${list }" varStatus="status">
				<li class="song-item">
					<div class="thumb">${status.index + 1}</div>
					<div class="meta">
						<div class="name">${song.song_name}</div>
						<div class="sub">${song.singer} • ${song.album_name}</div>
					</div>
					<div class="content"><a href="#">▶</a></div>
					<div class="content"><a href="#">♬</a></div>
					<div class="content"><a href="#">♥</a></div>
				</li>
			</c:forEach>
			<c:if test="${empty list}">
				<li class="song-item">데이터가 없습니다. (서버에서 list를 전달하세요)</li>
			</c:if>
		</ul>
		<form>
			<input type="hidden" name="" value="">
		</form>
	</div>
</body>
</html>