// a 태그 이벤트
document.querySelectorAll('.moveInfo').forEach(aEle => {
	aEle.addEventListener('click', (e) => {
		e.preventDefault();
		let cmd = aEle.getAttribute('href');
		let songnum = aEle.getAttribute('songnum');
		let singer = aEle.getAttribute('singer');
		let albumname = aEle.getAttribute('albumname');
		let sendData = 'cmd=' + cmd;
		if(songnum != null){
			sendData += '&song_number=' + songnum;
		}
		if(singer != null){
			sendData += '&singer=' + singer;
		}
		if(albumname != null){
			sendData += '&album_name=' + albumname;
		}
		location.href = 'JmMainController?' + sendData;
	});
});

// 플레이리스트 수정
document.querySelectorAll('.updatePlaylist').forEach(aEle => {
	aEle.addEventListener('click', (e) => {
		e.preventDefault();
		let getcmd = aEle.getAttribute('href');
		let getsongnum = aEle.getAttribute('songnum');
		if(getcmd == 'addPlaylist'){
			if(confirm("플레이리스트에 추가하시겠습니까?")){
				const params = {
					cmd : getcmd,
					song_number : getsongnum
				}
				
				const queryString = Object.keys(params).map(key => encodeURIComponent(key)
				+ "=" + encodeURIComponent(params[key])).join('&');
				
				fetch(`JmmusicController?${queryString}`)
					.then(response => response.json())
					.then(data => {
						if(data.result == "fail"){
							alert('추가 실패');
						}
					})
					.catch(err => console.log(err));
			}
		}
		
		
		if(getcmd == 'removePlaylist'){
			if(confirm("플레이리스트에서 삭제하시겠습니까?")){
				location.href = `JmmusicController?cmd=${getcmd}&song_number=${getsongnum}`;
			}
		}
	});
});