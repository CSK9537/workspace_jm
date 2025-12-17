// 페이지 이동 이벤트
document.querySelectorAll('.movePage').forEach(aEle => {
	aEle.addEventListener('click', (e) => {
		e.preventDefault();
		let cmd = aEle.getAttribute('href');
		let sendData = 'cmd=' + cmd;
		console.log(aEle.getAttribute('value'));
//		location.href = 'JmMainController?' + sendData;
	});
});