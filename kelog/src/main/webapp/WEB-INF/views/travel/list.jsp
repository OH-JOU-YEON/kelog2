<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">
li {
	overflow: hidden; /* 요소가 넘치지 않도록 */
	position: relative; /* 필요 시 상대 위치 지정 */
}

.other_festival_img {
	width: 100%; /* 이미지 영역 너비 */
	height: auto; /* 이미지 높이 자동 조정 */
}

.other_festival_img img {
	display: block; /* 이미지 블록 요소로 설정 */
	width: 100%; /* 이미지 크기 조정 */
	height: auto; /* 비율 유지 */
}

.other_festival_content {
	width: 100%; /* 텍스트 영역 너비 */
	padding: 10px; /* 텍스트와 이미지 간 간격 */
	box-sizing: border-box; /* 패딩 포함 크기 계산 */
}
</style>
<title>추천게시판</title>

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
					<a href="#"><img loading="lazy"
						src="/resources/img/logokelog.png" width="140" height="34"
						alt="Olympus" class="logo-colored"></a>
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
								href="/blog/list" style="color: #000 !important;">블로그 게시판</a></li>
							<li class="nav-item"><a href="/tip/list"
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
													<li><a href="/user/read?uno=${user.uno }" id="mypage">마이페이지</a></li>
												</c:when>
												<c:otherwise>
													<li><a
														href="/manager/01-ManagerPage-MyPage?uno=${user.uno }"
														id="mypage">마이페이지</a></li>
												</c:otherwise>
											</c:choose>
											<li><a href="03-Myblog.html">내 블로그</a></li>
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

	<main role="main" id="mainTab">
		<div class="wrap">
			<!-- 축제 리스트 -->
			<section class="other_list type2" role="region">
				<div class="inner">
					<div class="other_festival" role="application">
						<div class="blind">페스티벌 검색 리스트</div>

						<div class="search-container"
							style="display: flex; justify-content: space-between; align-items: center; gap: 1em;">
							<div style="margin-bottom: 25px; width: 250px;">
								<label for="rowsPerPage">몇 줄씩 표시할지 선택</label> <select
									id="rowsPerPage" class="selectAmount">
									<option ${pageMaker.cri.amount == 9 ? "selected='selected'":''}
										value="9">9개</option>
									<option
										${pageMaker.cri.amount == 15 ? "selected='selected'":''}
										value="15">15개</option>
									<option
										${pageMaker.cri.amount == 30 ? "selected='selected'":''}
										value="30">30개</option>
								</select>
							</div>
							<c:if test="${user.role == 'admin' }">
								<button id="regBtn" type="button"
									class="btn btn-primary btn-md-2 left">글등록</button>
							</c:if>
						</div>



						<div class="tab_cont_area">
							<!-- 먹거리 알리오 -->
							<!--// 먹거리 알리오 -->
							<!-- 축제일순 -->
							<div class="tab_cont active" aria-expanded="true"
								role="application">
								<p class="blind">축제일순 리스트</p>
								<ul class="other_festival_ul" id="fstvlList">
									<!--  	<c:forEach var="vo" items="${list }"> -->
									<!--	</c:forEach> -->
								</ul>
							</div>


						</div>

					</div>
				</div>
			</section>
			<!--// 축제 리스트 -->

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
			<li class="page-item"><c:if test="${pageMaker.prev }">
					<li class="paginate_button previous" tabindex="0"><a
						href="${pageMaker.startPage - 1 }">Previous</a></li>
				</c:if> <c:forEach var="num" begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }">
					<li
						class="paginate_button  ${pageMaker.cri.pageNum == num ? 'active':''}"
						tabindex="0"><a href="${num }">${num}</a></li>
				</c:forEach> <c:if test="${pageMaker.next }">
					<li class="paginate_button next" tabindex="0"><a
						href="${pageMaker.endPage + 1 }">next</a></li>
				</c:if>
				<form id="pageForm" action="/travel/list" method="get">
					<input type="hidden" name="pageNum"
						value="${pageMaker.cri.pageNum }"> <input type="hidden"
						name="amount" value="${pageMaker.cri.amount }">
				</form></li>

		</ul>
	</nav>
	<!-- ... end Pagination -->

</body>
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
	function loadTable() {
	    $.ajax({
	        url: "/travel/getList",
	        type: "post",
	        data: {
	            pageNum: $("#pageForm").find("input[name='pageNum']").val(),
	            amount: $("#pageForm").find("input[name='amount']").val()
	        },
	        dataType: "json",
	        success: function(data) {
	            var festivalList = $("#fstvlList");
	            festivalList.empty(); // 기존 리스트 비우기

	            // 서버에서 반환된 데이터로 리스트 생성
	            $.each(data, function(index, travellist) {
	                let updateDate = new Date(travellist.regDate);
	                var options = {
	                    year: "numeric",
	                    month: "2-digit",
	                    day: "2-digit",
	                    hour: "2-digit",
	                    minute: "2-digit"
	                };
	                var formattedUpdateDate = updateDate.toLocaleString("ko-KR", options);

	                var listItem = $("<li>").append(
	                	    $("<div>").addClass("other_festival_img open").append(
	                	        $("<a>").attr("href", "/travel/read?travelBoardNo=" + travellist.travelBoardNo).append(
	                	            $("<img>").attr("src", "https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_220371a8-ec85-46b7-8bb0-30afa9a93a19_1.jpg").attr("alt", "사진~")
	                	        )
	                	    ),
	                	    $("<div>").addClass("other_festival_content").append(
	                	        $("<strong>").append(
	                	            $("<a>").attr("href", "/travel/read?travelBoardNo=" + travellist.travelBoardNo).text(travellist.title)
	                	        ),
	                	        $("<div>").text(travellist.tag),
	                	        $("<div>").text(formattedUpdateDate)
	                	    )
	                	);
	                festivalList.append(listItem);
	            });
	        },
	        error: function(e) {
	            console.log(e);
	        }
	    });
	}

	$(document).ready(function() {
	    loadTable(); // 페이지 로드 시 초기 리스트 불러오기

	    $("#regBtn").on("click", function() {
	        self.location = "/travel/created";
	    });

	    // 페이지 번호 클릭 시
	    let pageForm = $("#pageForm");
	    $(".paginate_button a").on("click", function(e) {
	        e.preventDefault();
	        pageForm.find("input[name='pageNum']").val($(this).attr("href"));
	        pageForm.submit();
	        loadTable(); // 테이블 새로고침
	    });

	    // "몇 줄씩 표시할지 선택" 변경 시
	    $(".selectAmount").on("change", function(e) {
	        $("#pageForm").find("input[name='pageNum']").val(1); // 첫 페이지로 이동
	        $("#pageForm").find("input[name='amount']").val(e.currentTarget.value);
	        pageForm.submit();
	        loadTable(); // 선택한 갯수에 맞춰 리스트 새로고침
	    });

	    var result = '${result}';
	    checkModal(result);
	});
</script>
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
</html>