document.querySelectorAll("button").forEach(btn => {
	btn.addEventListener('click', () => {
		
		let btn_id = btn.id;
		let sendData = '';
		
		if(btn_id === 'login'){
			sendData = 'cmd=login';
		}else if(btn_id === 'signup'){
			sendData = 'cmd=signup';
		}
		
		location.href = `/project_jm/JmuserController?${sendData}`;
		
	});
});