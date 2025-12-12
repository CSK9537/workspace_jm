<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/signup_login.css">
</head>
<body>
	<div class="container" style="max-width:600px; margin-top:15px;">
		<div class="card">
			<h2 style="margin-bottom:20px; text-align:center;">회원가입</h2>
			<form style="display:flex; flex-direction:column; gap:13px;">
				<h4>필수사항</h4>
				<div style="display:flex; flex-direction:row; justify-content: space-between;">
					<input type="text" class="input_box" name="jmuser_id" placeholder="아이디 - 영어 소문자로 시작, 영어 + 숫자 조합 3~12 글자" maxlength="12" style="width:435px;">
					<button type="button" id="idcheck" onclick="validateId()">중복확인</button>
				</div>
				<input type="password" class="input_box" name="jmuser_pw" placeholder="비밀번호">
				<input type="password" class="input_box" name="jmuser_pw2" placeholder="비밀번호 확인">
				<input type="text" class="input_box" name="jmuser_name" placeholder="이름">
				
				<h4 style="margin-top:15px;">선택사항</h4>
				<input type="text" class="input_box" name="jmuser_nickname" placeholder="닉네임">
				<input type="text" class="input_box" name="jmuser_birth" placeholder="생년월일 8자리">
				<div style="display:flex; flex-direction:row; justify-content: space-between;">
					<input type="radio" id="radiobtn1" name="jmuser_gender" value="남">
					<label for="radiobtn1">남</label>
					<input type="radio" id="radiobtn2" name="jmuser_gender" value="여">
					<label for="radiobtn2">여</label>
					<input type="radio" id="radiobtn3" name="jmuser_gender" value="기타">
					<label for="radiobtn3">기타</label>
				</div>
				<input type="text" class="input_box" name="jmuser_tel" placeholder="연락처">
				<input type="text" class="input_box" name="jmuser_email" placeholder="이메일">
				<input type="text" class="input_box" name="jmuser_addr" placeholder="주소">
				<input type="hidden" name="cmd" value="signup">
				<button type="button" onclick="signup()" class="icon-btn" style="background:#c58aff; font-size:16px; border:0; color:#fff; padding:10px; border-radius:8px; margin-top:20px;">가입하기</button>
			</form>
			<div style="margin-top:20px; font-size:15px; text-align:center;">
				이미 계정이 있으신가요? <a href="JmuserController?cmd=loginPage">로그인</a>
			</div>
			<div style="margin-top:10px; font-size:15px; text-align:center;">
				<a href="JmuserController?cmd=mainPage">메인으로 돌아가기</a>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/signup.js"></script>
</html>