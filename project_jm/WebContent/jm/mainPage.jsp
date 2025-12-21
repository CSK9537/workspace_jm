<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Joonzis' Music</title>
<link rel="stylesheet" href="css/main.css">
</head>
<%@ include file="/include/header.jsp" %>
<body>	
	<main class="container" style="max-width:1200px; ">
		<div class="layout">
	<!-- 메인 컬럼 -->
			<section>
			<!-- 인기 곡 섹션 -->
				<div class="section card">
					<div class="title">
						<h3>hot 5</h3><a class="moveInfo" href="chartPage">hot 100 &gt;</a>
					</div>
					<ul class="song-list">
						<c:forEach var="song" items="${list}" varStatus="status" begin="0" end="4">
							<li class="song-item">
								<div class="thumb">${status.index+1}</div>
								<div class="meta">
									<div class="name">
										<a href="${song.link}" target="_blank">${song.song_name}</a>
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
								<div class="main-content"><a href="${song.link}" target="_blank">▶</a></div>
								<div class="main-content"><a class="moveInfo" href="songInfoPage" songnum="${song.song_number}">♬</a></div>
								<div class="main-content"><a class="updatePlaylist" href="addPlaylist" songnum="${song.song_number}">♥</a></div>
							</li>
						</c:forEach>
						<c:if test="${empty list}">
							<li class="song-item">데이터가 없습니다.</li>
						</c:if>
					</ul>
				</div>
			</section>
		<!-- 오른쪽 사이드바 -->
			<aside class="sidebar">
				<div class="quick-links" style="margin-top:20px">
					<a class="card" id="moveFavorite" href=playlistPage jmuserid="${jmuser.jmuser_id}">나의 플레이리스트</a>
				</div>
			</aside>
		</div>
		
		<footer class="site-footer container">
			<div>© 2025 Joonzis' Music. 실제 서비스 디자인은 저작권 보호 대상일 수도 있고 아닐 수도 있습니다.</div>
		</footer>
	</main>
</body>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/aTagEvents.js"></script>
</html>