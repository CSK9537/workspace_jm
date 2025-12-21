<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 정보</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/search.css">
</head>
<%@ include file="/include/header.jsp" %>
<body>
	<main class="container">
		
		<div class="section card" style="margin-top:20px;">
			<div class="title">
				<h3>가수명으로 검색(검색어 : '${q}')</h3>
			</div>
			<c:choose>
				<c:when test="${not empty list1}">
					<ul class="song-list">
						<li class="chart-song-item">
							<div class="chart-thumb">번호</div>
							<div class="meta">
								<div class="name">곡 정보</div>
							</div>
							<div class="search-title">재생</div>
							<div class="search-title">정보</div>
							<div class="search-title">담기</div>
						</li>
						<c:forEach var="song" items="${list1}" varStatus="status">
							<li class="search-song-item">
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
					</ul>
				</c:when>
				<c:otherwise>
					<li class="song-item">찾는 가수가 없습니다.</li>
				</c:otherwise>
			</c:choose>
		</div>
		
		<div class="section card" style="margin-top:20px;">
			<div class="title">
				<h3>노래명으로 검색(검색어 : '${q}')</h3>
			</div>
			<c:choose>
				<c:when test="${not empty list2}">
					<ul class="song-list">
						<li class="chart-song-item">
							<div class="chart-thumb">번호</div>
							<div class="meta">
								<div class="name">곡 정보</div>
							</div>
							<div class="search-title">재생</div>
							<div class="search-title">정보</div>
							<div class="search-title">담기</div>
						</li>
						<c:forEach var="song" items="${list2}" varStatus="status">
							<li class="search-song-item">
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
					</ul>
				</c:when>
				<c:otherwise>
					<li class="song-item">찾는 노래가 없습니다.</li>
				</c:otherwise>
			</c:choose>
		</div>
		
		<div class="section card" style="margin-top:20px;">
			<div class="title">
				<h3>앨범명으로 검색(검색어 : '${q}')</h3>
			</div>
			<c:choose>
				<c:when test="${not empty list3}">
					<ul class="song-list">
						<li class="chart-song-item">
							<div class="chart-thumb">번호</div>
							<div class="meta">
								<div class="name">곡 정보</div>
							</div>
							<div class="search-title">재생</div>
							<div class="search-title">정보</div>
							<div class="search-title">담기</div>
						</li>
						<c:forEach var="song" items="${list3}" varStatus="status">
							<li class="search-song-item">
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
					</ul>
				</c:when>
				<c:otherwise>
					<li class="song-item">찾는 앨범이 없습니다.</li>
				</c:otherwise>
			</c:choose>
		</div>
		
	</main>
</body>
<script type="text/javascript" src="js/aTagEvents.js"></script>
</html>