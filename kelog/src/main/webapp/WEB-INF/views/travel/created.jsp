<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<style>
.btn-group {
	display: flex;
	border: 1px solid #ccc;
	border-radius: 2px;
	overflow: hidden;
	width: fit-content;
}

.btn-item, .btn-item a {
	flex: 1;
	text-align: center;
	padding: 10px 20px;
	cursor: pointer;
	background: #fff;
	font-size: 12px;
	font-weight: bold;
	transition: background 0.3s, color 0.3s;
	text-decoration: none;
	color: inherit;
	display: flex;
	align-items: center;
	justify-content: center;
}

/* 버튼 경계선 */
.btn-item:not(:last-child) {
	border-right: 1px solid #ccc;
}

/* 호버 효과 */
.btn-item:hover {
	background: #f0f0f0;
}
}
</style>
<head>

<title>Landing Page</title>

<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Theme Font -->
<link rel="preload" type="text/css"
	href="/resources/css/theme-font.min.css" as="style">

<!-- Bootstrap CSS -->

<link rel="stylesheet" type="text/css"
	href="/resources/Bootstrap/dist/css/bootstrap2.css">

<!-- Main Styles CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">

<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css">
<script
	src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<!-- Main RTL CSS -->
<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->

</head>

<body class="landing-page">

	<!-- Header Standard Landing  -->

	<div class="header--standard header--standard-landing"
		id="header--standard">
		<div class="container">
			<div class="header--standard-wrap">

				<a href="12-FavouritePage.html" class="logo"></a>
				<div class="img-wrap">
					<a href="#"> <img loading="lazy"
						src="/resources/img/logokelog.png" width="140" height="34"
						alt="Logo" class="logo-colored">
					</a>
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


	<!-- ... end Header Standard Landing  -->
	<div class="header-spacer--standard"></div>

	<div class="container">
		<div class="row display-flex"
			style="justify-content: center; display: flex; align-items: center;">
			<div class="col col-xl-10 col-lg-6 col-md-12 col-sm-12 col-12">

				<!-- Login-Registration Form  -->

				<div class="container outer-container">
					<!-- 바깥 테두리 박스 -->
					<div class="ui-block p-4 outer-border">
						<!-- 내부 폼 -->
						<div class="ui-block p-4">
							<h3 class="text-center mb-4">추천 여행지 글쓰기</h3>



							<form id="fom" action="/travel/created" method="post"
								enctype="multipart/form-data">
								<input type="hidden" name="email" value="${user.email}">

								<div class="mb-3">
									<label>닉네임</label> <input readonly="readonly"
										class="form-control" name="nickName" value="${nickName }"
										style="background-color: #ffffff; border: none;">
								</div>

								<div class="mb-3">
									<label for="title" class="form-label fw-bold">제목</label> <input
										class="form-control" id="title" name="title"
										placeholder="제목을 입력하세요">
								</div>
								<!-- 해시태그 -->
								<div class="mb-3">
									<label for="tag" class="form-label fw-bold">해시태그</label> <input
										class="form-control" id="tag" name="tag"
										placeholder="해시태그를 입력해주세요">
								</div>
								<!-- 내용 -->
								<div class="mb-3">
									<label for="content" class="form-label fw-bold">내용</label>
									<textarea class="form-control" id="content" name="content"
										rows="5" style="display: none;"></textarea>
								</div>
								<div id="editor"></div>

								<div class="mb-3">
									<label class="form-label fw-bold">썸네일</label> 
									<input id="i_imageFileName" class="form-control" name="file"
										type="file" value="${dto.thumbnail}">
								</div>
								<div>
									<img id="preview" alt="업로드된 파일" src=""
										style="width: 500px; display: block; margin: 0 auto;">
								</div>
								<input type="hidden" name="thumbnail" value="${dto.thumbnail}">

								<!-- 등록/취소 버튼 (오른쪽 하단) -->
								<div class="row">
									<div class="col-12 d-flex justify-content-end"
										style="margin-top: 20px; gap: 15px; padding-bottom: 50px; width: 100%;">
										<div class="btn-group" style="margin-left: auto;">
											<div id="submitBtn" class="btn-item">등록</div>
											<a href="/travel/list" class="btn-item">취소</a>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>



					<!-- 하단 푸터 -->
					<footer class="py-4 mt-5">
						<div class="container text-center">
							<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
							<small>&copy; 2025. All rights reserved.</small>
						</div>
					</footer>

					<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>

				</div>
			</div>
		</div>

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
		<script type="text/javascript">
      const editor = new toastui.Editor({
        el: document.querySelector("#editor"), // 에디터를 적용할 요소 (컨테이너)
        height: "500px", // 에디터 영역의 높이 값 (OOOpx || auto)
        initialEditType: "markdown", // 최초로 보여줄 에디터 타입 (markdown || wysiwyg)
        initialValue: "", // 내용의 초기 값으로, 반드시 마크다운 문자열 형태여야 함
        placeholder: '내용을 입력해 주세요',
        previewStyle: "vertical", // 마크다운 프리뷰 스타일 (tab || vertical)
        toolbarItems: [
          ["heading", "bold", "italic", "strike"],
          ["hr", "quote"],
          ["ul", "ol", "task", "indent", "outdent"],
          ["table", "image", "link"],
          ["code", "codeblock"],
          ["scrollSync"],
 
        ],
        hooks: {
            async addImageBlobHook(blob, callback) {
              // 이미지 업로드 로직 커스텀
              try {
                /*
                 * 1. 에디터에 업로드한 이미지를 FormData 객체에 저장
                 *    (이때, 컨트롤러 uploadEditorImage 메서드의 파라미터인 'image'와 formData에 append 하는 key('image')값은 동일해야 함)
                 */
                const formData = new FormData();
                formData.append("image", blob);

                // 2. FileApiController - uploadEditorImage 메서드 호출
                const response = await fetch("/editor/image-upload", {
                  method: "POST",
                  body: formData,
                });

                // 3. 컨트롤러에서 전달받은 디스크에 저장된 파일명
                const filename = await response.text();
                console.log("서버에 저장된 파일명 : ", filename);

                // 4. addImageBlobHook의 callback 함수를 통해, 디스크에 저장된 이미지를 에디터에 렌더링
                const imageUrl ="/editor/image-print?filename=" + filename;
                callback(imageUrl, "image alt attribute");
              } catch (error) {
                console.error("업로드 실패 : ", error);
              }
            },
          }
      });
</script>
		<script type="text/javascript">
// 폼 제출 전에 Editor의 내용을 textarea에 저장
$('#submitBtn').on('click', function() {
	// 에디터의 HTML 값을 숨겨진 textarea에 저장
	$('#content').val(editor.getHTML());

	const title = $('#title').val().trim();
    const content = $('#content').val().trim();

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
		<script type="text/javascript">
$(function() {
// 이미지 미리보기
$("#i_imageFileName").on("change", function(event) {
    console.log(event);
    var reader = new FileReader();
    reader.onload = function(e) {
        console.log(e);
        $("#preview").attr("src", e.target.result).show();
    }
    reader.readAsDataURL(event.target.files[0]);
});
});
</script>
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