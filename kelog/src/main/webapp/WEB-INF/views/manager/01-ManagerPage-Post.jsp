<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>Landing Page</title>

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

<body class="landing-page">


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


<!-- Header Standard Landing  -->

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
						<li class="nav-item dropdown"><a
								href="02-RecommendPost.html" style="color: #000 !important;">여행
									추천지</a></li>
							<li class="nav-item dropdown dropdown-has-megamenu"><a
								href="97-BlogPostBoard.html" style="color: #000 !important;">블로그</a>
							</li>
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
							<li class="login-set-item">
							<c:choose>
							    <c:when test="${email == null}">
							        <a href="/login/google/login.do" class="login-user">
							            <img src="/resources/img/login-user.png"
							                style="width: 31px; height: 31px; filter: none;">
							        </a>
							    </c:when>
							
							    <c:otherwise>
							        <a href="#" class="login-user">
							            <img src="/resources/img/login-user.png"
							                class="login-user-menu" style="filter: none;">
							        </a>
							        <ul class="login-drop-menu" style="display: none;">
							        	<c:choose>
							        		<c:when test="${user.role == 'user'}">
							            <li><a href="/user/read?uno=${user.uno }" id="mypage">마이페이지</a></li>
							            	</c:when>
							            	<c:otherwise>
							            	<li><a href="/manager/01-ManagerPage-MyPage?uno=${user.uno }" id="mypage">마이페이지</a></li>
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


<!-- ... end Header Standard Landing  -->
<div class="header-spacer--standard"></div>

<div class="container">
	<div class="row display-flex" style="justify-content: center; display: flex; align-items: center;">
		<div class="col col-xl-10 col-lg-6 col-md-12 col-sm-12 col-12">
			
			<!-- Login-Registration Form  -->

			<div class="registration-login-form">
				<!-- Tab panes -->
				<div class="tab-content" id="registration-form-tabs-content">
					<div class="tab-pane fade show active">
							<form class="content">
									<div class="row" style="justify-content: center; display: flex;">
											<!-- 아이디 입력 -->
											<div class="col col-12 col-xl-6 col-lg-6 col-md-6 col-sm-12">
												<div class="admin-container">
													<div class="tabs" style="display: flex; justify-content: flex-end; gap: 10px;">
															<a href="/manager/01-ManagerPage-MyPage?uno=${user.uno }" class="btn btn-primary btn-md-2" id="tab-member">마이페이지</a>
															<a href="/manager/01-ManagerPage" class="btn btn-primary btn-md-2" id="tab-post">회원관리</a>
															<a href="/manager/01-ManagerPage-Post" class="btn btn-primary btn-md-2" id="tab-comment">게시물 관리</a>
															<a href="/manager/01-ManagerPage-Reply" class="btn btn-primary btn-md-2" id="tab-write">댓글 관리</a>
													</div>
											</div>
													
												
			
													
													</div>
											</div>
							</form>    
					</div>
			</div>
			<div class="row" style="justify-content: center; display: flex;">
				<div class="col col-8 col-xl-6 col-lg-6 col-md-6 col-sm-12">
					<ul class="table-careers reportpost">
						<li class="head" style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
							<span style="flex: 0 0 120px; text-align: start;">신고 번호</span>
							<span style="flex: 0 0 120px; text-align: start;">신고 글 번호</span>
							<span style="flex: 0 0 120px; text-align: center;">신고자 이메일</span>
							<span style="flex: 0 0 120px; text-align: center;">신고 사유</span>
							<span style="flex: 0 0 120px; text-align: center;">신고 삭제</span>
							<span style="flex: 0 0 120px; text-align: center;">글 삭제</span>
						
							<span style="display: flex; justify-content: flex-end;">
							</span>
					</li>
					
					</ul>
				</div>
			</div>
			</div>
			</div>
			</div>
			</div>

			
				
			
			<!-- ... end Login-Registration Form  -->


<!-- Window-popup Restore Password -->



<!-- ... end Window-popup Restore Password -->


<!-- Window Popup Main Search -->


<!-- ... end Window Popup Main Search -->

<!-- JS Scripts -->
<script src="/resources/js/jQuery/jquery-3.5.1.min.js"></script>

<script src="/resources/js/libs/jquery.mousewheel.min.js"></script>
<script src="/resources/js/libs/perfect-scrollbar.min.js"></script>
<script src="/resources/js/libs/imagesloaded.pkgd.min.js"></script>
<script src="/resources/js/libs/material.min.js"></script>
<script src="/resources/js/libs/selectize.min.js"></script>
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
	<!-- 하단 푸터 -->
	<footer class="py-4 mt-5">
		<div class="container text-center">
			<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
			<small>&copy; 2025. All rights reserved.</small>
		</div>
	</footer>
	<script type="text/javascript">
$(document).ready(function() {
    loadTable();
});

function loadTable() {
    $.ajax({
        url: "/manager/getPostList",
        type: "post",
        dataType: "json",
        success: function(data) {
            var boardContainer = $(".reportpost");

            $.each(data, function(index, report) {
                var itemContainer = $("<div>").css({
                    "display": "flex",
                    "justify-content": "space-between",
                    "align-items": "center",
                    "width": "100%",
                    "border-bottom": "1px solid #ddd",
                    "padding": "10px 0"
                });

                itemContainer.append($("<span>").addClass("reportNo").css({"flex":" 0 0 120px", "text-align": "center"}).text(report.reportNo));
                itemContainer.append($("<span>").addClass("blogPostNo").text(report.blogPostNo || ""));
                itemContainer.append($("<span>").addClass("tipBoardNo").text(report.tipBoardNo || ""));
                itemContainer.append($("<span>").addClass("email").css({"flex":" 0 0 120px", "text-align": "center"}).text(report.email));
                itemContainer.append($("<span>").addClass("reportReason").css({"flex":" 0 0 120px", "text-align": "center"}).text(report.reportReason));

                // 신고 삭제 버튼
                var editButton = $("<button>").addClass("btn btn-primary btn-md-2")
                    .css({
                    	"flex":" 0 0 120px", "text-align": "center"
                    })
                    .text("신고 삭제");

                var editLink = $("<a>").attr("href", "/manager/01-ManagerPage-Post-remove?reportNo=" + report.reportNo)
                    .append(editButton)
                    .on("click", function() {
                        console.log("신고 삭제 링크 클릭됨: /manager/01-ManagerPage-Post-remove?reportNo=" + report.reportNo);
                    });
                itemContainer.append(editLink);

                // 게시글 삭제 버튼
                var deleteButton = $("<button>").addClass("btn btn-danger btn-md-2")
                    .css({
                        "width": "50px",
                        "height": "40px",
                        "white-space": "nowrap",
                        "text-align": "start",
                        "margin-left": "10px" // 버튼 간 간격 추가
                    })
                    .text("게시글 삭제");

                var deleteLink;
                if (report.blogPostNo) {
                    deleteLink = $("<a>").attr("href", "/manager/post/removeBlog?postId=" + report.blogPostNo)
                        .append(deleteButton)
                        .on("click", function(e) {
                            console.log("블로그 게시글 삭제 링크 클릭됨: /manager/post/removeBlog?postId=" + report.blogPostNo);
                            if (!confirm("정말로 이 블로그 게시글을 삭제하시겠습니까?")) {
                                e.preventDefault();
                            }
                        });
                } else if (report.tipBoardNo) {
                    deleteLink = $("<a>").attr("href", "/tip/remove?tipBoardNo=" + report.tipBoardNo)
                        .append(deleteButton)
                        .on("click", function(e) {
                            console.log("팁 게시글 삭제 링크 클릭됨: /tip/remove?tipBoardNo=" + report.tipBoardNo);
                            if (!confirm("정말로 이 팁 게시글을 삭제하시겠습니까?")) {
                                e.preventDefault();
                            }
                        });
                } else {
                    deleteButton.prop("disabled", true).text("삭제 불가"); // 게시글 ID 없으면 비활성화
                    deleteLink = $("<span>").append(deleteButton);
                }
                itemContainer.append(deleteLink);

                boardContainer.append(itemContainer);
            });
        },
        error: function(e) {
            console.log("AJAX 오류:", e.status, e.statusText);
        }
    });
}
</script>
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
var email = '${email}'; // JSP에서 가져온 email 값

loginButton.addEventListener('click', function(event) {
    if (email) { // email이 있을 때만 드롭다운 토글
        event.preventDefault(); // 로그인 상태일 때만 기본 동작 방지
        const languageTabs = document.getElementById('language-tabs');
        if (languageTabs.style.display === 'block') {
            languageTabs.style.display = 'none';
        }
        const isMenuVisible = loginDropdownMenu.style.display === 'block';
        loginDropdownMenu.style.display = isMenuVisible ? 'none' : 'block';
    }
    // email이 null이면 기본 동작(href 이동)이 실행됨
});
		
	// 페이지 클릭 시 드롭다운 메뉴 숨기기 (드롭다운 외부 클릭 시)
	document.addEventListener('click', function(event) {
		if(email != null){	
		// 클릭한 곳이 로그인 버튼이나 드롭다운 메뉴가 아니면 드롭다운 숨기기
			if (!loginButton.contains(event.target) && !loginDropdownMenu.contains(event.target)) {
					loginDropdownMenu.style.display = 'none';
			}
	
			// 클릭한 곳이 언어 버튼이나 드롭다운 메뉴가 아니면 언어 드롭다운 메뉴 숨기기
			const languageTabs = document.getElementById('language-tabs');
			if (!document.querySelector('.change-lang').contains(event.target) && !languageTabs.contains(event.target)) {
					languageTabs.style.display = 'none';
			}
	}
	});
	</script>
<!-- 신고 모달창부분 -->

<script>
// 모달 창과 관련된 요소 선택
const reportModal = document.getElementById('reportModal');
const closeModal = document.getElementById('closeModal');
const reportIcons = document.querySelectorAll('.reportIcon');  // class로 선택
const cancelBtn = document.getElementById('cancelBtn');  // 취소 버튼 추가

// 각 reportIcon에 클릭 이벤트 추가

reportIcons.forEach(reportIcon => {
    reportIcon.addEventListener('click', function() {
        var email = '${email}';
        
          if (!email) {
                alert("로그인 후 신고할 수 있습니다.");
                return;  // 로그인되지 않으면 더 이상 진행하지 않음
            }else {
            	if(JSON.parse('${isReport}') ==true) {
            		alert("이미 신고하신 게시글 입니다.");
            		return;            		
           	 	}else {
                	reportModal.style.display = 'block';  // 모달을 열기
           	 	}
            }
    });
});

// 모달 닫기 버튼 클릭 시 모달 닫기
closeModal.addEventListener('click', function() {
    reportModal.style.display = 'none';
});

// 취소 버튼 클릭 시 모달 닫기
cancelBtn.addEventListener('click', function() {
    reportModal.style.display = 'none';  // 모달 닫기
});

// 모달 바깥을 클릭하면 모달을 닫기
window.addEventListener('click', function(event) {
    if (event.target === reportModal) {
        reportModal.style.display = 'none';
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
</body>
</html>