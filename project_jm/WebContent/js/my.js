const f = document.forms[0];

let pwCk = pwReCk = nameCk = false; // 검증

const regExpId = /^[a-z]+[0-9a-z]{3,12}$/; // 아이디 검증 정규식
const regExpPw = /^[0-9a-zA-Z]{8,16}$/; // 비밀번호 검증 정규식
const regExpName = /^[가-힣a-zA-Z]{2,12}$/; // 이름 검증 정규식 
const regExpEmail = /^[a-zA-Z0-9+-\_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/; // 이메일 검증 정규식
/*
function update(){
	// 1. 데이터 검증
	// 1.1 아이디
	// 1.2. 비밀번호
	if(!f.jmuser_pw){
		alert("비밀번호를 입력해주세요.");
		pwCk = false;
		return;
	}else if(!regExpPw.exec(f.jmuser_pw.value)){
		alert("형식에 맞지 않은 비밀번호입니다.");
		pwCk = false;
		return;
	}else{
		pwCk = true;
	}
	// 1.3. 비밀번호 확인
	if(f.jmuser_pw.value != f.jmuser_pw2.value){
		alert("비밀번호가 같지 않습니다.");
		pwReCk = false;
		return;
	}else{
		pwReCk = true;
	}
	// 1.4. 이름
	if(!f.jmuser_name){
		alert("이름을 입력해주세요.");
		nameCk = false;
		return;
	}else if(!regExpName.exec(f.jmuser_name.value)){
		alert("형식에 맞지 않은 이름입니다.");
		nameCk = false;
		return;
	}else{
		nameCk = true;
	}
	// 1.5. 닉네임
	// 1.6. 생년월일
	// 1.7. 성별
	// 1.8. 연락처
	// 1.9. 이메일
	// 1.10. 주소
	
	// 2. 필수 사항 검증
	if(!idCk || !pwCk || !pwReCk || !nameCk){
		alert("입력 내용을 확인해주세요.");
		return;
	}
	
	// 2. form 데이터들을 json으로 변경
	let formData = new FormData(f);
	let jsonData = JSON.stringify(
		Object.fromEntries(formData.entries())
	);
	
	// 3. fetch로 데이터 통신
	fetch(`JmuserAsyncController`, {
			method : 'POST',
			body : jsonData,
			headers : {
				'Content-type' : 'application/json; charset=UTF-8'
			}
		})
		.then(response => response.json())
		.then(data => {
			console.log(data);
			if(data.result == 1){
				alert("회원가입이 성공했습니다.");
				if(confirm("로그인 화면으로 이동할까요?")){
					// 로그인 페이지로 이동
					location.href = 'JmuserController?cmd=loginPage'
				}else{
					// 메인 페이지로 이동
					location.href = 'JmuserController?cmd=mainPage'
				}
			}else{
				alert("회원가입이 실패했습니다.");
			}
		})
		.catch(err => console.log(err));

}
*/