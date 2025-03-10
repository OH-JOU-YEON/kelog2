<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Company Page Blog Grid</title>

<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- Theme Font -->
<link rel="preload" type="text/css"
	href="/resources/css/theme-font.min.css" as="style">

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/Bootstrap/dist/css/bootstrap2.css">

<!-- Main Styles CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">

<!-- Main RTL CSS -->
<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->





</head>
<body>

	<div class="header--standard header--standard-landing"
		id="header--standard">
		<div class="container">
			<div class="header--standard-wrap">

				<a href="12-FavouritePage.html" class="logo"></a>
				<div class="img-wrap">
					<img loading="lazy" src="/resources/img/logo-colored-small.webp"
						width="34" height="34" alt="Olympus" class="logo-colored">
				</div>
				<div class="title-block">
					<h6 class="logo-title">로고 들어갈 자리</h6>

				</div>

				<a href="#" class="open-responsive-menu js-open-responsive-menu">
					<svg class="olymp-menu-icon">
						<use xlink:href="#olymp-menu-icon"></use></svg>
				</a>

				<div class="nav nav-pills nav1 header-menu">
					<div class="mCustomScrollbar">
						<ul>
							<li class="nav-item dropdown"><a
								href="02-RecommendPost.html" style="color: #000 !important;">여행
									추천지</a></li>
							<li class="nav-item dropdown dropdown-has-megamenu"><a
								href="97-BlogPostBoard.html" style="color: #000 !important;">블로그</a>
							</li>
							<li class="nav-item"><a href="55-HoneyTipBoard.html"
								style="color: #000 !important;">꿀팁 게시판</a></li>
							<li class="nav-item"><a href="#"
								style="color: #000 !important;">전국 날씨예보</a></li>
							<li class="close-responsive-menu js-close-responsive-menu">
								<svg class="olymp-close-icon">
									<use xlink:href="#olymp-close-icon"></use></svg>
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
									<li><a href="#" id="english">English</a></li>
									<li><a href="#" id="korean">한국어</a></li>
								</ul></li>
							<li class="login-set-item"><a href="#" class="login-user">
									<img src="/resources/img/login-user.png"
									class="login-user-menu" style="filter: none;">
							</a> <!-- 드롭다운 메뉴 -->
								<ul class="login-drop-menu" style="display: none;">
									<li><a href="01-ManagerPage-MyPage.html">마이페이지</a></li>
									<li><a href="03-Myblog.html">내 블로그</a></li>
									<li><a href="logout.html">로그아웃</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--  <header role="banner" class="header_black">
		<div class="inner">


			<nav role="navigation" class="sub_nav">
				<ul class="sub_menu">
					<li><a> 전체보기 </a></li>
					<li><a href="#"> 문화 </a></li>
					<li><a href="#"> 한류</a></li>

					<li><a href="#"> K-뷰티</a></li>
				</ul>
-->
	<script src="/resources/js/lib/comm.js"></script>

	</header>
	<main role="main" id="mainTab">
		<div class="wrap">
			<!-- 축제 리스트 -->
			<section class="other_list type2" role="region">
				<div class="inner">
					<div class="other_festival" role="application">
						<div class="blind">페스티벌 검색 리스트</div>

						<div class="festival_ul_top" id="festival_ul_top" style="">
							<ul class="tab_area">

								<li id="tabFstvlList" class="active">
									<button title="선택됨">최신순</button>
								</li>

								<li id="tabFstvlLikeOrderList">
									<button>인기순</button>
								</li>
							</ul>
						</div>



						<div class="tab_cont_area">
							<!-- 먹거리 알리오 -->
							<!--// 먹거리 알리오 -->
							<!-- 축제일순 -->
							<div class="tab_cont active" aria-expanded="true"
								role="application">
								<p class="blind">축제일순 리스트</p>
								<ul class="other_festival_ul" id="fstvlList">
									<c:forEach var="vo" items="${list }">
										<li><a
											href="/travel/read?travelBoardNo=${vo.travelBoardNo }">
												<div class="other_festival_img  open">
													<img
														src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_220371a8-ec85-46b7-8bb0-30afa9a93a19_1.jpg"
														alt="사진~">
													<div class="sing_area">
														<div class="blind">문화 관광 축제</div>
													</div>
												</div>
												<div class="other_festival_content">
													<strong><a
														href="/travel/read?travelBoardNo=${vo.travelBoardNo }">${vo.title }</a></strong>
													<div class="date">일정 날짜</div>
													<div class="loc">위치~쓰기</div>
												</div>
										</a></li>
									</c:forEach>
								</ul>
							</div>


						</div>

					</div>
				</div>
			</section>
			<!--// 축제 리스트 -->
			<button id="regBtn" type="button" class="btn btn-primary btn-md-2">글등록</button>

			<div class="loading">
				<div class="loading_start" aria-live="assertive" role="alert">
					<div class="blind">please wait while we gather your
						information, Loading...</div>
					<img src="/resources/img/loading.svg" alt="로딩 이미지">
				</div>
			</div>
		</div>

	</main>
	<div id="mymodal" class="modal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Modal title</h5>
					<button type="button" class="close" data-bs-dismiss="modal"
						aria-label="Close">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>Modal body text goes here.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>



	<!-- Pagination -->

	<nav aria-label="Page navigation">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled"><a class="page-link" href="#"
				tabindex="-1">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1
					<div class="ripple-container">
						<div class="ripple ripple-on ripple-out"
							style="left: -10.3833px; top: -16.8333px; background-color: rgb(255, 255, 255); transform: scale(16.7857);"></div>
					</div>
			</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">...</a></li>
			<li class="page-item"><a class="page-link" href="#">12</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</nav>

	<!-- ... end Pagination -->

	</section>

	<!-- 하단 푸터 -->
	<footer class="py-4 mt-5">
		<div class="container text-center">
			<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
			<small>&copy; 2025. All rights reserved.</small>
		</div>
	</footer>

	<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
	
			$("#regBtn").on("click", function() {
				self.location = "/travel/created";
				
			});
	});
	</script>


	<!-- JS Scripts -->
	<script src="/resources/js/jQuery/jquery-3.5.1.min.js"></script>

	<script src="/resources/js/libs/jquery.mousewheel.min.js"></script>
	<script src="/resources/js/libs/perfect-scrollbar.min.js"></script>
	<script src="/resources/js/libs/imagesloaded.pkgd.min.js"></script>
	<script src="/resources/js/libs/material.min.js"></script>
	<script src="/resources/js/libs/moment.min.js"></script>
	<script src="/resources/js/libs/daterangepicker.min.js"></script>
	<script src="/resources/js/libs/isotope.pkgd.min.js"></script>
	<script src="/resources/js/libs/ajax-pagination.min.js"></script>
	<script src="/resources/js/libs/jquery.magnific-popup.min.js"></script>

	<script src="/resources/js/main.js"></script>
	<script src="/resources/js/libs-init/libs-init.js"></script>

	<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>

	<!-- SVG icons loader -->
	<script src="/resources/js/svg-loader.js"></script>
	<!-- /SVG icons loader -->

	<!-- 다국어JSON파일 불러오기 -->
	<script>
document.getElementById('language-toggle').addEventListener('click', function(event) {
event.preventDefault();
const languageTabs = document.getElementById('language-tabs');

// 로그인 드롭다운이 열려 있으면 닫기
const dropdownMenu = document.querySelector('.login-drop-menu');
if (dropdownMenu.style.display === 'block') {
		dropdownMenu.style.display = 'none';
}

// 언어 탭이 열려 있으면 닫고, 그렇지 않으면 열기
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
// 선택된 언어 강조
const tabs = document.querySelectorAll('.language-tabs li a');
tabs.forEach(tab => {
		tab.classList.remove('selected'); // 기존 선택 해제
});

if (language === 'en') {
		document.getElementById('english').classList.add('selected'); // 영어 선택시 강조
} else if (language === 'kr') {
		document.getElementById('korean').classList.add('selected'); // 한국어 선택시 강조
}
}

function loadLanguage(language) {
const filePath = `path/to/lang/${language}.json`;  // 언어 파일 경로

// Fetch JSON 파일
fetch(filePath)
		.then(response => response.json())
		.then(data => {
				// JSON 데이터를 사용하여 페이지 텍스트를 변경
				updatePageText(data);
		})
		.catch(error => console.error('Error loading language file:', error));

// 언어 탭 닫기
document.getElementById('language-tabs').style.display = 'none';
}

function updatePageText(data) {
// JSON 파일에서 불러온 데이터로 페이지 내용을 업데이트
document.querySelector('.logo-title').textContent = data.logoTitle;
document.querySelector('.sub-title').textContent = data.subTitle;
document.querySelector('.title').textContent = data.recommendedPosts;
document.querySelector('.post-title').textContent = data.postTitle;
document.querySelector('.post-content').textContent = data.postContent;
}

// 로그인 버튼과 드롭다운 메뉴 가져오기
const loginButton = document.querySelector('.login-user');
const loginDropdownMenu = document.querySelector('.login-drop-menu');

// 로그인 버튼 클릭 시 드롭다운 메뉴 토글
loginButton.addEventListener('click', function(event) {
event.preventDefault(); // 링크의 기본 동작 방지 (페이지 이동 방지)

// 언어 드롭다운 메뉴가 열려 있으면 닫기
const languageTabs = document.getElementById('language-tabs');
if (languageTabs.style.display === 'block') {
		languageTabs.style.display = 'none';
}

// 로그인 드롭다운 메뉴가 표시되어 있으면 숨기고, 아니면 표시
const isMenuVisible = loginDropdownMenu.style.display === 'block';
loginDropdownMenu.style.display = isMenuVisible ? 'none' : 'block';
});

// 페이지 클릭 시 드롭다운 메뉴 숨기기 (드롭다운 외부 클릭 시)
document.addEventListener('click', function(event) {
// 클릭한 곳이 로그인 버튼이나 드롭다운 메뉴가 아니면 드롭다운 숨기기
if (!loginButton.contains(event.target) && !loginDropdownMenu.contains(event.target)) {
		loginDropdownMenu.style.display = 'none';
}

// 클릭한 곳이 언어 버튼이나 드롭다운 메뉴가 아니면 언어 드롭다운 메뉴 숨기기
const languageTabs = document.getElementById('language-tabs');
if (!document.querySelector('.change-lang').contains(event.target) && !languageTabs.contains(event.target)) {
		languageTabs.style.display = 'none';
}
});

</script>
	<script type="text/javascript">

	function checkModal(result) {
		if (result === '') {
			return;
			
		}else if(result === 'mod'){
			
			$(".modal-body").html("정상적으로 수정되었습니다.")
			
		}else if(result === 'del'){
			
			$(".modal-body").html("정상적으로 삭제되었습니다.")
			
		}
		$("#mymodal").modal("show");
	}

	$(document).ready(function() {
		$("#regBtn").on("click", function() {
			self.location = "/travel/created";
		});

		$(".close, .btn-secondary").on("click", function() {
			$("#mymodal").modal("hide");
		});

		var result = '${result}';
		checkModal(result);

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
</body>
</html>