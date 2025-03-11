<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>내 블로그 글 작성</title>

	<!-- Required meta tags always come first -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">


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

<!-- ... end Preloader -->


<!-- Fixed Sidebar Left -->

<div class="header--standard header--standard-landing" id="header--standard">
	<div class="container">
		<div class="header--standard-wrap">

			<a href="12-FavouritePage.html" class="logo"></a>
				<div class="img-wrap">
					<img loading="lazy" src="/resources/img/logo-colored-small.webp" width="34" height="34" alt="Olympus" class="logo-colored">
				</div>
				<div class="title-block">
					<h6 class="logo-title">로고 들어갈 자리</h6>
					<div class="sub-title">SOCIAL NETWORK</div>
				</div>
				
			<a href="#" class="open-responsive-menu js-open-responsive-menu">
				<svg class="olymp-menu-icon"><use xlink:href="#olymp-menu-icon"></use></svg>
			</a>

			<div class="nav nav-pills nav1 header-menu">
				<div class="mCustomScrollbar">
					<ul>
						<li class="nav-item">
							<a href="00-MainPage.html">메인 페이지</a>
						</li>
						<li class="nav-item dropdown">
							<a href="02-RecommendPost.html">여행 추천지</a>
						</li>
						<li class="nav-item dropdown dropdown-has-megamenu">
							<a href="97-BlogPostBoard.html">블로그 게시판</a>
						</li>
						<li class="nav-item">
							<a href=<c:out value="${presentURL}"/>>내 블로그</a>
						</li>
						<li class="nav-item">
							<a href="55-HoneyTipBoard.html">꿀팁 게시판</a>
						</li>
						<li class="nav-item">
							<a href="#">전국 날씨예보</a>
						</li>
						<li class="close-responsive-menu js-close-responsive-menu">
							<svg class="olymp-close-icon"><use xlink:href="#olymp-close-icon"></use></svg>
						</li>
						<li class="nav-item js-expanded-menu">
							<a href="#" class="menu-link"><img src="/resources/img/menu-bar.png" style="width: 26px; height: 26px;"></a>
						</li>
						<li class="lang-set-item">
							<a href="#" class="change-lang"><img src="/resources/img/changeLang.png" style="width: 26px; height: 26px;"></a>
						</li>
						<li class="login-set-item">
							<a href="01-LoginPage.html" class="login-user"><img src="/resources/img/login-user.png" class="login-user-menu"style="width: 26px; height: 26px;"></a>
						</li>
						</ul>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- ... end Fixed Sidebar Left -->


<!-- Fixed Sidebar Left -->



<!-- ... end Fixed Sidebar Left -->


<!-- Fixed Sidebar Right -->


<!-- ... end Fixed Sidebar Right -->


<!-- Fixed Sidebar Right-Responsive -->



<!-- ... end Fixed Sidebar Right-Responsive -->


<!-- Header-BP -->

<!-- ... end Header-BP -->
<div class="main-header-post" style="position: relative;">
	<img loading="lazy" src="img/MyBlogMain.jpg" alt="author" style="width: 1920px; height: 700px;">
	
	<!-- 3개의 탭 -->
	<div class="tabs" style="position: absolute; bottom: 10px; right: 10px; display: flex; z-index: 10;">
		<a href="03-Myblog.html" class="btn btn-primary btn-md-2" style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">게시물</a>
		<a href="03-MyblogMap.html" class="btn btn-primary btn-md-2" style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">지도</a>
		<a href="03-MyblogExchange.html" class="btn btn-primary btn-md-2" style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">일정</a>
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

<footer>
	<p>쉿 아무말도하지마 나의 작은 아가고냥이</p>
</footer>
</body>
</html>