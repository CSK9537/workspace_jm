// 페이지 이동 이벤트
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