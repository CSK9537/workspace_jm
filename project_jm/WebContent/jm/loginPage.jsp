<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/signup_login.css">
</head>
<body>
	<div class="container" style="max-width:600px; margin-top:15px;">
		<div class="card">
			<h2 style="margin-bottom:20px; text-align:center;">로그인</h2>
			<form style="display:flex; flex-direction:column; gap:13px;">
				<input type="text" class="input_box" name="jmuser_id" placeholder="아이디">
				<input type="password" class="input_box" name="jmuser_pw" placeholder="비밀번호">
				<button type="button" class="icon-btn" style="background:#c58aff; font-size:16px; border:0; color:#fff; padding:10px; border-radius:8px; margin-top:20px;">로그인</button>
			</form>
			<div style="margin-top:20px; font-size:15px; text-align:center;">
				아직 계정이 없으신가요? <a href="JmuserController?cmd=signupPage">회원가입</a>
			</div>
			<div style="margin-top:10px; font-size:15px; text-align:center;">
				<a href="JmuserController?cmd=mainPage">메인으로 돌아가기</a>
			</div>
		</div>
	</div>
</body>
</html>