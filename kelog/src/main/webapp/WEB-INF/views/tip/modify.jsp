<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="formattedRegDate">
	<fmt:formatDate pattern="yyyy-MM-dd a hh:mm:ss" value="${dto.regDate }" />
</c:set>

<!DOCTYPE html>
<html lang="en">
<head>

	<title>꿀팁 게시판</title>

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
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<!-- Main RTL CSS -->
	<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->
	<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css">
	<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
</head>
<body class="body-bg-white">


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

<!-- Stunning header -->

<div class="stunning-header bg-primary-opacity" style="height: 500px;">

	
	<!-- Header Standard Landing  -->
	
	<div class="header--standard header--standard-landing" id="header--standard">
	<div class="container">
		<div class="header--standard-wrap">

			<a href="12-FavouritePage.html" class="logo"></a>
				<div class="img-wrap">
					<img loading="lazy" src="/resources/img/logo-colored-small.webp" width="34" height="34" alt="Olympus" class="logo-colored">
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

	<div class="stunning-header-content">
		<h1 class="stunning-header-title">꿀팁 게시판</h1>
		<ul class="breadcrumbs">
				<li class="breadcrumbs-item active">
						<span>게시글 수정</span>
				</li>
		</ul>
</div>

	<div class="content-bg-wrap stunning-header-bg1"></div>
</div>

<!-- End Stunning header -->
<form role="form">
<div class="container mt-5">
	<div class="row">
			<!-- Title Input -->
			<div class="col-md-8 offset-md-2">
			<input class="form-control" name="tipBoardNo" type="hidden" value="${dto.tipBoardNo}">
					<div class="form-group">
							<label for="post-title">제목</label>
							<input class="form-control" name="title"
							 id="post-title" type="text" placeholder="게시글 제목" value="${dto.title }">
					</div>
			</div>
	</div>

	<!-- Content Editor -->
	<div class="row">
			<div class="col-md-8 offset-md-2">
					<div class="form-group">
							<label for="post-content">내용</label>
							<textarea class="form-control" class="content" name="content" id="content" rows="10" style="display:none;"></textarea>
					</div>
					<div id="editor" >${dto.content }</div>
			</div>
	</div>

	<!-- File Upload -->
	<div class="col-md-8 offset-md-2">
		<div class="form-group">
				<label for="post-title">닉네임</label>
				<input class="form-control" name="nickName" type="text"	value="${dto.nickName }">
		</div>
</div>
<div class="col-md-8 offset-md-2">
	<div class="form-group">
			<label for="post-title">작성일</label>
			<input class="form-control" name="regDate" disabled="disabled" value="${dto.regDate }">
	</div>
</div>
	<!-- Buttons -->
	<div class="row">
			<div class="col-md-8 offset-md-2 d-flex justify-content-between">
					<button class="btn btn-primary btn-md" type="button" data-oper="modify">수정</button>
					<button class="btn btn-primary btn-md" type="button" data-oper="remove">삭제</button>
					<button class="btn btn-secondary btn-md" type="button" data-oper="list">취소</button>
			</div>
	</div>
</div>
</form>
<!-- ... end Window Popup Main Search -->
<script type="text/javascript">
	$(function(){
		var formObj = $("form");
		
		$(".btn").on("click",function(e){
			e.preventDefault(); // 기존에 갖고있는 이벤트 무효화
			
			let operation = $(this).data("oper");
			console.log(operation);
			
			
			if(operation === "modify"){
				formObj.attr("action","/tip/modify").attr("method","post");
				$('#content').val(editor.getHTML());
			}else if (operation === "remove"){
				formObj.attr("action","/tip/remove").attr("method","post");
			}else if (operation === "list"){
				formObj.attr("action","/tip/list").attr("method","get");
			}
			formObj.submit();
		});
		const editor = new toastui.Editor({
				el: document.querySelector('#editor'),      // 에디터를 적용할 요소 (컨테이너)
				height: '500px',                             // 에디터 영역의 높이 값 (OOOpx || auto)
				initialEditType: 'markdown',                 // 최초로 보여줄 에디터 타입 (markdown || wysiwyg)
				initialValue: '',                            // 내용의 초기 값으로, 반드시 마크다운 문자열 형태여야 함
				previewStyle: 'vertical',                    // 마크다운 프리뷰 스타일 (tab || vertical)
				placeholder: '내용을 입력해 주세요.',
				hooks: {
						async addImageBlobHook(blob, callback) {
							try {
								const formData = new FormData();
								formData.append("image", blob);
								const response = await fetch("/tui-editor/image-upload", {
									method: "POST",
									body: formData,
								});
	
								const filename = await response.text();
								console.log("서버에 저장된 파일명 : ", filename);
	
								const imageUrl = `C:/tui-editor/image-print?filename=${filename}`;
								callback(imageUrl, "image alt attribute");
							} catch (error) {
								console.error("업로드 실패 : ", error);
							}
							
						}
				}
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
<script src="/resources/js/libs/aos.min.js"></script>

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