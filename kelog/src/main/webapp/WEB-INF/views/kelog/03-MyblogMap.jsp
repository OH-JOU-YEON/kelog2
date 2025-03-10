<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>지도API</title>

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
							<a href="03-Myblog.html">내 블로그</a>
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

<div class="main-header-post" style="position: relative;">
	<img loading="lazy" src="/resources/img/wall03_1920.jpg" alt="author" width="1229" height="480">
	
<!-- 3개의 탭 -->
<div class="tabs" style="position: absolute; bottom: 10px; right: 10px; display: flex; z-index: 10;">
	<a href="03-Myblog.html" class="btn btn-primary btn-md-2" style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">게시물</a>
	<a href="03-MyblogMap.html" class="btn btn-primary btn-md-2" style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">지도</a>
	<a href="03-MyblogExchange.html" class="btn btn-primary btn-md-2" style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">일정</a>
</div>
</div>

<!-- ... end Responsive Header-BP -->



<div class="container">
	<div class="row">

		<!-- Main Content -->

		<main class="col col-xl-8 order-xl-2 col-lg-12 order-lg-1 col-md-12 col-sm-12 col-12" style="margin-left: 85px;">

			<div class="ui-block">  <!-- <-----추후 div 구역으로 변환 Ajax 사용 -->
				
				<!-- News Feed Form  -->
				
				<div class="news-feed-form">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" style="justify-content: end;" role="tablist">
						<li class="nav-item">
							<a class="nav-link active inline-items" data-bs-toggle="tab" href="#home-1" role="tab" aria-expanded="true">
				
								<svg class="olymp-status-icon"><use xlink:href="#olymp-status-icon"></use></svg>
				
								<span>Status</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link inline-items" data-bs-toggle="tab" href="#profile-1" role="tab" aria-expanded="false">
				
								<svg class="olymp-multimedia-icon"><use xlink:href="#olymp-multimedia-icon"></use></svg>
				
								<span>Multimedia</span>
							</a>
						</li>
				
						<li class="nav-item">
							<a class="nav-link inline-items" data-bs-toggle="tab" href="#blog" role="tab" aria-expanded="false">
								<svg class="olymp-blog-icon"><use xlink:href="#olymp-blog-icon"></use></svg>
				
								<span>Blog Post</span>
							</a>
						</li>
					</ul>
				
					<!-- Tab panes -->
					
				</div>
			</div>
		</main>

		<!-- ... end Main Content -->


		<!-- Left Sidebar -->

		<aside class="col col-xl-3 order-xl-1 col-lg-6 order-lg-2 col-md-6 col-sm-6 col-12" style="margin-left: 40px;">
			<div class="ui-block-weahter">
				
				<!-- W-Weather -->
				
				<div class="widget w-weather">
					<a href="#" class="more"><svg class="olymp-three-dots-icon"><use xlink:href="#olymp-three-dots-icon"></use></svg></a>
				
					<div class="wethear-now inline-items">
						<div class="temperature-sensor">64°</div>
						<div class="max-min-temperature">
							<span>58°</span>
							<span>76°</span>
						</div>
				
						<svg class="olymp-weather-partly-sunny-icon"><use xlink:href="#olymp-weather-partly-sunny-icon"></use></svg>
					</div>
				
					<div class="wethear-now-description">
						<div class="climate">Partly Sunny</div>
						<span>Real Feel: <span>67°</span></span>
						<span>Chance of Rain: <span>49%</span></span>
					</div>
				
					<ul class="weekly-forecast">
				
						<li>
							<div class="day">sun</div>
							<svg class="olymp-weather-sunny-icon"><use xlink:href="#olymp-weather-sunny-icon"></use></svg>
				
							<div class="temperature-sensor-day">60°</div>
						</li>
				
						<li>
							<div class="day">mon</div>
							<svg class="olymp-weather-partly-sunny-icon"><use xlink:href="#olymp-weather-partly-sunny-icon"></use></svg>
							<div class="temperature-sensor-day">58°</div>
						</li>
				
						<li>
							<div class="day">tue</div>
							<svg class="olymp-weather-cloudy-icon"><use xlink:href="#olymp-weather-cloudy-icon"></use></svg>
				
							<div class="temperature-sensor-day">67°</div>
						</li>
				
						<li>
							<div class="day">wed</div>
							<svg class="olymp-weather-rain-icon"><use xlink:href="#olymp-weather-rain-icon"></use></svg>
				
							<div class="temperature-sensor-day">70°</div>
						</li>
				
						<li>
							<div class="day">thu</div>
							<svg class="olymp-weather-storm-icon"><use xlink:href="#olymp-weather-storm-icon"></use></svg>
				
							<div class="temperature-sensor-day">58°</div>
						</li>
				
						<li>
							<div class="day">fri</div>
							<svg class="olymp-weather-snow-icon"><use xlink:href="#olymp-weather-snow-icon"></use></svg>
				
							<div class="temperature-sensor-day">68°</div>
						</li>
				
						<li>
							<div class="day">sat</div>
				
							<svg class="olymp-weather-wind-icon-header"><use xlink:href="#olymp-weather-wind-icon-header"></use></svg>
				
							<div class="temperature-sensor-day">65°</div>
						</li>
				
					</ul>
				
					<div class="date-and-place">
						<h5 class="date">Saturday, March 26th</h5>
						<div class="place">San Francisco, CA</div>
					</div>
				
				</div>
				
				<!-- W-Weather -->			</div>

			<div class="ui-block">
				
										<!------------------------------------- Full Calendar ----------------------------------------->

										<div id="calendar" class="crumina-full-calendar">


										</div>
				
										<!-- JS library for Full Calendar -->
										<script src="/resources/js/libs/fullcalendar.min.js"></script>
										<!-- ...end JS library for Full Calendar -->
				
										<!-- JS-init for Full Calendar -->
										
										<!-- ... end JS-init for Full Calendar -->
				
										<!------------------------------------- ... end Full Calendar ----------------------------------------->			</div>

			
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