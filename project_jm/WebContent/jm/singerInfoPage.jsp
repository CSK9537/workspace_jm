<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가수 정보</title>
<link rel="stylesheet" href="css/main.css">
</head>
<%@ include file="/include/header.jsp" %>
<body>
	<main class="container">
		
		<div class="card" style="display:flex; gap:20px; align-items:center;">
			<div class="thumb" style="width:140px; height:140px; border-radius:50%;">
				아티스트
			</div>
			<div>
				<h2>${singervo.singer }</h2>
				<p style="color:#666; margin-top:6px;">
					<span class="odate">${singervo.debut_date }</span> 데뷔 · ${singervo.company }
				</p>
				<button class="icon-btn" style="margin-top:10px;">
					♡ 팬맺기
				</button>
			</div>
		</div>
		
		<div class="section card" style="margin-top:20px;">
			<div class="title"><h3>대표곡</h3></div>
			<ul class="song-list">
				<li class="song-item">대표곡 1</li>
				<li class="song-item">대표곡 2</li>
				<li class="song-item">대표곡 3</li>
			</ul>
		</div>
		
		<div class="section card" style="margin-top:20px;">
			<div class="title"><h3>앨범</h3></div>
			<div class="grid-3">
				<div class="card">앨범 1</div>
				<div class="card">앨범 2</div>
				<div class="card">앨범 3</div>
			</div>
		</div>

	</main>
</body>
<script type="text/javascript" src="js/dateformat.js"></script>
</html>