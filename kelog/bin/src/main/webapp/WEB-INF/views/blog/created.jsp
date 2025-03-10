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

<title>내 블로그 글 작성</title>

<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">


<!-- Theme Font -->
<link rel="preload" type="text/css"
	href="/resources/css/theme-font.min.css" as="style">

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/Bootstrap/dist/css/bootstrap.css">

<!-- Main Styles CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">

<!-- Main RTL CSS -->
<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css">
<script
	src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
</head>
<body class="page-has-left-panels page-has-right-panels">


	<!-- Preloader -->

	<div id="hellopreloader">
		<div class="preloader">
			<svg width="45" height="45" stroke="#fff">
			<g fill="none" fill-rule="evenodd" stroke-width="2"
					transform="translate(1 1)">
				<circle cx="22" cy="22" r="6" stroke="none">
					<animate attributeName="r" begin="1.5s" calcMode="linear" dur="3s"
					repeatCount="indefinite" values="6;22" />
					<animate attributeName="stroke-opacity" begin="1.5s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0" />
					<animate attributeName="stroke-width" begin="1.5s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="2;0" />
				</circle>
				<circle cx="22" cy="22" r="6" stroke="none">
					<animate attributeName="r" begin="3s" calcMode="linear" dur="3s"
					repeatCount="indefinite" values="6;22" />
					<animate attributeName="stroke-opacity" begin="3s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0" />
					<animate attributeName="stroke-width" begin="3s" calcMode="linear"
					dur="3s" repeatCount="indefinite" values="2;0" />
				</circle>
				<circle cx="22" cy="22" r="8">
					<animate attributeName="r" begin="0s" calcMode="linear" dur="1.5s"
					repeatCount="indefinite" values="6;1;2;3;4;5;6" />
				</circle>
			</g>
		</svg>

			<div class="text">Loading ...</div>
		</div>
	</div>

	<!-- ... end Preloader -->


	<!-- Fixed Sidebar Left -->

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
					<div class="sub-title">SOCIAL NETWORK</div>
				</div>

				<a href="#" class="open-responsive-menu js-open-responsive-menu">
					<svg class="olymp-menu-icon">
						<use xlink:href="#olymp-menu-icon"></use></svg>
				</a>

				<div class="nav nav-pills nav1 header-menu">
					<div class="mCustomScrollbar">
						<ul>
							<li class="nav-item"><a href="00-MainPage.html">메인 페이지</a></li>
							<li class="nav-item dropdown"><a
								href="02-RecommendPost.html">여행 추천지</a></li>
							<li class="nav-item dropdown dropdown-has-megamenu"><a
								href="97-BlogPostBoard.html">블로그 게시판</a></li>
							<li class="nav-item"><a href="03-Myblog.html">내 블로그</a></li>
							<li class="nav-item"><a href="55-HoneyTipBoard.html">꿀팁
									게시판</a></li>
							<li class="nav-item"><a href="#">전국 날씨예보</a></li>
							<li class="close-responsive-menu js-close-responsive-menu">
								<svg class="olymp-close-icon">
									<use xlink:href="#olymp-close-icon"></use></svg>
							</li>
							<li class="nav-item js-expanded-menu"><a href="#"
								class="menu-link"><img src="/resources/img/menu-bar.png"
									style="width: 26px; height: 26px;"></a></li>
							<li class="lang-set-item"><a href="#" class="change-lang"><img
									src="/resources/img/changeLang.png"
									style="width: 26px; height: 26px;"></a></li>
							<li class="login-set-item"><a href="01-LoginPage.html"
								class="login-user"><img src="/resources/img/login-user.png"
									class="login-user-menu"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ... end Fixed Sidebar Left -->

	<div class="main-header-post" style="position: relative;">
		<img loading="lazy" src="/resources/img/wall03_1920.jpg" alt="author"
			width="1229" height="480">

		<!-- 3개의 탭 -->
		<div class="tabs"
			style="position: absolute; bottom: 10px; right: 10px; display: flex; z-index: 10;">
			<a href="03-Myblog.html" class="btn btn-primary btn-md-2"
				style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">게시물</a>
			<a href="03-MyblogMap.html" class="btn btn-primary btn-md-2"
				style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">지도</a>
			<a href="03-MyblogExchange.html" class="btn btn-primary btn-md-2"
				style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">일정</a>
		</div>
	</div>


	<div class="container">
		<div class="row">

			<!-- Main Content -->

			<!-- Main Content Section -->
			<div class="container">
				<div class="row">
					<main
						class="col col-xl-8 order-xl-2 col-lg-12 order-lg-1 col-md-12 col-sm-12 col-12"
						style="margin-left: 85px;">
						<div class="ui-block">
							<div class="news-feed-form">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" style="justify-content: end;"
									role="tablist">
									<li class="nav-item"><a
										class="nav-link active inline-items" data-bs-toggle="tab"
										href="#home-1" role="tab" aria-expanded="true"> <svg
												class="olymp-status-icon">
												<use xlink:href="#olymp-status-icon"></use></svg> <span>글
												작성</span>
									</a></li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane fade active show" id="home-1"
										role="tabpanel" aria-expanded="true">
										<form id="fom" action="/blog/created" method="post">
											<div class="create-post">
												<div class="form-group">
													<label for="post-title">제목</label> <input name="title"
														class="form-control" id="post-title">
												</div>

												<div class="form-group">
													<label>Content</label>
													<textarea id="content" name="content" class="form-control"
														style="display: none;"></textarea>
												</div>
												<div id="editor"></div>
											</div>
											<div class="form-group">
												<label>nickName</label> <input class="form-control"
													name="nickName" readonly="readonly"
													value="${user.nickName }">
											</div>
											<div class="add-options-message">
												<button type="button" id="submitBtn" class="btn btn-primary btn-md-2">등록</button>
												<a href="/blog/list"  class="btn btn-md-2 btn-border-think btn-transparent c-grey">취소</a>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</main>
				</div>
			</div>
		</div>
	</div>



	<!-- JS Scripts -->
	<script src="/resources/js/jQuery/jquery-3.5.1.min.js"></script>

	<script src="/resources/js/libs/jquery.mousewheel.min.js"></script>
	<script src="/resources/js/libs/perfect-scrollbar.min.js"></script>
	<script src="/resources/js/libs/imagesloaded.pkgd.min.js"></script>
	<script src="/resources/js/libs/material.min.js"></script>
	<!-- <script src="/resources/js/libs/selectize.min.js"></script>-->
	<script src="/resources/js/libs/isotope.pkgd.min.js"></script>
	<script src="/resources/js/libs/ajax-pagination.min.js"></script>
	<script src="/resources/js/libs/jquery.magnific-popup.min.js"></script>

	<script src="/resources/js/main.js"></script>
	<script src="/resources/js/libs-init/libs-init.js"></script>

	<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>

	<!-- SVG icons loader -->
	<script src="/resources/js/svg-loader.js"></script>
	<!-- /SVG icons loader -->
	<footer>
		<p>쉿 아무말도하지마 나의 작은 아가고냥이</p>
	</footer>
<script type="text/javascript">
	$(function(){
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

			// 디버깅용 콘솔 로그
			console.log("전송할 Title:", $("textarea[name='title']").val());
			console.log("전송할 Content:", $('#content').val());

			// 폼 제출
			$("#fom").submit();
		});
	});

</script>
	<script>
		window.addEventListener('scroll', function() {
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