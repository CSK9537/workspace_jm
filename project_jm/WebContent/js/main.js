// 플레이리스트 이동
document.getElementById('moveFavorite').addEventListener('click', (e) => {
		e.preventDefault();
		
		let cmd = e.target.getAttribute('href');
		let sendData = 'cmd=' + cmd;
		let getjmuserid = e.target.getAttribute('jmuserid');
		if(getjmuserid == ''){
			alert("로그인 후 이용할 수 있습니다.");
			return;
		}else{
			location.href = 'JmMainController?' + sendData;
		}
	});