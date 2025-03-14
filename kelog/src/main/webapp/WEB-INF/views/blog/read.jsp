<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>

<title>블로그 게시판</title>

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
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css">
<script
	src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<!-- Main RTL CSS -->
<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->

</head>
<body class="body-bg-white">
	<div id="reportModal" class="modal">
		<div class="modal-content">
			<span class="close-btn" id="closeModal">&times;</span>
			<h2>게시글 신고</h2>
			<form id="reportForm" method="post" action="/blog/report">
				<input class="form-control" type="hidden" name="blogPostNo"
					value="${dto.blogPostNo }">
				<div class="form-group">
					<label>게시판 제목</label><input class="form-control" type="text"
						readonly="readonly" name="title" value="${dto.title }">
				</div>
				<div class="form-group">
					<label>신고자</label><input class="form-control" type="text"
						readonly="readonly" name="nickName" value="${user.nickName}">
				</div>
				<div class="form-group">
					<label>신고 사유</label> <select name="reportReason">
						<option selected>::선택하세요::</option>
						<option value="불법정보">불법정보</option>
						<option value="욕설/인신공격">욕설/인신공격</option>
						<option value="음란성/선정성">음란성/선정성</option>
						<option value="영리목적/홍보성">영리목적/홍보성</option>
						<option value="개인정보노출">개인정보노출</option>
					</select>
				</div>

				<div class="modal-actions">
					<button type="submit" class="btn btn-danger">신고</button>
					<button type="button" class="btn btn-secondary" id="cancelBtn">취소</button>
				</div>
			</form>
		</div>
	</div>

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

	<!-- Header Standard Landing  -->

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
								href="/blog/list">블로그 게시판</a></li>
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
									class="login-user-menu" style="width: 26px; height: 26px;"></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ... end Header Standard Landing  -->
	<div class="main-header-post">
		<img loading="lazy" src="/resources/img/wall03_1920.jpg" alt="author"
			width="1229" height="480">
	</div>


	<div class="container negative-margin-top150 mb60">
		<div class="row">
			<div class="col col-xl-8 m-auto col-lg-12 col-md-12 col-sm-12 col-12">

				<div class="ui-block">


					<!-- Single Post -->
					<article class="hentry blog-post single-post single-post-v1">
						<a href="#" class="post-category bg-primary">블로그 게시판</a>
						<h1 class="post-title">${dto.title }</h1>
						<div class="author-thumb">
							<h5>작성자: ${dto.nickName }</h5>
						</div>
					</article>
					<div class="post-content-wrap">
						<div class="post-content">
							<div id="editor" style="display: none;">${dto.content}</div>
						</div>
						<div id="viewer"></div>
					</div>
					<a href="/blog/list" class="btn btn-primary btn-md" style="margin-left: 600px;">목록</a>
					<c:if test="${dto.nickName == user.nickName }">
						<a href="/blog/modify?blogPostNo=${dto.blogPostNo }"
							class="btn btn-primary btn-md">수정하기</a>
					</c:if>
					<div class="Report reportIcon">
						<img src="/resources/img/Report-icon.png"
							style="width: 22px; height: 22px; margin-bottom: 20px; margin-right: 20px;">
					</div>



					<!-- ... end Single Post -->

				</div>

				<form>
					<div class="crumina-module crumina-heading with-title-decoration">
						<h5 class="heading-title">댓글</h5>
					</div>
					<div class="row">
						<div class="col col-12 col-xl-4 col-lg-4 col-md-4 col-sm-12">
							<div class="form-group label-floating">
								<label class="control-label">사용자 ID</label> <input
									class="form-control" placeholder="" value="James Spiegel"
									type="text"> <span class="material-input"></span>
							</div>
						</div>
						<div class="col col-10 col-xl-10 col-lg-10 col-md-10 col-sm-10">
							<div class="form-group d-flex is-empty">
								<textarea class="form-control" placeholder="댓글 입력"
									style="flex: 1; height: 60px;"></textarea>
								<a href="#" class="btn btn-primary btn-lg"
									style="margin-left: 10px; height: 58px; background-color: #9edbff; border-color: #9eb3ff;">등록</a>
								<span class="material-input"></span>
							</div>
						</div>
					</div>
				</form>

				<div class="crumina-module crumina-heading with-title-decoration">
					<h5 class="heading-title">댓글(15)</h5>
				</div>


				<!-- Comments -->

				<ul class="comments-list style-3">
					<li class="comment-item">
						<div class="post__author-thumb">
							<img loading="lazy" src="/resources/img/avatar1.webp"
								alt="author" width="92" height="92">
						</div>

						<div class="comments-content">
							<div class="post__author author vcard">

								<div class="author-date">
									<a class="h6 post__author-name fn" href="#">Nicholas
										Grissom</a>
									<div class="post__date">
										<time class="published" datetime="2004-07-24T18:18"> 27
											mins ago </time>
									</div>
								</div>

							</div>

							<p>Sed ut perspiciatis unde omnis iste natus error sit
								voluptatem accusantium der doloremque laudantium.</p>

							<a href="#" class="reply">답글</a> <a href="#" class="report">좋아요</a>
							<a href="#" class="report" style="margin-left: 20px;">싫어요</a>
						</div>

					</li>
					<li class="comment-item">
						<div class="post__author-thumb">
							<img loading="lazy" src="/resources/img/avatar2.webp"
								alt="author" width="92" height="92">
						</div>

						<div class="comments-content">
							<div class="post__author author vcard">

								<div class="author-date">
									<a class="h6 post__author-name fn" href="#">Marina
										Valentine</a>
									<div class="post__date">
										<time class="published" datetime="2004-07-24T18:18"> 4
											hours ago </time>
									</div>
								</div>

							</div>

							<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur
								aut odit aut fugit, sed quia consequuntur magni dolores eos qui
								ratione voluptatem sequi nesciunt. Sed ut perspiciatis unde
								omnis iste natus error sit voluptatem accusantium doloremque
								laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
								veritatis et quasi architecto beatae vitae dicta sunt explicabo.
							</p>

							<a href="#" class="reply">답글</a> <a href="#" class="report">좋아요</a>
							<a href="#" class="report" style="margin-left: 20px;">싫어요</a>
						</div>
					</li>
					<li class="comment-item has-children">
						<div class="post__author-thumb">
							<img loading="lazy" src="/resources/img/avatar3.webp"
								alt="author" width="92" height="92">
						</div>

						<div class="comments-content">
							<div class="post__author author vcard">

								<div class="author-date">
									<a class="h6 post__author-name fn" href="#">Mathilda
										Brinker</a>
									<div class="post__date">
										<time class="published" datetime="2004-07-24T18:18"> 12
											hours ago </time>
									</div>
								</div>

							</div>

							<p>Sed ut perspiciatis unde omnis iste natus error sit
								voluptatem accusantium doloremque laudantium, totame rem
								aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
								architecto beatae vitae.</p>

							<a href="#" class="reply">답글</a> <a href="#" class="report">좋아요</a>
							<a href="#" class="report" style="margin-left: 20px;">싫어요</a>
						</div>

						<ul class="children">
							<li class="comment-item">
								<div class="post__author-thumb">
									<img loading="lazy" src="/resources/img/avatar4.webp"
										alt="author" width="92" height="92">
								</div>

								<div class="comments-content">
									<div class="post__author author vcard">

										<div class="author-date">
											<a class="h6 post__author-name fn" href="#">James Spiegel</a>
											<div class="post__date">
												<time class="published" datetime="2004-07-24T18:18">
													20 hours ago </time>
											</div>
										</div>

									</div>

									<p>Consectadipisicing elit, sed do eiusmod por incidid ut
										labore et dolore magna aliqua. Ut enim ad minim veniam, quis
										nostrud lorem exercitation ullamco laboris.</p>

									<a href="#" class="reply">답글</a> <a href="#" class="report">좋아요</a>
									<a href="#" class="report" style="margin-left: 20px;">싫어요</a>
								</div>
							</li>
						</ul>
					</li>
					<li class="comment-item">
						<div class="post__author-thumb">
							<img loading="lazy" src="/resources/img/avatar5.webp" width="92"
								height="92" alt="author">
						</div>

						<div class="comments-content">
							<div class="post__author author vcard">

								<div class="author-date">
									<a class="h6 post__author-name fn" href="#">Elaine Dreyfuss</a>
									<div class="post__date">
										<time class="published" datetime="2004-07-24T18:18"> 38
											mins ago </time>
									</div>
								</div>

							</div>

							<p>Sed ut perspiciatis unde omnis iste natus error sit
								voluptatem accusantium der doloremque laudantium.</p>

							<a href="#" class="reply">답글</a> <a href="#" class="report">좋아요</a>
							<a href="#" class="report" style="margin-left: 20px;">싫어요</a>
						</div>
					</li>
				</ul>

				<!-- ... end Comments -->
			</div>
			<div
				class="col col-xl-8 m-auto col-lg-12 col-md-12 col-sm-12 col-12 align-center">
				<a href="#" class="btn btn-purple btn-md mb60 mt60">댓글 더보기...</a>
			</div>

			<div class="col col-xl-8 m-auto col-lg-12 col-md-12 col-sm-12 col-12">
			</div>
		</div>
	</div>
	<script>
		$(function() {
			ToView();
		});

		/*토스트 UI */
		const content = [].join('\n');

		const editor = new toastui.Editor({
			el : document.querySelector('#editor'),
		});

		/*토스트 UI 뷰어 */
		const viewer = toastui.Editor.factory({
			el : document.querySelector('#viewer'),
			viewer : true,
			height : '500px',
			initialEditType : 'wysiwyg',
			initialValue : content

		});

		function ToView() {
			viewer.setMarkdown(editor.getHTML());
		};
	</script>
<script>
// 모달 창과 관련된 요소 선택
const reportModal = document.getElementById('reportModal');
const closeModal = document.getElementById('closeModal');
const reportIcons = document.querySelectorAll('.reportIcon');  // class로 선택
const cancelBtn = document.getElementById('cancelBtn');  // 취소 버튼 추가

// 각 reportIcon에 클릭 이벤트 추가


reportIcons.forEach(reportIcon => {
    reportIcon.addEventListener('click', function() {
    	var email = '${user.email}';
    	  if (!email) {
    	        alert("로그인 후 신고할 수 있습니다.");
    	        return;  // 로그인되지 않으면 더 이상 진행하지 않음
    	    }else{
	        	reportModal.style.display = 'block';  // 모달을 열기
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