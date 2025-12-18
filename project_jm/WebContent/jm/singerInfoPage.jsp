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
				사진
			</div>
			<div>
				<h2>${singervo.singer }</h2>
				<p style="color:#666; margin-top:6px;">
					<span class="odate">${singervo.debut_date}</span> 데뷔 · ${singervo.company}
				</p>
			</div>
		</div>

	</main>
</body>
<script type="text/javascript" src="js/dateformat.js"></script>
</html>