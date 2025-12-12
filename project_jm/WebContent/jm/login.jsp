<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<div class="container" style="max-width:420px; margin-top:60px;">
		<div class="card">
			<h2 style="margin-bottom:20px;">로그인</h2>
			<form action="/login" method="post" style="display:flex; flex-direction:column; gap:14px;">
				<input type="text" name="username" placeholder="아이디" required>
				<input type="password" name="password" placeholder="비밀번호" required>
				<button type="submit" class="icon-btn" style="background:#c58aff; border:0; color:#fff; padding:10px; border-radius:8px;">로그인</button>
			</form>
			<div style="margin-top:12px; font-size:14px; text-align:center;">
				아직 계정이 없으신가요? <a href="JmuserController?cmd=signup">회원가입</a>
				<br> <br>
				<a href="JmuserController?cmd=main">메인으로 돌아가기</a>
			</div>
		</div>
	</div>
</body>
</html>