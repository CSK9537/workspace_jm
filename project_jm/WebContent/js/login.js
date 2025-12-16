const f = document.forms[0];

function login(){
	// 1. 아이디 및 비밀번호 빈 값 검증
	if(!f.jmuser_id.value || !f.jmuser_pw.value){
		alert("회원 정보를 입력해주세요.");
		return;
	}
	
	// 2. mId, mPw, cmd 데이터 json으로 변환 후 전송
	// form 데이터들을 json으로 변경
	let formData = new FormData(f);
	let jsonData = JSON.stringify(
		Object.fromEntries(formData.entries())
	);
	
	// fetch로 데이터 통신
	fetch(`JmuserAsyncController`, {
			method : 'POST',
			body : jsonData,
			headers : {
				'Content-type' : 'application/json; charset=UTF-8'
			}
		})
		.then(response => response.json())
		.then(data => {
			if(data.result === "success"){
				// 메인으로 이동(index.jsp)
				location.href = 'JmMainController?cmd=mainPage'
			}else{
				alert("아이디와 비밀번호를 확인해 주세요");
				return;
			}
		})
		.catch(err => console.log(err));
	
}