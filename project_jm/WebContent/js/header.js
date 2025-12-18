// 버튼 이벤트 부여
document.querySelectorAll('button').forEach(btn => {
	btn.addEventListener('click', () => {
		
		let btn_id = btn.id;
		let sendData = '';
		
		if(btn_id === 'signupPage'){
			sendData = 'cmd=signupPage';
		}else if(btn_id === 'loginPage'){
			sendData = 'cmd=loginPage';
		}else if(btn_id === 'myPage'){
			sendData = 'cmd=myPage';
		}else if(btn_id === 'logout'){
			logout();
			return;
		}
		
		location.href = `/project_jm/JmMainController?${sendData}`;
		
	});
});

// 검색어 검증
let doSearch = document.querySelector('input[type="search"]');
doSearch.addEventListener('keydown', (e) => {
	if(e.key === 'Enter'){
		if(doSearch.value.length < 2){
			e.preventDefault();
			alert('검색어는 2글자 이상만 가능합니다.');
			return;
		}
	}
});

// 로그아웃
function logout(){
	if(confirm("로그아웃하시겠습니까?")){
		location.href = `/project_jm/JmuserAsyncController?cmd=logout`;
	}
}