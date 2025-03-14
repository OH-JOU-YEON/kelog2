<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
request.setCharacterEncoding("UTF-8");

String url = (String) request.getAttribute("url");
String filename = (String) request.getAttribute("filename");

StringBuilder sbHtml = new StringBuilder();

sbHtml.append("{");
sbHtml.append("\"url\" : \"" + url + "\",");
sbHtml.append("\"filename\" : \"" + filename + "\"");
sbHtml.append("}");

out.println(sbHtml);
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css">
	<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
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

	<!-- Main RTL CSS -->
	<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->

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

	<div class="stunning-header-content">
		<h1 class="stunning-header-title">꿀팁 게시판</h1>
		<ul class="breadcrumbs">
			<li class="breadcrumbs-item active">
				<span>다양한 꿀팁들을 한번에!</span>
			</li>
		</ul>
	</div>

	<div class="content-bg-wrap stunning-header-bg1"></div>
</div>

<!-- End Stunning header -->




<form id="fom" action="/tip/created" method="post">
    <div class="row" style="justify-content: center;">
        <div class="col col-lg-6 col-md-6 col-sm-12 col-12">
            <div class="form-group">
                <input name="email" class="material-input form-control" type="hidden" value="${email}">
                <label>Title</label>
                <input name="title" id="title" class="material-input form-control" placeholder="제목 입력" type="text">
            </div>
        </div>
    </div>
    <div class="row" style="justify-content: center;">
        <div class="col col-lg-6 col-md-6 col-sm-12 col-12">
            <div class="form-group">
                <div>
                    <label>Content</label>
                    <textarea id="content" name="content" class="form-control" style="display: none;"></textarea>
                    <!-- 에디터 들어갈 자리 -->
                </div>
                <div id="editor"></div>
                <span class="material-input"></span>
            </div>
        </div>
    </div>
    <div class="row" style="justify-content: center;">
        <div class="col col-lg-6 col-md-6 col-sm-12 col-12">
            <div class="form-group">
                <label>nickName</label>
                <input readonly="readonly" id="nickName" class="form-control" name="nickName" value="${nickName}">
            </div>
        </div>
    </div>
    <div class="row" style="justify-content: center;">
        <button type="button" id="submitBtn" class="btn btn-primary btn-md-2" style="margin-right: 200px; width: 100px; height: 30px;">등록</button>
        <a href="/tip/list" class="btn btn-primary btn-md-2" style="width: 100px; height: 30px;">취소</a>
    </div>
</form>
<script type="text/javascript">
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
	
	// 폼 제출 전에 Editor의 내용을 textarea에 저장
	$('#submitBtn').on('click', function() {
		// 에디터의 HTML 값을 숨겨진 textarea에 저장
		$('#content').val(editor.getHTML());
		
		const title = $('#title').val().trim();
	    const content = $('#content').val().trim();
	    
		// 디버깅용 콘솔 로그
		console.log("전송할 Title:", $("textarea[name='title']").val());
		console.log("전송할 Content:", $('#content').val());
		console.log("전송할 niceName:", $('#niceName').val());
		if (!title) {
	        alert("제목을 입력해 주세요.");
	        $('#title').focus();
	        return; // 제출 중단
	    }
	    if (!content || content === "<p><br></p>") { // 빈 HTML 태그도 체크
	        alert("내용을 입력해 주세요.");
	        editor.focus();
	        return; // 제출 중단
	    }
		// 폼 제출
		$("#fom").submit();
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