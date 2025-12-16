<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/chart.css">
</head>
<%@ include file="/include/header.jsp" %>
<body>
	<div class="container">
		<div class="card">
			<h2>내 정보</h2>
			<form>
				<h4>필수사항</h4>
				<input type="text" class="input_box" name="jmuser_id" placeholder="아이디 - 영어 소문자로 시작, 영어 + 숫자 3~12글자" maxlength="12" value="${jmuser.jmuser_id }">
				<input type="password" class="input_box" name="jmuser_pw" placeholder="비밀번호 - 영어 소문자, 대문자, 숫자 8~16글자" value="${jmuser.jmuser_pw }">
				<input type="password" class="input_box" name="jmuser_pw2" placeholder="비밀번호 확인" value="">
				<input type="text" class="input_box" name="jmuser_name" placeholder="이름 - 한글, 영어 2~12 글자" value="${jmuser.jmuser_name }">
				<input type="text" class="input_box" name="jmuser_nickname" placeholder="닉네임" value="${jmuser.jmuser_nickname }">
				<input type="text" class="input_box" name="jmuser_birth" placeholder="생년월일 8자리" value="${jmuser.jmuser_birth }">
				<input type="text" class="input_box" name="jmuser_tel" placeholder="연락처" value="${jmuser.jmuser_tel }">
				<input type="text" class="input_box" name="jmuser_email" placeholder="이메일" value="${jmuser.jmuser_email }">
				<input type="text" class="input_box" name="jmuser_addr" placeholder="주소" value="${jmuser.jmuser_addr }">
				<input type="hidden" name="cmd" value="update">
			</form>
		</div>
	</div>
</body>
</html>