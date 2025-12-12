<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Joonzis' Music</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<header class="site-header">
		<a href="#" class="brand">
			<div class="logo">Joonzis' Music</div>
    	</a>
		<div class="search">
			<form action="/search" method="get">
				<input type="search" name="q" placeholder="가수, 곡, 앨범 검색" aria-label="검색" />
			</form>
		</div>
		<div class="header-actions">
			<button class="icon-btn" id="loginPage">로그인</button>
			<button class="icon-btn" id="signupPage">회원가입</button>
		</div>
	</header>
	
	<main class="container">
		<div class="layout">
	<!-- 메인 컬럼 -->
			<section>
				<div class="hero card">
					<div class="carousel" id="mainCarousel"><!-- 자바스크립트로 제어 가능 -->
					<%-- 서버에서 전달된 추천 배너(예: featuredList) 가정 --%>
						<c:choose>
							<c:when test="${not empty featuredList}">
								<div>${featuredList[0].title}</div>
							</c:when>
							<c:otherwise>
								<div>추천 플레이리스트 / 배너 영역</div>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="quick-links">
						<a href="#" class="card">나의 플레이리스트</a>
						<a href="#" class="card">실시간 차트</a>
						<a href="#" class="card">장르별 추천</a>
					</div>
				</div>
				<!-- 인기 곡 섹션 -->
				<div class="section card">
					<div class="title">
						<h3>실시간 인기 곡</h3><a href="#">더보기 &gt;</a>
					</div>
					<ul class="song-list">
	<%-- 서버에서 popularSongs 로 리스트 전달 예시 --%>
						<c:forEach var="song" items="${popularSongs}" varStatus="st" begin="0" end="7">
							<li class="song-item">
								<div class="thumb">${st.index+1}</div>
								<div class="meta">
									<div class="name">${song.title}</div>
									<div class="sub">${song.artist} • ${song.album}</div>
								</div>
								<div class="play-btn">▶</div>
							</li>
						</c:forEach>
	<!-- 데이터가 없을 때의 플레이스홀더 -->
						<c:if test="${empty popularSongs}">
							<li class="song-item">데이터가 없습니다. (서버에서 popularSongs를 전달하세요)</li>
						</c:if>
					</ul>
				</div>
	<!-- 추천 플레이리스트 섹션 -->
				<div class="section">
					<div class="title">
						<h3>추천 플레이리스트</h3><a href="#">더보기 &gt;</a>
					</div>
					<div class="grid-3">
						<c:forEach var="pl" items="${recommendedPlaylists}" varStatus="vs" begin="0" end="2">
							<div class="card">
								<div style="height:120px; border-radius:8px; background:#f2f2f2; display:flex; align-items:center; justify-content:center;">
									플레이리스트 이미지
								</div>
								<div style="margin-top:10px; font-weight:600;">
									${pl.title}
								</div>
								<div style="color:#666; font-size:13px; margin-top:6px;">
									${pl.description}
								</div>
							</div>
						</c:forEach>
						<c:if test="${empty recommendedPlaylists}">
							<div class="card">샘플 플레이리스트 1</div>
							<div class="card">샘플 플레이리스트 2</div>
							<div class="card">샘플 플레이리스트 3</div>
						</c:if>
					</div>
				</div>
			</section>
	<!-- 오른쪽 사이드바 -->
			<aside class="sidebar">
				<div class="card">
					<div class="title">
						<h4>실시간 차트</h4><a href="#">더보기</a>
					</div>
					<div class="chart-list">
						<c:forEach var="c" items="${realtimeChart}" varStatus="rs" begin="0" end="9">
							<div class="chart-item">
								<div class="rank">${rs.index+1}</div>
								<div style="flex:1;">
									<div style="font-weight:600;">
										${c.title}
									</div>
									<div style="font-size:13px; color:#666;">
										${c.artist}
									</div>
								</div>
							</div>
						</c:forEach>
						<c:if test="${empty realtimeChart}">
							<div class="chart-item">차트 데이터 없음</div>
						</c:if>
					</div>
				</div>
				<div class="card" style="margin-top:12px;">
					<div class="title"><h4>장르별 추천</h4></div>
					<div class="grid-3">
						<div class="card">발라드</div>
						<div class="card">댄스</div>
						<div class="card">힙합</div>
					</div>
				</div>
			</aside>
		</div>
		
		<footer class="site-footer container">
			<div>© 2025 Joonzis' Music. 실제 서비스 디자인은 저작권 보호 대상일 수도 있고 아닐 수도 있습니다.</div>
		</footer>
	</main>
</body>
<!-- 필요한 최소한의 인터랙션 스크립트 (선택) -->
<script>
  // 간단한 캐러셀 플레이스홀더 — 실제로는 서버에서 배너 목록을 전달하거나
  // 별도 JS 라이브러리(Swiper 등)를 사용하는 것이 좋습니다.
  (function(){
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
  })();
</script>
<script type="text/javascript" src="js/main.js"></script>
</html>