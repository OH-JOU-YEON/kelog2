<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<head>
<title>KELOG</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- preload와 stylesheet 통합 -->
<link rel="preload" href="/resources/css/theme-font.min.css" as="style"
	onload="this.rel='stylesheet'">
<link rel="stylesheet" type="text/css"
	href="/resources/Bootstrap/dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
</head>
<body class="page-has-left-panels page-has-right-panels">

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

	<!-- Responsive Header-BP -->
	<header class="header header-responsive" id="site-header-responsive">
		<div class="header-content-wrapper"></div>
		<div class="tab-pane fade" id="notification" role="tabpanel"
			aria-labelledby="notification-tab">
			<div class="mCustomScrollbar" data-mcs-theme="dark">
				<div class="ui-block-title ui-block-title-small">
					<h6 class="title">Notifications</h6>
					<a href="#">Mark all as read</a> <a href="#">Settings</a>
				</div>
				<ul class="notification-list">
					<li></li>
					<li class="un-read"></li>
					<li class="with-comment-photo-wrap"></li>
					<li></li>
					<li></li>
				</ul>
				<a href="#" class="view-all bg-primary">View All Notifications</a>
			</div>
		</div>
	</header>

	<div class="header-spacer"></div>

	<div class="container"
		style="margin-left: 0 !important; margin-right: 0 !important;">
		<div class="row">
			<div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="ui-block" style="margin-top: 0px;">
					<div class="top-header top-header-favorit">
						<div class="top-header-thumb" style="width: 1920px;">
							<div class="image-container">
								<div class="image-slider">
									<div class="image-slide">
										<img src="/resources/img/wooyoungwoo.jpg" alt="Image 1" />
									</div>
									<div class="image-slide">
										<img src="/resources/img/sp1.jpg" alt="Image 2" />
									</div>
									<div class="image-slide">
										<img src="/resources/img/sp3.jpg" alt="Image 3" />
									</div>
								</div>
							</div>
						</div>
						<div class="overlay-text">
							<h1 style="color: white;">간편하게 여행 명소를 한눈에</h1>
							<p>누구나 쉽고 간단하게</p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- 추천 게시글 섹션 (TravelPost 데이터로 동적 렌더링) -->
	<div class="container">
		<div class="row">
			<div
				class="col col-xl-12 order-xl-2 col-lg-12 order-lg-1 col-sm-12 col-12">
				<div id="newsfeed-items-grid">
					<div class="ui-block">
						<div class="ui-block-title">
							<h6 class="title">추천 게시글</h6>
							<a href="#" class="more"><svg class="olymp-three-dots-icon">
									<use xlink:href="#olymp-three-dots-icon"></use></svg></a>
						</div>
						<ul class="widget w-twitter">
							<c:choose>
								<c:when test="${empty travelList}">
									<li class="twitter-item"><p>추천 게시글이 없습니다.</p></li>
								</c:when>
								<c:otherwise>
									<c:forEach items="${travelList}" var="travel">
										<li class="twitter-item">
											<div class="author-folder">
												<img loading="lazy" src="/resources/img/twitter-avatar.webp"
													alt="avatar" width="40" height="40">
												<div class="author">
													<a
														href="/travel/read?travelBoardNo=${travel.travelBoardNo}"
														class="author-name">${travel.title}</a> <a href="#"
														class="group">${travel.nickName}</a> <span
														class="verified"><svg width="5" height="5">
															<use xlink:href="#olymp-check-icon-small"></use></svg></span>
												</div>
											</div>
											<p>${fn:substring(travel.content, 0, 50)}...
												<a href="#" class="link-post">${travel.tag}</a>
											</p> <span class="post__date"> <time class="published"
													datetime="${travel.regDate}">
													<fmt:formatDate value="${travel.regDate}"
														pattern="yyyy-MM-dd HH:mm" />
												</time>
										</span>
										</li>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 추천 블로그 섹션 -->
	<div class="ui-block features-video">
		<div class="video-player">
			<c:choose>
				<c:when test="${empty blogList}">
					<img loading="lazy" src="/resources/img/video9.webp" alt="photo"
						width="912" height="570">
				</c:when>
				<c:otherwise>
					<c:forEach items="${blogList}" var="blog" begin="0" end="0">
						<c:choose>
							<c:when test="${not empty blog.thumbnail}">
								<img loading="lazy" src="${blog.thumbnail}" alt="blog photo"
									width="912" height="570">
							</c:when>
							<c:otherwise>
								<img loading="lazy" src="/resources/img/video9.webp"
									alt="default photo" width="912" height="570">
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<div class="video-content">
				<div class="h4 title">Rock Garden Festival - Day 3</div>
				<time class="published" datetime="2017-03-24T18:18">12:06</time>
			</div>
			<div class="overlay"></div>
		</div>
		<div class="features-video-content">
			<div class="blog-post-tip">
				<div>
					<h4>추천 블로그</h4>
				</div>
				<hr>
				<c:choose>
					<c:when test="${empty blogList}">
						<li class="twitter-item"><p>추천 블로그가 없습니다.</p></li>
					</c:when>
					<c:otherwise>
						<c:forEach items="${blogList}" var="blog">
							<li class="twitter-item">
								<div class="author-folder">
									<img loading="lazy" src="/resources/img/twitter-avatar.webp"
										alt="avatar" width="40" height="40">
									<div class="author">
										<h2>
											<a href="/blog/read?blogPostNo=${blog.blogPostNo}"
												class="author-name">${blog.title}</a>
										</h2>
									</div>
								</div>
								<p>${fn:substring(blog.content, 0, 50)}...
								</p> <span class="post__date"> <time class="published"
										datetime="${blog.regDate}">
										<fmt:formatDate value="${blog.regDate}"
											pattern="yyyy-MM-dd HH:mm" />
									</time>
							</span>
							</li>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
			<article class="hentry post">
				<div>
				</div>
				<div class="post-additional-info inline-items">
					<c:forEach items="${blogList}" var="blog">
						<p class="link-post">${blog.tag}</p>
					</c:forEach>
				</div>
			</article>
			<div class="mCustomScrollbar ps ps--theme_default ps--active-y"
				data-mcs-theme="dark"
				data-ps-id="5309ba1d-019d-d8f1-e734-05d0139f233b">
				<div class="ps__scrollbar-x-rail" style="left: 0px; bottom: 0px;">
					<div class="ps__scrollbar-x" tabindex="0"
						style="left: 0px; width: 0px;"></div>
				</div>
				<div class="ps__scrollbar-y-rail"
					style="top: 0px; height: 110px; right: 0px;">
					<div class="ps__scrollbar-y" tabindex="0"
						style="top: 0px; height: 31px;"></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Scripts -->
	<script src="/resources/js/jQuery/jquery-3.5.1.min.js"></script>
	<script src="/resources/js/libs/jquery.mousewheel.min.js"></script>
	<script src="/resources/js/libs/perfect-scrollbar.min.js"></script>
	<script src="/resources/js/libs/imagesloaded.pkgd.min.js"></script>
	<script src="/resources/js/libs/material.min.js"></script>
	<script src="/resources/js/libs/isotope.pkgd.min.js"></script>
	<script src="/resources/js/libs/ajax-pagination.min.js"></script>
	<script src="/resources/js/libs/jquery.magnific-popup.min.js"></script>
	<script src="/resources/js/main.js"></script>
	<script src="/resources/js/libs-init/libs-init.js"></script>
	<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>
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
            console.log('스크롤 내려감: header--scrolled 클래스 추가');
        } else {
            header.classList.remove('header--scrolled');
            console.log('상단으로 돌아감: header--scrolled 클래스 제거');
        }
    });
</script>

	<footer class="py-4 mt-5">
		<div class="container text-center">
			<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
			<small>&copy; 2025. All rights reserved.</small>
		</div>
	</footer>
	<script>
window.onload = function() {
    console.log("✅ window.onload 실행됨!");
    
    let currentIndex = 0;
    const slides = document.querySelectorAll('.image-slide');
    const totalSlides = slides.length;
    const slider = document.querySelector('.image-slider');

    if (totalSlides === 0) {
        console.error("🚨 슬라이드가 존재하지 않습니다!");
        return;
    }

    function changeImage() {
        currentIndex = (currentIndex + 1) % totalSlides;
        const translateValue = -(100 / totalSlides) * currentIndex;
        slider.style.transform = `translateX(${translateValue}%)`;
        console.log(`🔄 슬라이드 이동: ${translateValue}%`);
    }

    console.log("✅ 슬라이더 자동 실행 시작 (총 슬라이드 개수:", totalSlides, ")");

    setInterval(changeImage, 3000);
};
</script>
	<script defer src="/resources/js/slider.js"></script>
</body>
</html>