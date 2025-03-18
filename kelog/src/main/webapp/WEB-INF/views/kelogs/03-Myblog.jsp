<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>내 블로그 글 작성</title>

	<!-- Required meta tags always come first -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<script src="https://code.jquery.com/jquery-latest.min.js"></script>

	<!-- Theme Font -->
	<link rel="preload" type="text/css" href="/resources/css/theme-font.min.css" as="style">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/Bootstrap/dist/css/bootstrap.css">

	<!-- Main Styles CSS -->
	<link rel="stylesheet" type="text/css" href="/resources/css/main.css">

	<!-- Main RTL CSS -->
	<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->

</head>
<body class="page-has-left-panels page-has-right-panels">


<div class="header--standard header--standard-landing" id="header--standard">
	<div class="container">
		<div class="header--standard-wrap">

			<a href="/main" class="logo"></a>
				<div class="img-wrap">
					<a href="/main"><img loading="lazy"
						src="/resources/img/logokelog.png" width="140" height="34"
						alt="Olympus" class="logo-colored"></a>
				</div>
				
			<a href="#" class="open-responsive-menu js-open-responsive-menu">
				<svg class="olymp-menu-icon"><use xlink:href="#olymp-menu-icon"></use></svg>
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

<!-- ... end Header-BP -->
<div class="main-header-post" style="position: relative;">
	<img loading="lazy" src="img/MyBlogMain.jpg" alt="author" style="width: 1920px; height: 700px;">
	
	<!-- 3개의 탭 -->
	<div class="tabs" style="position: absolute; bottom: 10px; right: 10px; display: flex; z-index: 10;">
		<a href="/Myblog" class="btn btn-primary btn-md-2" style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">게시물</a>
		<a href="/kelogs/${bd.blogName }/myMap" class="btn btn-primary btn-md-2" style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">지도</a>
		<a href="/kelogs/${bd.blogName }/logs" class="btn btn-primary btn-md-2" style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">일정</a>
	</div>
</div>

<!-- Responsive Header-BP -->


<!-- ... end Responsive Header-BP -->
<div class="header-spacer"></div>

<div class="container">
	<div class="row">

		<!-- Main Content -->
	<form class="col col-xl-8 order-xl-2 col-lg-12 order-lg-1 col-md-12 col-sm-12 col-12" style="margin-left: 85px; background-color:ghostwhite; border-radius: 10px; padding: 15px;">
		<main>
			<div class="create-post" style="display: flex; justify-content: end;">
				<a href="03-MyblogCreatePost.html" class="btn btn-primary btn-md-2" style="background-color: #9edbff; border-color: #9eb3ff;">글쓰기</a>
			</div> 

			


			<div id="newsfeed-items-grid">
			<c:forEach var="log" items="${blogs}">
				<div class="ui-block">
					
					<article class="hentry post video">
					
						<div class="post__author author vcard inline-items">
							<img loading="lazy" src="#" alt="author" width="42" height="42">
					
							<div class="author-date">
								<a class="h6 post__author-name fn" href="#"><c:out value="${profile.email}"/></a>
								<div class="post__date">
									<time class="published" datetime="2004-07-24T18:18">
										<c:out value="${log.createDate}"/>
									</time>
								</div>
							</div>
					<c:if test="${profile.mineOrNot eq true}">
							<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="#olymp-three-dots-icon"></use></svg>
								<ul class="more-dropdown">
									<li>
										<a href="/modify">글 수정</a>
									</li>
									<li>
										<a href="/remove">글 삭제</a>
									</li>
								</ul>
							</div>
					</c:if>
						</div>
					
						<div class="post-video">
							<div class="video-thumb">
								<img loading="lazy" src=<c:out value="${log.thumbnails}"/> alt="photo" width="197" height="194">
								
							</div>
							<div class="video-content">
								<a href=<c:out value="${presentURL} + ${log.title} "/> >
 class="h4 title">첨부된 동영상</a>
								<p><c:out value="${log.preview}"/>
								</p>
							</div>
						</div>
						<div class="post-additional-info inline-items">
					
							<a href="#" class="post-add-icon inline-items">
								<svg class="olymp-heart-icon"><use xlink:href="#olymp-heart-icon"></use></svg>
								<span><c:out value="${log.likeCount}"/></span>
							</a>
						</div>
					</article>
				</div>
				</c:forEach>
				</div>
		</main>
	</form>
		<!-- ... end Main Content -->


		<!-- Left Sidebar -->

		<aside class="col col-xl-3 order-xl-1 col-lg-6 order-lg-2 col-md-6 col-sm-6 col-12" style="margin-left: 40px;">
			<div class="ui-block-weahter">
				
				<!-- W-Weather -->
				
				<div class="widget w-weather">
					<img src="/resources/img/BlogUser.png" style="width: 200px; height: 200px; border-radius: 100px;">
					<h4 style="color: #fff;"><c:out value="${profile.email}"/></h4>
				</div>
					<div class="wethear-now inline-items">
						<div class="max-min-temperature">
						</div>
					</div>
				</div>
				
				<div class="ui-block">
					<div id="calendar" class="crumina-full-calendar">
				</div>
				<script src="/resources/js/libs/fullcalendar.min.js"></script>
				</div>		
		</aside>
	</div>
</div>

<!-- ... end Window-popup-CHAT for responsive min-width: 768px -->

<!-- JS Scripts -->
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

<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- SVG icons loader -->
<script src="/resources/js/svg-loader.js"></script>
<!-- /SVG icons loader -->

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
    if (window.scrollY > 50) { // 50px 이상 스크롤 시
        header.classList.add('header--scrolled');
    } else { // 50px 미만이면
        header.classList.remove('header--scrolled');
    }
});

</script>
<script>
				
	/* -----------------------------
		 * FullCalendar Init
		 * Script file: fullcalendar.min.js
		 * https://fullcalendar.io/
	* ---------------------------*/

	fullCalendar = function () {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins: ['interaction', 'dayGrid', 'timeGrid'],
			defaultView: 'dayGridMonth',
			defaultDate: '2019-05-07',
			header: {
				left: 'prev',
				center: 'title',
				right: 'next,dayGridMonth,timeGridWeek,timeGridDay'
			},
			buttonText: {
				month: ' ',
				week: ' ',
				day: ' '
			},
			buttonIcons: {
				prev: 'far fa-chevron-left',
				next: 'far fa-chevron-right'
			},

			eventClick: function (info) {
				var url = info.event.url;
				var is_modal = url.match(/^modal\:(#[-\w]+)$/);
				if (!is_modal) {
					return;
				}

				info.jsEvent.preventDefault();
				var modal = is_modal[1];

				$(modal).modal('show');
			},
			events: [
				{
					title: 'Chris Greyson’s Bday',
					start: '2019-05-08',
					url: 'modal:#public-event'
				},
				{
					title: 'Make Dinner Plans...',
					start: '2019-05-08',
					url: 'modal:#private-event'
				},
				{
					title: 'Jenny’s Birthday...',
					start: '2019-05-30',
					url: 'modal:#private-event'
				},
				{
					title: 'Videocall to talk...',
					start: '2019-05-30',
					url: 'modal:#public-event'
				},
				{
					title: 'Breakfast at the...',
					start: '2019-05-26',
					url: 'modal:#public-event'
				},
				{
					title: 'Send the new...',
					start: '2019-05-26',
					url: 'modal:#private-event'
				},
				{
					title: 'Take Querty to the...',
					start: '2019-05-26',
					url: 'modal:#public-event'
				}
			]
		});

		calendar.render();
	};

	document.addEventListener("DOMContentLoaded", function () {
		fullCalendar();
	});

</script>

	<!-- 하단 푸터 -->
	<footer class="py-4 mt-5">
		<div class="container text-center">
			<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
			<small>&copy; 2025. All rights reserved.</small>
		</div>
	</footer>
</body>
</html>