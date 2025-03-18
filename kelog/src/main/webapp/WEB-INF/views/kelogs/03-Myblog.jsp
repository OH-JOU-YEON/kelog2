<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Profile + Calendar with Events Popup</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="/resources/Bootstrap/dist/css/bootstrap.css">

<!-- main.css (CalendarAndEvents + ProfilePage 스타일) -->
<link rel="stylesheet" href="/resources/css/main.css">

<!-- 달력에 필요한 라이브러리 (moment, fullcalendar 등) -->
<script src="/resources/js/libs/moment.min.js"></script>
<script src="/resources/js/libs/fullcalendar.min.js"></script>
<script src="/resources/js/main.js"></script>

<style>
body {
	background-color: #edf2f6;
}

.banner {
	position: relative;
	margin-bottom: 2rem;
	overflow: hidden;
}

.banner img {
	width: 100%;
	max-height: 400px;
	object-fit: cover;
	display: block;
}

.main-container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 0 4rem;
}

.profile-column {
	padding-right: 2rem;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fff;
	padding: 20px;
	margin-top: 25px;
}

.profile-card, .calendar-card {
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fff;
	margin-bottom: 3rem;
	margin-top: 1rem;
}

.profile-card .card-header, .calendar-card .card-header {
	padding: 10px 16px;
	border-bottom: 1px solid #ddd;
	font-weight: 600;
	background-color: #f2f2f2;
}

.profile-card .card-body, .calendar-card .card-body {
	padding: 16px;
}

.right-column {
	display: flex;
	align-items: flex-start;
	padding-left: 3rem;
	margin-top: 25px;
}

.posts-wrapper {
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fff;
	padding: 30px 30px 35px 30px;
	flex: 1;
	min-width: 700px;
	position: relative;
	left: 20px;
}

.post-card {
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 16px;
	margin-bottom: 3rem;
	margin-top: 2rem;
	height: 200px;
	background-color: #fff;
}

.ui-tabs {
	list-style: none;
	margin: 0 0 0 1rem;
	padding: 0;
	display: flex;
	flex-direction: column;
	gap: 5px;
}

.ui-tabs li a {
	display: block;
	text-decoration: none;
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 10px 16px;
	background: #f2f2f2;
	transition: background 0.2s;
	color: #333;
	font-size: 14px;
	text-align: center;
	white-space: nowrap;
}

.ui-tabs li a:hover {
	background: #e2e2e2;
}

.ui-tabs li.active a {
	background: #fff;
	font-weight: 600;
	border-right-color: #ccc;
}

.more-icon {
	width: 24px;
	height: 24px;
	cursor: pointer;
	transition: transform 0.2s;
}

.more-icon:hover {
	transform: scale(1.1);
}

@media ( max-width : 991px) {
	.right-column {
		flex-direction: row;
		padding-left: 0;
		flex-wrap: nowrap;
	}
	.posts-wrapper {
		flex: 4;
		min-width: 0;
		width: 100%;
		left: 0;
		padding: 15px;
	}
	.ui-tabs {
		margin: 0 0 0 1rem;
		flex: 1;
		width: auto;
	}
	.ui-tabs li a {
		padding: 5px 8px;
		font-size: 10px;
	}
}
</style>
</head>

<body>
	<!-- Header -->
	<div class="header--standard header--standard-landing"
		id="header--standard">
		<div class="container">
			<div class="header--standard-wrap">
				<a href="/main" class="logo"></a>
				<div class="img-wrap">
					<a href="/main"><img loading="lazy"
						src="/resources/img/logokelog.png" width="140" height="34"
						alt="Olympus" class="logo-colored"></a>
				</div>
				<div class="search-container">
					<input type="text" placeholder="검색어를 입력하세요" id="search-input">
				</div>
				<a href="#" class="open-responsive-menu js-open-responsive-menu">
					<svg class="olymp-menu-icon">
						<use xlink:href="#olymp-menu-icon"></use></svg>
				</a>

				<div class="nav nav-pills nav1 header-menu">
					<div class="mCustomScrollbar">
						<ul>
							<li class="nav-item dropdown"><a href="/travel/list"
								style="color: #000 !important;">여행 추천지</a></li>
							<li class="nav-item dropdown dropdown-has-megamenu"><a
								href="/blog/list" style="color: #000 !important;">블로그</a></li>
							<li class="nav-item"><a href="/tip/list"
								style="color: #000 !important;">꿀팁 게시판</a></li>
							<li class="nav-item"><a href="#" onclick="alert('업데이트될 기능입니다!'); return false;" 
							style="color: #000 !important;">전국 날씨예보</a></li>
							<li class="close-responsive-menu js-close-responsive-menu">
							</li>
							<li class="nav-item js-expanded-menu"><a href="#"
								class="menu-link"><img src="/resources/img/menu-bar.png"
									style="width: 26px; height: 26px; filter: none;"></a></li>
							<li class="lang-set-item"><a href="#" class="change-lang"
								id="language-toggle"> <img
									src="/resources/img/changeLang.png"
									style="width: 26px; height: 26px; filter: none;">
							</a> <!-- 언어 선택 탭 (기본적으로 숨겨짐) -->
								<ul id="language-tabs" class="language-tabs"
									style="display: none;">
									<li><a href="#" id="english" onclick="alert('업데이트될 기능입니다!'); return false;">
									English</a></li>
									<li><a href="#" id="korean">한국어</a></li>
								</ul>
								</li>
							<li class="login-set-item"><c:choose>
									<c:when test="${email == null}">
										<a href="/login/google/login.do" class="login-user"> <img
											src="/resources/img/login-user.png"
											style="width: 31px; height: 31px; filter: none;">
										</a>
									</c:when>

									<c:otherwise>
										<a href="#" class="login-user"> <img
											src="/resources/img/login-user.png" class="login-user-menu"
											style="filter: none;">
										</a>
										<ul class="login-drop-menu" style="display: none;">
											<c:choose>
												<c:when test="${user.role == 'user'}">
													<li><a href="/user/read?uno=${user.uno }">마이페이지</a></li>
												</c:when>
												<c:otherwise>
													<li><a
														href="/manager/01-ManagerPage-MyPage?uno=${user.uno }">마이페이지</a></li>
												</c:otherwise>
											</c:choose>
											<li><a href="/Myblog">내 블로그</a></li>
											<li><a href="/login/google/revoke/token?token=${token}">로그아웃</a></li>
										</ul>
									</c:otherwise>
								</c:choose></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 배너 -->
	<section class="banner">
		<img src="/resources/img/mainBoard.jpg" alt="배너이미지">
	</section>

	<!-- 메인 컨테이너 -->
	<div class="main-container">
		<div class="row gx-5 align-items-start">
			<!-- 왼쪽: 프로필 + 달력 -->
			<div class="col-12 col-lg-3 mb-4 profile-column">
				<div class="profile-card">
					<div class="card-header">내 프로필</div>
					<div class="card-body text-center">
						<img src="/resources/img/author-page.webp" alt="profile"
							class="rounded-circle"
							style="width: 80px; height: 80px; object-fit: cover;">
						<h6 class="mt-2">닉네임(사용자 ID)</h6>
						<p class="text-muted">간단한 자기소개 텍스트...</p>
					</div>
				</div>
				<div class="calendar-card">
					<div class="card-header">달력</div>
					<div class="card-body">
						<div id="calendar"></div>
					</div>
				</div>
			</div>

			<!-- 오른쪽: 게시글 + 탭 메뉴 -->
			<div class="col-12 col-lg-9 mb-4 right-column">
				<div class="posts-wrapper">
					<div class="text-end mb-3">
						<a href="/blog/created" class="btn btn-primary">글쓰기</a>
					</div>
					<div class="post-card">
						<div class="post__author author vcard inline-items">
							<img src="/resources/img/author-thumb.webp" alt="author"
								width="36" height="36">
							<div class="author-date ms-2">
								<a class="h6 post__author-name fn" href="#">닉네임</a>
								<div class="post__date">
									<time class="published" datetime="2024-12-01T10:00">12월
										1일 10:00</time>
								</div>
							</div>
						</div>
						<p>게시글 내용 예시1...</p>
						<div class="post-additional-info inline-items mt-2">
							<a href="#"
								class="post-add-icon inline-items text-decoration-none me-3">

							</a>
						</div>
					</div>
					<div class="post-card">
						<div class="post__author author vcard inline-items">
							<img src="/resources/img/author-thumb.webp" alt="author"
								width="36" height="36">
							<div class="author-date ms-2">
								<a class="h6 post__author-name fn" href="#">닉네임</a>
								<div class="post__date">
									<time class="published" datetime="2024-12-02T15:30">12월
										2일 15:30</time>
								</div>
							</div>
						</div>
						<p>두 번째 게시글 내용...</p>
						<div class="post-additional-info inline-items mt-2">
							<a href="#"
								class="post-add-icon inline-items text-decoration-none me-3">


							</a>
						</div>
					</div>
					<div class="text-center mt-3">
						<a href="#" class="more-icon"> <svg width="24" height="24"
								viewBox="0 0 24 24" fill="none" stroke="#333" stroke-width="2"
								stroke-linecap="round" stroke-linejoin="round">
                <path d="M6 9l6 6 6-6" />
              </svg>
						</a>
					</div>
					<div id="tab-map" class="tab-content" style="display: none;">
						<p>지도 탭 내용</p>
					</div>
					<div id="tab-plan" class="tab-content" style="display: none;">
						<p>일정 계획 탭 내용</p>
						<!-- 탭 메뉴 -->
						<ul class="ui-tabs">
							<li><a href="/Myblog">게시글</a></li>
							<li><a href="/kelogs/${bd.blogName }/myMap">지도</a></li>
							<li class="active"><a href="/kelogs/${bd.blogName }/logs">일정계획</a></li>
						</ul>
					</div>
				</div>

				<ul class="ui-tabs">
							<li><a href="/Myblog">게시글</a></li>
							<li><a href="/kelogs/${bd.blogName }/myMap">지도</a></li>
							<li class="active"><a href="/kelogs/${bd.blogName }/logs">일정계획</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- 하단 푸터 -->
	<footer class="py-4 mt-5">
		<div class="container text-center">
			<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
			<small>© 2025. All rights reserved.</small>
		</div>
	</footer>

	<!-- Bootstrap & jQuery -->
	<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/js/jQuery/jquery-3.5.1.min.js"></script>
	<script src="/resources/js/libs/jquery.mousewheel.min.js"></script>
	<script src="/resources/js/libs/perfect-scrollbar.min.js"></script>
	<script src="/resources/js/libs/imagesloaded.pkgd.min.js"></script>
	<script src="/resources/js/libs/material.min.js"></script>
	<script src="/resources/js/libs/selectize.min.js"></script>
	<script src="/resources/js/libs/isotope.pkgd.min.js"></script>
	<script src="/resources/js/libs/ajax-pagination.min.js"></script>
	<script src="/resources/js/libs/jquery.magnific-popup.min.js"></script>
	<script src="/resources/js/main.js"></script>
	<script src="/resources/js/libs-init/libs-init.js"></script>
	<script src="/resources/js/svg-loader.js"></script>
<script>
document.getElementById('language-toggle').addEventListener('click', function(event) {
    event.preventDefault();
    const languageTabs = document.getElementById('language-tabs');
    
    // 로그인 드롭다운이 열려 있으면 닫기 (선택적)
    const dropdownMenu = document.querySelector('.login-drop-menu');
    if (dropdownMenu && dropdownMenu.style.display === 'block') {
        dropdownMenu.style.display = 'none';
    }

    // 언어 탭 토글 (email 체크 없이 항상 동작)
    if (languageTabs.style.display === 'block') {
        languageTabs.style.display = 'none';
    } else {
        languageTabs.style.display = 'block';
    }
});

document.getElementById('english').addEventListener('click', function(event) {
    event.preventDefault();
    setLanguage('en');
    loadLanguage('en');
});

document.getElementById('korean').addEventListener('click', function(event) {
    event.preventDefault();
    setLanguage('kr');
    loadLanguage('kr');
});

function setLanguage(language) {
    const tabs = document.querySelectorAll('.language-tabs li a');
    tabs.forEach(tab => {
        tab.classList.remove('selected');
    });

    if (language === 'en') {
        document.getElementById('english').classList.add('selected');
    } else if (language === 'kr') {
        document.getElementById('korean').classList.add('selected');
    }
}

function loadLanguage(language) {
    const filePath = `path/to/lang/${language}.json`;
    fetch(filePath)
        .then(response => response.json())
        .then(data => {
            updatePageText(data);
        })
        .catch(error => console.error('Error loading language file:', error));

    document.getElementById('language-tabs').style.display = 'none';
}

function updatePageText(data) {
    document.querySelector('.logo-title').textContent = data.logoTitle;
    document.querySelector('.sub-title').textContent = data.subTitle;
    document.querySelector('.title').textContent = data.recommendedPosts;
    document.querySelector('.post-title').textContent = data.postTitle;
    document.querySelector('.post-content').textContent = data.postContent;
}

// 로그인 버튼과 드롭다운 메뉴 가져오기
const loginButton = document.querySelector('.login-user');
const loginDropdownMenu = document.querySelector('.login-drop-menu');
var email = '${email}'; // JSP에서 가져온 email 값

if (loginButton) {
    loginButton.addEventListener('click', function(event) {
        if (email) { // email이 있을 때만 드롭다운 토글
            event.preventDefault();
            const languageTabs = document.getElementById('language-tabs');
            if (languageTabs.style.display === 'block') {
                languageTabs.style.display = 'none';
            }
            const isMenuVisible = loginDropdownMenu.style.display === 'block';
            loginDropdownMenu.style.display = isMenuVisible ? 'none' : 'block';
        }
        // email이 null이면 기본 동작(href 이동)이 실행됨
    });
}

// 페이지 클릭 시 드롭다운 메뉴 숨기기 (email 체크 제거)
document.addEventListener('click', function(event) {
    const languageTabs = document.getElementById('language-tabs');
    const dropdownMenu = document.querySelector('.login-drop-menu');

    // 언어 탭 외부 클릭 시 닫기
    if (!document.querySelector('.change-lang').contains(event.target) && 
        !languageTabs.contains(event.target)) {
        languageTabs.style.display = 'none';
    }

    // 로그인 드롭다운 외부 클릭 시 닫기 (email이 있을 때만 적용)
    if (email && dropdownMenu && 
        !loginButton.contains(event.target) && 
        !dropdownMenu.contains(event.target)) {
        dropdownMenu.style.display = 'none';
    }
});
</script>


	<script>
    window.addEventListener('scroll', function () {
      const header = document.getElementById('header--standard');
      if (window.scrollY > 50) {
        header.classList.add('header--scrolled');
      } else {
        header.classList.remove('header--scrolled');
      }
    });

    document.addEventListener("DOMContentLoaded", function () {
      var calendarEl = document.getElementById('calendar');
      if (calendarEl) {
        var calendar = new FullCalendar.Calendar(calendarEl, {
          plugins: [ 'dayGrid' ],
          defaultView: 'dayGridMonth',
          header: {
            left: 'prev',
            center: 'title',
            right: 'next'
          },
          events: [
            { title: '이벤트1', start: '2024-12-10' },
            { title: '이벤트2', start: '2024-12-25' }
          ]
        });
        calendar.render();
      }
    });

  </script>
</body>
</html>