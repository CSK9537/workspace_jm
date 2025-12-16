document.querySelectorAll("button").forEach(btn => {
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
		
		location.href = `/project_jm/JmuserController?${sendData}`;
		
	});
});
function logout(){
	if(confirm("로그아웃하시겠습니까?")){
		location.href = `/project_jm/JmuserAsyncController?cmd=logout`;
	}
}