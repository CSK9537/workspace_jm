<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hot 100</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/chart.css">
</head>
<%@ include file="/include/header.jsp" %>
<body>
	<div class="container">
		<h2>Hot 100</h2>
		<ul class="song-list">
			<li class="chart-song-item">
				<div class="chart-thumb">순위</div>
				<div class="meta">
					<div class="name">곡 정보</div>
				</div>
				<div class="title">재생</div>
				<div class="title">정보</div>
				<div class="title">담기</div>
			</li>
			<c:forEach var="song" items="${list}" varStatus="status">
				<li class="song-item">
					<div class="thumb">${status.index + 1}</div>
					<div class="meta">
						<div class="name">
							<a href="${song.link}" target="_blank">
								${song.song_name}
							</a>
						</div>
						<div class="sub">
							<a class="moveInfo" href="singerInfoPage" singer="${song.singer}">
								${song.singer}
							</a> • 
							<a class="moveInfo" href="albumInfoPage" singer="${song.singer}" albumname="${song.album_name}">
								${song.album_name}
							</a>
						</div>
					</div>
					<div class="content">
						<a href="${song.link}" target="_blank">
							▶
						</a>
					</div>
					<div class="content">
						<a class="moveInfo" href="songInfoPage" songnum="${song.song_number}">
							♬
						</a>
					</div>
					<div class="content">
						<a class="updatePlaylist" href="addPlaylist" songnum="${song.song_number}">
							♥
						</a>
					</div>
				</li>
			</c:forEach>
			<c:if test="${empty list}">
				<li class="song-item">노래가 없습니다.</li>
			</c:if>
		</ul>
	</div>
</body>
<script type="text/javascript" src="js/aTagEvents.js"></script>
</html>