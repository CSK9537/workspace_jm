<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 정보</title>
<link rel="stylesheet" href="css/main.css">
</head>
<%@ include file="/include/header.jsp" %>
<body>
	<main class="container">
		
		<div class="card" style="display:flex; gap:20px;">
			<div class="thumb" style="width:160px; height:160px;">앨범커버</div>
			<div style="flex:1;">
				<h2>곡 제목</h2>
				<p style="margin-top:6px; color:#666;">
					가수명 · 앨범명
				</p>
				<div style="margin-top:14px; display:flex; gap:10px;">
					<button class="icon-btn" style="background:#1db954; color:#fff; border:0;">
						▶ 재생
					</button>
					<button class="icon-btn">
						♡ 좋아요
					</button>
				</div>
			</div>
		</div>
		
		<div class="section card" style="margin-top:20px;">
			<div class="title">
				<h3>곡 정보</h3>
			</div>
			<ul class="song-list">
				<li>발매일 : 2024.01.01</li>
				<li>장르 : 발라드</li>
				<li>작곡 : 홍길동</li>
				<li>작사 : 김멜론</li>
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
</html>