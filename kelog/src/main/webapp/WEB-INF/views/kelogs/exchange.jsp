<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>일정</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<!-- jQuery (버전 3.x 이상) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="/resources/Bootstrap/dist/css/bootstrap.css">
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.0/main.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- Bootstrap CSS -->

<!-- main.css (CalendarAndEvents + ProfilePage 스타일) -->
<link rel="stylesheet" href="/resources/css/main.css">



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
	min-height: 600px;
}

.profile-card, .ledger-card {
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fff;
	margin-bottom: 3rem;
	margin-top: 1rem;
}

.profile-card .card-header, .ledger-card .card-header {
	padding: 10px 16px;
	border-bottom: 1px solid #ddd;
	font-weight: 600;
	background-color: #f2f2f2;
}

.profile-card .card-body, .ledger-card .card-body {
	padding: 16px;
}

.right-column {
	display: flex;
	align-items: flex-start;
	padding-left: 3rem;
	margin-top: 25px;
}

.tab-content-wrapper {
	flex: 1;
	position: relative;
}

.tab-content {
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #fff;
	padding: 30px 30px 68px 30px;
	position: relative;
	left: 20px;
	min-height: 600px;
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
}

.ui-tabs li a:hover {
	background: #e2e2e2;
}

.ui-tabs li.active a {
	background: #fff;
	font-weight: 600;
	border-right-color: #ccc;
}

/* Ledger(가계부) 폼 스타일: Bootstrap 폼 컴포넌트를 활용 */
.ledger-form .form-label {
	font-weight: 600;
}

.ledger-form .form-control {
	border-radius: 4px;
}

.ledger-form button {
	margin-top: 10px;
}

/* 일정계획 탭 내 추가 버튼 (+) 스타일 */
.calendar-btn {
	position: absolute;
	bottom: 20px;
	right: 30px;
	width: 50px;
	height: 50px;
	font-size: 24px;
	line-height: 1;
	padding: 0;
}

@media ( max-width : 991px) {
	.right-column {
		flex-direction: row;
		padding-left: 0;
		flex-wrap: nowrap;
	}
	.tab-content-wrapper {
		flex: 3;
		width: auto;
		min-width: 0;
	}
	.tab-content {
		padding: 15px;
		left: 0;
		width: 100%;
	}
	.ui-tabs {
		margin: 0 0 0 1rem;
		flex: 1;
		width: auto;
	}
	.ui-tabs li a {
		padding: 6px 10px;
		font-size: 11px;
	}
}
</style>
</head>

<body>
	<!-- 헤더 -->
	<div class="header--standard header--standard-landing"
		id="header--standard">
		<div class="container">
			<div class="header--standard-wrap">
				<a href="12-FavouritePage.html" class="logo"></a>
				<div class="img-wrap">
					<img loading="lazy" src="/resources/img/logo-colored-small.webp"
						width="34" height="34" alt="Olympus" class="logo-colored">
				</div>

				<a href="#" class="open-responsive-menu js-open-responsive-menu">
					<svg class="olymp-menu-icon">
						<use xlink:href="#olymp-menu-icon"></use></svg>
				</a>

				<div class="nav nav-pills nav1 header-menu">
					<div class="mCustomScrollbar">
						<ul>
							<li class="nav-item dropdown"><a href="/travel/list">여행
									추천지</a></li>
							<li class="nav-item dropdown dropdown-has-megamenu"><a
								href="/blog/list">블로그 게시판</a></li>
							<li class="nav-item"><a href="/tip/list">꿀팁 게시판</a></li>
							<li class="nav-item"><a href="#">전국 날씨예보</a></li>
							<li class="close-responsive-menu js-close-responsive-menu">
								<svg class="olymp-close-icon">
									<use xlink:href="#olymp-close-icon"></use></svg>
							</li>
							<li class="nav-item js-expanded-menu"><a href="#"
								class="menu-link"> <img src="/resources/img/menu-bar.png"
									style="width: 26px; height: 26px;">
							</a></li>
							<li class="lang-set-item"><a href="#" class="change-lang">
									<img src="/resources/img/changeLang.png"
									style="width: 26px; height: 26px;">
							</a></li>
							<li class="login-set-item"><a href="01-LoginPage.html"
								class="login-user"> <img src="/resources/img/login-user.png"
									class="login-user-menu">
							</a></li>
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
			<!-- 왼쪽: (환율, 가계부) -->
			<div class="col-12 col-lg-3 mb-4 profile-column">
				<!-- 환율 카드 -->
				<div class="profile-card">
					<div class="card-header">환율</div>
					<div class="card-body text-center">
						<div class="exchange-rate-form">
							<div class="mb-3">
								<label for="currency-select" class="form-label">통화 선택</label> <select
									id="currency-select" class="form-control">
									<option value="USD">USD (달러)</option>
									<option value="JPY">JPY (엔)</option>
									<option value="CNY">CNY (위안)</option>
									<option value="EUR">EUR (유로)</option>
								</select>
							</div>
							<div class="mb-3">
								<label for="amount-input" class="form-label">금액 입력</label> <input
									type="number" id="amount-input" class="form-control"
									placeholder="금액을 입력하세요" step="1">
							</div>
							<button id="convert-btn" class="btn btn-primary">변환</button>
							<p id="result" class="mt-3 text-success"></p>
							<p id="error" class="mt-3 text-danger" style="display: none;"></p>
						</div>
					</div>
				</div>

				<!-- 가계부 카드 (내 UI 설계서에 맞춘 디자인) -->
				<div class="ledger-card">
					<div class="card-header">가계부(업뎃예정)</div>
					<div class="card-body">
						<form class="ledger-form">
							<div class="mb-3">
								<label for="ledger-date" class="form-label">날짜</label> <input
									type="date" id="ledger-date" class="form-control">
							</div>
							<div class="mb-3">
								<label for="ledger-description" class="form-label">내역</label> <input
									type="text" id="ledger-description" class="form-control"
									placeholder="사용 내역">
							</div>
							<div class="mb-3">
								<label for="ledger-amount" class="form-label">금액</label> <input
									type="number" id="ledger-amount" class="form-control"
									placeholder="0">
							</div>
							<button type="button" class="btn btn-primary w-100">추가</button>
						</form>
					</div>
				</div>
			</div>

			<!-- 스프링 영역 -->
			<div class="col-auto d-none d-lg-block spiral-container"></div>

			<!-- 오른쪽: 탭 메뉴 + 탭 콘텐츠 (달력 포함) -->
			<div class="col-12 col-lg-9 mb-4 right-column">
				<div class="tab-content-wrapper">
					<!-- 일정계획 탭 -->
					<div id="tab-plan" class="tab-content" style="display: block;">
						<h5>일정 계획 달력</h5>
						<!-- 달력 들어갈 DIV -->
						<div id="calendar"></div>
						<div class="events-list mt-3"></div>
					</div>

					<!-- 지도 탭 -->
					<div id="tab-map" class="tab-content" style="display: none;">
						<p>지도 탭 내용</p>
					</div>

					<!-- 게시글 탭 -->
					<div id="tab-post" class="tab-content" style="display: none;">
						<p>게시글</p>
					</div>
				</div>

				<!-- 우측 탭 버튼 목록 -->
				<ul class="ui-tabs">
					<li><a href="#" onclick="showTab(event, 'tab-post')">게시글</a></li>
					<li><a href="#" onclick="showTab(event, 'tab-map')">지도</a></li>
					<li class="active"><a href="#"
						onclick="showTab(event, 'tab-plan')">일정계획</a></li>
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
	<div id="eventModal" class="modal">
		<div class="modal-content">
			<span class="close-btn" id="closeModal">&times;</span>
			<h2>일정 관리</h2>
			<form id="eventForm">
				<input type="hidden" name="routineNo" id="routineNo">

				<div class="form-group">
					<label for="eventcontent">일정 내용</label> <input type="text"
						name="eventcontent" id="eventcontent" required>
				</div>

				<div class="form-group">
					<label for="eventDate">일정 날짜</label> <input type="date"
						name="eventDate" id="eventDate" required>
				</div>

				<div id="deleteEvent" style="display: none;">
					<button type="button" class="btn btn-danger" id="deleteButton">일정
						삭제</button>
				</div>

				<div>
					<button type="submit" class="btn btn-success" id="saveButton">저장</button>
					<button type="button" class="btn btn-secondary" id="cancelBtn">취소</button>
				</div>
			</form>
		</div>
	</div>

	<!-- Bootstrap & jQuery -->
	<script src="/resources/js/libs/moment.min.js"></script>
	<script src="/resources/js/libs/fullcalendar.min.js"></script>
	<script src="/resources/js/main.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js"></script>
	<script src="/resources/js/libs/jquery.mousewheel.min.js"></script>
	<script src="/resources/js/libs/perfect-scrollbar.min.js"></script>
	<script src="/resources/js/libs/imagesloaded.pkgd.min.js"></script>
	<script src="/resources/js/libs/material.min.js"></script>
	<script src="/resources/js/libs/isotope.pkgd.min.js"></script>
	<script src="/resources/js/libs/ajax-pagination.min.js"></script>
	<script src="/resources/js/libs/jquery.magnific-popup.min.js"></script>
	<script src="/resources/js/libs-init/libs-init.js"></script>
	<script src="/resources/js/svg-loader.js"></script>

	<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function () {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: ['interaction', 'dayGrid', 'timeGrid'],
        timeZone: 'Asia/Seoul',
        defaultView: 'dayGridMonth',
        defaultDate: new Date(),
        header: {
            left: 'prev',
            right: 'today next',
            center: 'title'
        },

        eventClick: function (info) {
            var event = info.event;
            showEventModal(event);  // 일정 클릭 시 모달 열기
        },

        dateClick: function (info) {
            openEventModal(info.dateStr);  // 날짜 클릭 시 모달 열기
        },

        events: [
        	   <c:forEach var="event" items="${dto}">
               {
            	   id: 	  '${event.routineNo}',	
                   title: '${event.content}',
                   start: '${event.eventDate}',
                   allDay: true
               },
           </c:forEach>
        ]
    });

    calendar.render();

    // 일정 추가 모달 열기
    function openEventModal(date) {
        $('#eventcontent').val('');  // 기존 내용 초기화
        $('#eventDate').val(date);  // 클릭한 날짜로 설정
        $('#routineNo').val('');  // routineNo 초기화

        $('#deleteEvent').hide();  // 삭제 버튼 숨기기
        $('#saveButton').show();   // 저장 버튼 보이기
        $('#eventModal').show();   // 모달 열기
    }

    // 일정 삭제 모달 열기
    function showEventModal(event) {
        $('#eventcontent').val(event.title);  // 기존 일정 내용 표시
        $('#eventDate').val(event.start.toISOString().split('T')[0]);  // 일정 날짜 표시

        $('#routineNo').val(event.id);  // 일정 ID 저장 (삭제용)
        $('#deleteEvent').show();  // 삭제 버튼 보이기
        $('#saveButton').hide();   // 저장 버튼 숨기기
        $('#eventModal').show();   // 모달 열기
    }

    // 일정 저장 (새 일정 추가)
    $('#eventForm').on('submit', function (e) {
        e.preventDefault();
        var eventContent = $('#eventcontent').val();
        var eventDate = $('#eventDate').val();

        // 새로운 일정 추가
        $.ajax({
            url: '/kelogs/addEvent', // 서버에 추가 요청
            type: 'POST',
            data: {
                content: eventContent,
                eventDate: eventDate
            },
            success: function(response) {
                calendar.addEvent({
                    title: eventContent,
                    start: eventDate,
                    allDay: true
                });
                $('#eventModal').hide();  // 모달 닫기
            },
            error: function(error) {
                alert("일정 추가 실패!");
            }
        });
    });

    // 일정 삭제
    $('#deleteButton').on('click', function () {
        var routineNo = $('#routineNo').val();
        console.log(routineNo);
        $.ajax({
            url: '/kelogs/deleteEvent', // 서버에 삭제 요청
            type: 'POST',
            data: { routineNo: routineNo },
            success: function(response) {
                var event = calendar.getEventById(routineNo);
                event.remove();  // 해당 일정 삭제
                $('#eventModal').hide();  // 모달 닫기
            },
            error: function(error) {
                alert("일정 삭제 실패!");
            }
        });
    });

    // 취소 버튼
    $('#cancelBtn').on('click', function () {
        $('#eventModal').hide();  // 모달 닫기
    });

    // 모달 닫기 버튼 (X)
    $('#closeModal').on('click', function () {
        $('#eventModal').hide();  // 모달 닫기
    });
});

</script>
	<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function () {
    // 환율 변환 버튼 이벤트
    $('#convert-btn').on('click', function () {
        var currency = $('#currency-select').val(); // 선택된 통화
        var amount = $('#amount-input').val(); // 입력된 금액
        
        if (!amount || amount <= 0) {
            $('#error').text('유효한 금액을 입력해주세요.').show();
            $('#result').text('');
            return;
        }

        // Fixer.io API 호출
        $.ajax({
            url: 'http://data.fixer.io/api/latest',
            type: 'GET',
            data: {
                access_key: '84ad9fb350351d2793a6c591d14cecce', // Fixer.io에서 발급받은 API 키로 교체
                symbols: 'USD,JPY,CNY,EUR,KRW' // 필요한 통화만 요청
            },
            success: function (response) {
                if (response.success) {
                    var rates = response.rates;
                    var eurToKrw = rates.KRW; // EUR -> KRW 환율
                    var eurToCurrency = rates[currency]; // EUR -> 선택된 통화 환율

                    // 금액 변환: (입력 금액 / 선택 통화의 EUR 환율) * KRW 환율
                    var convertedAmount = (amount / eurToCurrency) * eurToKrw;

                    $('#result').text(convertedAmount.toFixed(0)+" 원(KRW)");
                    $('#error').hide();
                } else {
                    $('#error').text('환율 데이터를 가져오지 못했습니다: ' + response.error.info).show();
                    $('#result').text('');
                }
            },
            error: function (xhr, status, error) {
                $('#error').text('API 요청 실패: 네트워크 오류').show();
                $('#result').text('');
            }
        });
    });
});

</script>

	<script>
    // 스크롤 시 헤더 색상 변경
    window.addEventListener('scroll', function () {
      const header = document.getElementById('header--standard');
      if (window.scrollY > 50) {
        header.classList.add('header--scrolled');
      } else {
        header.classList.remove('header--scrolled');
      }
    });

  </script>
</body>
</html>
