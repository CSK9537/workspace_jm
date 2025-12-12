document.querySelectorAll("button").forEach(btn => {
	btn.addEventListener('click', () => {
		
		let btn_id = btn.id;
		let sendData = '';
		
		if(btn_id === 'loginPage'){
			sendData = 'cmd=loginPage';
		}else if(btn_id === 'signupPage'){
			sendData = 'cmd=signupPage';
		}
		
		location.href = `/project_jm/JmuserController?${sendData}`;
		
	});
});