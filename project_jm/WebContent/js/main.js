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
/*(function(){
    const el = document.query('mainCarousel');
    if(!el) return;
    const messages = [
      '최신 발매 앨범',
      '이주의 추천 플레이리스트',
      '실시간 인기 아티스트'
    ];
    let idx = 0;
    setInterval(()=>{
      el.textContent = messages[idx];
      idx = (idx+1) % messages.length;
    }, 3500);
  })();*/