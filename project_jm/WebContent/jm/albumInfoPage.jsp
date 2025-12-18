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
				<h2>${avo.album_name}</h2>
				<p style="margin-top:6px; color:#666666;">
					<a class="moveInfo" href="singerInfoPage" singer="${avo.singer}" style="color:#666666;">
						${avo.singer}
					</a> · 
					<span class="odate">${avo.release_date}</span>
				</p>
			</div>
		</div>
		
		
	</main>
</body>
<script type="text/javascript" src="js/aTagEvents.js"></script>
<script type="text/javascript" src="js/dateformat.js"></script>
</html>