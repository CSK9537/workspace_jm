<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<div class="container" style="max-width:420px; margin-top:60px;">
		<div class="card">
			<h2 style="margin-bottom:20px;">회원가입</h2>
			<form action="/signup" method="post" style="display:flex; flex-direction:column; gap:14px;">
				<input type="text" name="username" placeholder="아이디">
				<input type="password" name="password" placeholder="비밀번호">
				<input type="password" name="password2" placeholder="비밀번호 확인">
				<input type="text" name="nickname" placeholder="닉네임">
				<button type="submit" class="icon-btn" style="background:#c58aff; border:0; color:#fff; padding:10px; border-radius:8px;">가입하기</button>
			</form>
			<div style="margin-top:12px; font-size:14px; text-align:center;">
				이미 계정이 있으신가요? <a href="JmuserController?cmd=login">로그인</a>
				<br> <br>
				<a href="JmuserController?cmd=main">메인으로 돌아가기</a>
			</div>
		</div>
	</div>
</body>
</html>