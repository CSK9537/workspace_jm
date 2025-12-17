<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>앨범 정보</title>
<link rel="stylesheet" href="css/main.css">
</head>
<%@ include file="/include/header.jsp" %>
<body>
	<main class="container">
		
		<div class="card" style="display:flex; gap:20px;">
			<div class="thumb" style="width:180px; height:180px;">
				앨범커버
			</div>
			<div>
				<h2>앨범명</h2>
				<p style="margin-top:6px; color:#666;">
					가수명 · 2024.01.01
				</p>
				<div style="margin-top:14px; display:flex; gap:10px;">
					<button class="icon-btn" style="background:#1db954; color:#fff; border:0;">
						▶ 전체 재생
					</button>
					<button class="icon-btn">
						♡ 좋아요
					</button>
				</div>
			</div>
		</div>
		
		<div class="section card" style="margin-top:20px;">
			<div class="title">
				<h3>수록곡</h3>
			</div>
			<ul class="song-list">
				<li class="song-item">1. 수록곡 제목</li>
				<li class="song-item">2. 수록곡 제목</li>
				<li class="song-item">3. 수록곡 제목</li>
			</ul>
		</div>
		
		<div class="section card" style="margin-top:20px;">
			<div class="title">
				<h3>앨범 정보</h3>
			</div>
			<ul class="song-list">
				<li>발매사 : 멜론엔터</li>
				<li>기획사 : 멜론뮤직</li>
				<li>장르 : 댄스</li>
			</ul>
		</div>
		
	</main>
</body>
</html>