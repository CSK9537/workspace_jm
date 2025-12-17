// 날짜 포맷
let rd = document.querySelector(".odate").innerHTML;
let odf = new Date(rd);
let ndf = odf.getFullYear()+'년 '+((odf.getMonth() + 1).toString().padStart(2,'0'))+'월 '+odf.getDate().toString().padStart(2,'0')+'일';
document.querySelector(".odate").innerHTML = ndf;