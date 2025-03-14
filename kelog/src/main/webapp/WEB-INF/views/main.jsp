<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>KELOG</title>
<!-- Required meta tags always come first -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <!-- Theme Font -->
    <link rel="preload" type="text/css" href="/resources/css/theme-font.min.css" as="style">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="/resources/Bootstrap/dist/css/bootstrap2.css">

    <!-- Main Styles CSS -->
    <link rel="stylesheet" type="text/css" href="/resources/css/common.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/reset.css">

    <!-- Main RTL CSS -->
    <!-- <link rel="stylesheet" type="text/css" href="css/rtl.min.css"> -->

</head>
<body class="page-has-left-panels page-has-right-panels">

<!-- Preloader -->
<div id="hellopreloader">
    <div class="preloader">
        <svg width="45" height="45" stroke="#fff">
            <g fill="none" fill-rule="evenodd" stroke-width="2" transform="translate(1 1)">
                <circle cx="22" cy="22" r="6" stroke="none">
                    <animate attributeName="r" begin="1.5s" calcMode="linear" dur="3s" repeatCount="indefinite" values="6;22"/>
                    <animate attributeName="stroke-opacity" begin="1.5s" calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0"/>
                    <animate attributeName="stroke-width" begin="1.5s" calcMode="linear" dur="3s" repeatCount="indefinite" values="2;0"/>
                </circle>
                <circle cx="22" cy="22" r="6" stroke="none">
                    <animate attributeName="r" begin="3s" calcMode="linear" dur="3s" repeatCount="indefinite" values="6;22"/>
                    <animate attributeName="stroke-opacity" begin="3s" calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0"/>
                    <animate attributeName="stroke-width" begin="3s" calcMode="linear" dur="3s" repeatCount="indefinite" values="2;0"/>
                </circle>
                <circle cx="22" cy="22" r="8">
                    <animate attributeName="r" begin="0s" calcMode="linear" dur="1.5s" repeatCount="indefinite" values="6;1;2;3;4;5;6"/>
                </circle>
            </g>
        </svg>
        <div class="text">Loading ...</div>
    </div>
</div>

<!-- Header -->
<div class="header--standard header--standard-landing" id="header--standard">
    <div class="container">
        <div class="header--standard-wrap">
            <a href="/main" class="logo">
			    <div class="img-wrap">
			        <img loading="lazy" src="/resources/img/Kelog-Logo.png" width="200" height="40" alt="KELOG" class="logo-colored" style="position: unset;">
			    </div>
			</a>
            <a href="#" class="open-responsive-menu js-open-responsive-menu">
                <svg class="olymp-menu-icon"><use xlink:href="#olymp-menu-icon"></use></svg>
            </a>
            <div class="nav nav-pills nav1 header-menu">
                <div class="mCustomScrollbar">
                    <ul>
                        <li class="nav-item dropdown"><a href="/travel/list" style="color: #000 !important;">여행 추천지</a></li>
                        <li class="nav-item dropdown dropdown-has-megamenu"><a href="/blog/list" style="color: #000 !important;">블로그</a></li>
                        <li class="nav-item"><a href="/tip/list" style="color: #000 !important;">꿀팁 게시판</a></li>
                        <li class="nav-item"><a href="#" style="color: #000 !important;">전국 날씨예보</a></li>
                        <li class="close-responsive-menu js-close-responsive-menu">
                            <svg class="olymp-close-icon"><use xlink:href="#olymp-close-icon"></use></svg>
                        </li>
                        <li class="nav-item js-expanded-menu"><a href="#" class="menu-link"><img src="/resources/img/menu-bar.png" style="width: 26px; height: 26px; filter: none;"></a></li>
                        <li class="lang-set-item">
                            <a href="#" class="change-lang" id="language-toggle">
                                <img src="/resources/img/changeLang.png" style="width: 26px; height: 26px; filter: none;">
                            </a>
                            <ul id="language-tabs" class="language-tabs" style="display: none;">
                                <li><a href="#" id="english">English</a></li>
                                <li><a href="#" id="korean">한국어</a></li>
                            </ul>
                        </li>
                        <li class="login-set-item">
                            <c:choose>
                                <c:when test="${email == null}">
                                    <a href="/login/google/login.do" class="login-user">
                                        <img src="/resources/img/login-user.png" style="width: 31px; height: 31px; filter: none;">
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <a href="#" class="login-user">
                                        <img src="/resources/img/login-user.png" class="login-user-menu" style="filter: none;">
                                    </a>
                                    <ul class="login-drop-menu" style="display: none;">
                                        <c:choose>
                                            <c:when test="${user.role == 'user'}">
                                                <li><a href="/user/read?uno=${user.uno}" id="mypage">마이페이지</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li><a href="/manager/01-ManagerPage-MyPage?uno=${user.uno}" id="mypage">마이페이지</a></li>
                                            </c:otherwise>
                                        </c:choose>
                                        <li><a href="03-Myblog.html">내 블로그</a></li>
                                        <li><a href="/login/google/revoke/token?token=${token}">로그아웃</a></li>
                                    </ul>
                                </c:otherwise>
                            </c:choose>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Responsive Header-BP -->
<header class="header header-responsive" id="site-header-responsive">
    <div class="header-content-wrapper"></div>
    <div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">
        <div class="mCustomScrollbar" data-mcs-theme="dark">
            <div class="ui-block-title ui-block-title-small">
                <h6 class="title">Notifications</h6>
                <a href="#">Mark all as read</a>
                <a href="#">Settings</a>
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

<div class="container" style="margin-left: 0 !important; margin-right: 0 !important;">
    <div class="row">
        <div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
            <div class="ui-block">
                <div class="top-header top-header-favorit">
                    <div class="top-header-thumb" style="width:1920px;">
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
        <div class="col col-xl-12 order-xl-2 col-lg-12 order-lg-1 col-sm-12 col-12">
            <div id="newsfeed-items-grid">
                <div class="ui-block">
                    <div class="ui-block-title">
                        <h6 class="title">추천 게시글</h6>
                        <a href="#" class="more"><svg class="olymp-three-dots-icon"><use xlink:href="#olymp-three-dots-icon"></use></svg></a>
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
                                            <img loading="lazy" src="/resources/img/twitter-avatar.webp" alt="avatar" width="40" height="40">
                                            <div class="author">
                                                <a href="/travel/read?travelBoardNo=${travel.travelBoardNo}" class="author-name">${travel.title}</a>
                                                <a href="#" class="group">${travel.nickName}</a>
                                                <span class="verified"><svg width="5" height="5"><use xlink:href="#olymp-check-icon-small"></use></svg></span>
                                            </div>
                                        </div>
                                        <p>${fn:substring(travel.content, 0, 50)}... <a href="#" class="link-post">${travel.tag}</a></p>
                                        <span class="post__date">
                                            <time class="published" datetime="${travel.regDate}">
                                                <fmt:formatDate value="${travel.regDate}" pattern="yyyy-MM-dd HH:mm"/>
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
                <img loading="lazy" src="/resources/img/video9.webp" alt="photo" width="912" height="570">
            </c:when>
            <c:otherwise>
                <c:forEach items="${blogList}" var="blog" begin="0" end="0">
                    <c:choose>
                        <c:when test="${not empty blog.imagePath}">
                            <img loading="lazy" src="${blog.imagePath}" alt="blog photo" width="912" height="570">
                        </c:when>
                        <c:otherwise>
                            <img loading="lazy" src="/resources/img/video9.webp" alt="default photo" width="912" height="570">
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
            <div><h4>추천 블로그</h4></div>
            <hr>
            <c:choose>
                <c:when test="${empty blogList}">
                    <li class="twitter-item"><p>추천 블로그가 없습니다.</p></li>
                </c:when>
                <c:otherwise>
                    <c:forEach items="${blogList}" var="blog">
                        <li class="twitter-item">
                            <div class="author-folder">
                                <img loading="lazy" src="/resources/img/twitter-avatar.webp" alt="avatar" width="40" height="40">
                                <div class="author">
                                    <h2><a href="/blog/read?blogPostNo=${blog.blogPostNo}" class="author-name">${blog.title}</a></h2>
                                </div>
                            </div>
                            <p>${fn:substring(blog.content, 0, 50)}... <a href="#" class="link-post">${blog.tag}</a></p>
                            <span class="post__date">
                                <time class="published" datetime="${blog.regDate}">
                                    <fmt:formatDate value="${blog.regDate}" pattern="yyyy-MM-dd HH:mm"/>
                                </time>
                            </span>
                        </li>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
        <article class="hentry post">
            <div>
                <c:forEach items="${blogList}" var="blog">
                    <a href="#" class="link-post">${blog.tag}</a>
                </c:forEach>
            </div>
            <div class="post-additional-info inline-items">
                <p>추천 해시태그 들어갈 자리</p>
            </div>
        </article>
        <div class="mCustomScrollbar ps ps--theme_default ps--active-y" data-mcs-theme="dark" data-ps-id="5309ba1d-019d-d8f1-e734-05d0139f233b">
            <div class="ps__scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps__scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div>
            <div class="ps__scrollbar-y-rail" style="top: 0px; height: 110px; right: 0px;"><div class="ps__scrollbar-y" tabindex="0" style="top: 0px; height: 31px;"></div></div>
        </div>
        <div class="comment-form inline-items">
            <div class="post__author author vcard inline-items">
                <img loading="lazy" src="/resources/img/avatar73-sm.webp" alt="author" width="28" height="28">
                <div class="form-group with-icon-right is-empty">
                    <input class="form-control" type="text" placeholder="해시태그 검색">
                    <div class="add-options-message">
                        <a href="#" class="options-message" data-bs-toggle="modal" data-bs-target="#update-header-photo">
                            <button style="border-radius: 5px; border-color: #c2c5d9;">
                                <svg class="olymp-magnifying-glass-icon"><use xlink:href="#olymp-magnifying-glass-icon"></use></svg>
                            </button>
                        </a>
                    </div>
                    <span class="material-input"></span>
                </div>
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
<script src="/resources/js/libs/selectize.min.js"></script>
<script src="/resources/js/libs/isotope.pkgd.min.js"></script>
<script src="/resources/js/libs/ajax-pagination.min.js"></script>
<script src="/resources/js/libs/jquery.magnific-popup.min.js"></script>
<script src="/resources/js/main.js"></script>
<script src="/resources/js/libs-init/libs-init.js"></script>
<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="/resources/js/svg-loader.js"></script>

<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
    let currentIndex = 0;
    const slides = document.querySelectorAll('.image-slide');
    const totalSlides = slides.length;

    function changeImage() {
        if (totalSlides === 0) return; // 슬라이드가 없으면 실행 중지
        currentIndex = (currentIndex + 1) % totalSlides;
        document.querySelector('.image-slider').style.transform = `translateX(-${currentIndex * 100}%)`;
    }

    if (totalSlides > 0) {
        setInterval(changeImage, 3000);
    }
});
</script>

<script>
    document.getElementById('language-toggle').addEventListener('click', function(event) {
        event.preventDefault();
        const languageTabs = document.getElementById('language-tabs');
        const dropdownMenu = document.querySelector('.login-drop-menu');
        if (dropdownMenu.style.display === 'block') {
            dropdownMenu.style.display = 'none';
        }
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
        tabs.forEach(tab => tab.classList.remove('selected'));
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
            .then(data => updatePageText(data))
            .catch(error => console.error('Error loading language file:', error));
        document.getElementById('language-tabs').style.display = 'none';
    }

    function updatePageText(data) {
        document.querySelector('.logo-title').textContent = data.logoTitle;
        document.querySelector('.sub-title').textContent = data.subTitle;
        document.querySelector('.title').textContent = data.recommendedPosts;
    }

    const loginButton = document.querySelector('.login-user');
    const loginDropdownMenu = document.querySelector('.login-drop-menu');
    var email = '${email}';

    loginButton.addEventListener('click', function(event) {
        if (email) {
            event.preventDefault();
            const languageTabs = document.getElementById('language-tabs');
            if (languageTabs.style.display === 'block') {
                languageTabs.style.display = 'none';
            }
            const isMenuVisible = loginDropdownMenu.style.display === 'block';
            loginDropdownMenu.style.display = isMenuVisible ? 'none' : 'block';
        }
    });

    document.addEventListener('click', function(event) {
        if (email) {
            if (!loginButton.contains(event.target) && !loginDropdownMenu.contains(event.target)) {
                loginDropdownMenu.style.display = 'none';
            }
            const languageTabs = document.getElementById('language-tabs');
            if (!document.querySelector('.change-lang').contains(event.target) && !languageTabs.contains(event.target)) {
                languageTabs.style.display = 'none';
            }
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
</script>
<script>
    // 언어 선택 드롭메뉴 토글
    document.addEventListener('DOMContentLoaded', function() {
        const languageToggle = document.getElementById('language-toggle');
        const languageTabs = document.getElementById('language-tabs');

        if (languageToggle && languageTabs) {
            languageToggle.addEventListener('click', function(event) {
                event.preventDefault();
                event.stopPropagation(); // 이벤트 전파 방지
                console.log("Language toggle clicked"); // 디버깅 로그
                const dropdownMenu = document.querySelector('.login-drop-menu');
                // login-drop-menu이 존재하면 숨김 처리
                if (dropdownMenu && dropdownMenu.style.display === 'block') {
                    dropdownMenu.style.display = 'none';
                }
                // language-tabs 토글
                if (languageTabs.style.display === 'block') {
                    languageTabs.style.display = 'none';
                } else {
                    languageTabs.style.display = 'block';
                }
            });
        } else {
            console.error("Language toggle or tabs not found!");
        }

        // 영어 선택
        const englishOption = document.getElementById('english');
        if (englishOption) {
            englishOption.addEventListener('click', function(event) {
                event.preventDefault();
                console.log("English selected"); // 디버깅 로그
                alert("업데이트될 기능입니다!"); // 요청에 따른 alert
                document.getElementById('language-tabs').style.display = 'none'; // 드롭메뉴 닫기
            });
        }

        // 한국어 선택 (아무 동작 안 함)
        const koreanOption = document.getElementById('korean');
        if (koreanOption) {
            koreanOption.addEventListener('click', function(event) {
                event.preventDefault();
                console.log("Korean selected"); // 디버깅 로그
                document.getElementById('language-tabs').style.display = 'none'; // 드롭메뉴 닫기
            });
        }

        // 외부 클릭 시 드롭메뉴 닫기
        document.addEventListener('click', function(event) {
            const email = '${email}'; // JSP 변수 사용
            if (email) {
                const loginButton = document.querySelector('.login-user');
                const loginDropdownMenu = document.querySelector('.login-drop-menu');
                if (loginButton && loginDropdownMenu && !loginButton.contains(event.target) && !loginDropdownMenu.contains(event.target)) {
                    loginDropdownMenu.style.display = 'none';
                }
                const languageTabs = document.getElementById('language-tabs');
                const changeLang = document.querySelector('.change-lang');
                if (changeLang && languageTabs && !changeLang.contains(event.target) && !languageTabs.contains(event.target)) {
                    languageTabs.style.display = 'none';
                }
            }
        });
    });
</script>

<footer class="py-4 mt-5">
				<div class="container text-center">
					<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
					<small>&copy; 2025. All rights reserved.</small>
				</div>
			</footer>
</body>
</html>