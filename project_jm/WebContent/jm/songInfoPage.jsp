<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 정보</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/songInfo.css">
</head>
<%@ include file="/include/header.jsp" %>
<body>
	<main class="container">
		
		<div class="card" style="display:flex; gap:20px;">
			<div class="thumb" style="width:160px; height:160px;">앨범커버</div>
			<div style="flex:1;">
				<h2>${songvo.song_name }</h2>
				<p style="margin-top:6px;">
					<a class="moveInfo" href="singerInfoPage" singer="${songvo.singer}" style="color:#666666;">
						${songvo.singer}
					</a> · 
					<a class="moveInfo" href="albumInfoPage" songnum="${songvo.song_number}" style="color:#666666;">
						${songvo.album_name}
					</a>
				</p>
				<div style="margin-top:14px; display:flex; gap:10px;">
					<button class="icon-btn" onclick="window.open('${songvo.link}')">
						▶ 재생
					</button>
					<a class="updateFavorite" href="addFavorite" songnum="${songvo.song_number}">
						♥ 좋아요
					</a>
				</div>
			</div>
		</div>
		
		<div class="section card" style="margin-top:20px;">
			<div class="title">
				<h3>곡 정보</h3>
			</div>
			<ul class="song-list">
				<li>발매일 : <span class="odate">${albumvo.release_date}</span></li>
			</ul>
		</div>
		
		<div class="section card" style="margin-top:20px;">
			<div class="title">
				<h3>가사</h3>
			</div>
			<pre style="white-space:pre-wrap; line-height:1.6;">여기에 가사가 표시됩니다.</pre>
		</div>
		
	</main>
</body>
<script type="text/javascript" src="js/aTagEvents.js"></script>
<script type="text/javascript" src="js/dateformat.js"></script>
</html>