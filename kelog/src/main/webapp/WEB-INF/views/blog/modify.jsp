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

<title>내 블로그 글 수정</title>

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
												수정</span>
									</a></li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane fade active show" id="home-1"
										role="tabpanel" aria-expanded="true">
										<form role="form">
											<div class="create-post">
												<input class="form-control" name="blogPostNo" type="hidden"
													value="${dto.blogPostNo}">
												<div class="form-group">
													<label for="post-title">제목</label> <input name="title"
														class="form-control" id="post-title" value="${dto.title }">
												</div>

												<div class="form-group">
													<label>Content</label>
													<textarea id="content" name="content" class="form-control"
														style="display: none;"></textarea>
												</div>
												<div id="editor">${dto.content }</div>
											</div>
											<div class="form-group">
												<label>nickName</label> <input class="form-control"
													name="nickName" readonly="readonly"
													value="${dto.nickName }">
											</div>
											<div class="form-group">
												<label for="post-title">작성일</label> <input
													class="form-control" name="regDate" disabled="disabled"
													value="${formattedRegDate }">
											</div>
											<div class="add-options-message">
												<button type="submit" class="btn btn-primary btn-md-2"
													data-oper="modify">수정</button>
												<button type="button" class="btn btn-primary btn-md-2"
													data-oper="remove">삭제</button>
												<button type="button"
													class="btn btn-md-2 btn-border-think btn-transparent c-grey"
													data-oper="list">취소</button>
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
	<!-- 하단 푸터 -->
	<footer class="py-4 mt-5">
		<div class="container text-center">
			<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
			<small>&copy; 2025. All rights reserved.</small>
		</div>
	</footer>

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
<script type="text/javascript">
$(function(){
	var formObj = $("form");
	
	$(".btn").on("click",function(e){
		e.preventDefault(); // 기존에 갖고있는 이벤트 무효화
		
		let operation = $(this).data("oper");
		console.log(operation);
		
		if(operation === "modify"){
			formObj.attr("action","/blog/modify").attr("method","post");
			$('#content').val(editor.getHTML());
		}else if (operation === "remove"){
			formObj.attr("action","/blog/remove").attr("method","post");
		}else if (operation === "list"){
			formObj.attr("action","/blog/list").attr("method","get");
		}
		formObj.submit();
	});
</script>
<script type="text/javascript">
      const container = document.createElement("div");
      container.setAttribute("class", ".toastui-editor-popup-body");

      container.setAttribute("style", "width : 58rem; height : 28rem");

      const menu = document.createElement("div");
      menu.setAttribute("id", "menu_wrap");
      menu.setAttribute("class", "bg_white");

      container.appendChild(menu);

      const option = document.createElement("div");
      option.setAttribute("class", "option");

      menu.appendChild(option);

      const wrapDiv = document.createElement("div");

      option.appendChild(wrapDiv);

      const form = document.createElement("form");
      form.setAttribute("onsubmit", "searchPlaces(); return false");

      wrapDiv.appendChild(form);

      const formInput = document.createElement("input");
      formInput.setAttribute("placeholder", "키워드를 입력하세요");
      formInput.setAttribute("id", "keyword");
      formInput.setAttribute("size", "15");
      formInput.setAttribute("contenteditable", "true");
      formInput.setAttribute("name", "keyword");

      form.appendChild(formInput);

      const hr = document.createElement("hr");

      option.appendChild(hr);

      let buttonText = document.createTextNode("검색하기");

      const submitButton = document.createElement("button");
      submitButton.setAttribute("type", "submit");
      submitButton.appendChild(buttonText);

      form.appendChild(submitButton);

      const page = document.createElement("div");
      page.setAttribute("id", "pagination");

      const placeList = document.createElement("ul");
      placeList.setAttribute("id", "placesList");

      option.appendChild(placeList);
      option.appendChild(page);

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

      document
        .querySelector(".toastui-editor-toolbar-maps")
        .setAttribute("onclick", "relayout()");
</script>
</body>
</html>