<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>환율API</title>

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
	
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>

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
	<img loading="lazy" src="img/wall03_1920.jpg" alt="author" width="1229" height="480">
	
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

		<main class="col col-xl-8 order-xl-2 col-lg-12 order-lg-1 col-md-12 col-sm-12 col-12" style="margin-left: 85px;">

			<div class="ui-block">  <!-- <-----추후 div 구역으로 변환 Ajax 사용 -->
				
				<!-- News Feed Form  -->
				
				<div class="news-feed-form">
			
				<!------------------------------------- Full Calendar ----------------------------------------->

				<div id="calendar" class="crumina-full-calendar">


				</div>

				<!-- JS library for Full Calendar -->
				<script src="/resources/js/libs/fullcalendar.min.js"></script>
				<!-- ...end JS library for Full Calendar -->

				<!-- JS-init for Full Calendar -->
				
				<!-- ... end JS-init for Full Calendar -->

				<!------------------------------------- ... end Full Calendar ----------------------------------------->
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
						<img src="/resources/img/BlogUser.png" style="width: 200px; height: 200px; border-radius: 100px;">
						<h4 style="color: #fff;">사용자 ID</h4>
						<h5 style="color: #fff;">소개글</h5>
					</div>
						<div class="wethear-now inline-items">
							<div class="max-min-temperature">
							</div>
						</div>
					</div>
					
					<div class="ui-block">
						<div id="calendar2" class="crumina-full-calendar">
					</div>
					<script src="/resources/js/libs/fullcalendar.min.js"></script>
					</div>		
			</aside>
</div>
</div>
<div id="eventModal" class="modal">
	<div class="modal-content">
			<span class="close-btn" id="closeModal">&times;</span>
			<h2>일정 관리</h2>
			<form id="eventForm" method="post">
					<!-- 일정 ID hidden 필드 -->
					<input class="form-control" type="hidden" name="eventId" id="eventId">
					
					<!-- 일정 제목 입력 -->
					<div class="form-group">
							<label for="eventTitle">일정 제목</label>
							<input class="form-control" type="text" name="eventTitle" id="eventTitle" placeholder="일정 제목을 입력하세요" required>
					</div>
					
					<!-- 일정 날짜 입력 -->
					<div class="form-group">
							<label for="eventDate">일정 날짜</label>
							<input class="form-control" type="date" name="eventDate" id="eventDate" required>
					</div>

					<!-- 일정 삭제 버튼 -->
					<div id="deleteEvent" style="display: none;">
							<button type="button" class="btn btn-danger" id="deleteButton">일정 삭제</button>
					</div>

					<!-- 일정 저장/취소 버튼 -->
					<div class="modal-actions">
							<button type="submit" class="btn btn-success" id="saveButton">저장</button>
							<button type="button" class="btn btn-secondary" id="cancelBtn">취소</button>
					</div>
			</form>
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
	var selectedEvent = null;

	fullCalendar = function () {
			var calendarEl = document.getElementById('calendar');

			// 오늘 날짜를 가져와서 yyyy-mm-dd 형식으로 설정
			var today = new Date();
			var year = today.getFullYear();
			var month = (today.getMonth() + 1).toString().padStart(2, '0');
			var day = today.getDate().toString().padStart(2, '0');
			var todayString = `${year}-${month}-${day}`;

			var calendar = new FullCalendar.Calendar(calendarEl, {
					plugins: ['interaction', 'dayGrid', 'timeGrid'],
					defaultView: 'dayGridMonth',
					defaultDate: todayString,  // 오늘 날짜로 설정
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

					// 날짜 클릭 시 일정 등록 모달 띄우기
					dateClick: function (info) {
							// 모달을 열고 기존 값 초기화
							document.getElementById('eventModal').style.display = 'block';
							document.getElementById('eventId').value = '';
							document.getElementById('eventTitle').value = '';
							document.getElementById('eventDate').value = info.dateStr;
							document.getElementById('deleteEvent').style.display = 'none'; // 삭제 버튼 숨기기
							document.getElementById('saveButton').style.display = 'block'; // 저장 버튼 보이기
					},

					// 일정 클릭 시 삭제 모달 띄우기
					eventClick: function (info) {
							selectedEvent = info.event;
							document.getElementById('eventModal').style.display = 'block';
							document.getElementById('eventId').value = selectedEvent.id;
							document.getElementById('eventTitle').value = selectedEvent.title;
							document.getElementById('eventDate').value = selectedEvent.start.toISOString().split('T')[0];
							document.getElementById('deleteEvent').style.display = 'block'; // 삭제 버튼 보이기
							document.getElementById('saveButton').style.display = 'none'; // 저장 버튼 숨기기
					}

					
		
			});

			calendar.render();
	};

	document.addEventListener("DOMContentLoaded", function () {
			fullCalendar();
	});

	// 모달 닫기
	document.getElementById('closeModal').addEventListener('click', function () {
			document.getElementById('eventModal').style.display = 'none';
	});

	document.getElementById('eventForm').addEventListener('submit', function (e) {
	    e.preventDefault();

	    var title = document.getElementById('eventTitle').value;
	    var date = document.getElementById('eventDate').value;
	    var eventId = document.getElementById('eventId').value;

	    var requestData = {
	        title: title,
	        date: date,
	        eventId: eventId
	    };

	    var url = eventId ? '/myblog/events/modify' : '/myblog/events/created';  // Modify or create based on eventId
	    var method = eventId ? 'POST' : 'POST';  // Same method, just different URL

	    $.ajax({
	        url: url,
	        method: method,
	        contentType: 'application/json',
	        data: JSON.stringify(requestData),
	        success: function (response) {
	            // Close modal and update the calendar
	            document.getElementById('eventModal').style.display = 'none';
	            if (eventId) {
	                // Update existing event
	                selectedEvent.setProp('title', title);
	                selectedEvent.setStart(date);
	            } else {
	                // Add new event
	                calendar.addEvent({
	                    title: title,
	                    start: date,
	                    allDay: true
	                });
	            }
	            alert(response);  // Show success message
	        },
	        error: function () {
	            alert('An error occurred while saving the event!');
	        }
	    });
	});

	// Handle Event Deletion via AJAX
	document.getElementById('deleteButton').addEventListener('click', function () {
	    if (selectedEvent) {
	        $.ajax({
	            url: '/myblog/events/delete',
	            method: 'POST',
	            data: { routineNo: selectedEvent.id },
	            success: function (response) {
	                // Remove the event from the calendar
	                selectedEvent.remove();
	                selectedEvent = null;
	                document.getElementById('eventModal').style.display = 'none';
	                alert(response);  // Show success message
	            },
	            error: function () {
	                alert('An error occurred while deleting the event!');
	            }
	        });
	    }
	});

	// Fetch events for the calendar via AJAX (on page load or when necessary)
	$(document).ready(function () {
	    $.ajax({
	        url: '/myblog/events',
	        method: 'GET',
	        success: function (response) {
	            response.forEach(function (event) {
	                calendar.addEvent({
	                    id: event.routineNo,
	                    title: event.title,
	                    start: event.date,
	                    allDay: true
	                });
	            });
	        },
	        error: function () {
	            alert('Failed to load events!');
	        }
	    });
	});
</script>
<footer>
	<p>쉿 아무말도하지마 나의 작은 아가고냥이</p>
</footer>

</body>
</html>