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
						<li class="nav-item">
							<a href="00-MainPage.html">메인 페이지</a>
						</li>
						<li class="nav-item dropdown">
							<a href="02-RecommendPost.html">여행 추천지</a>
						</li>
						<li class="nav-item dropdown dropdown-has-megamenu">
							<a href="97-BlogPostBoard.html">블로그 게시판</a>
						</li>
						<li class="nav-item">
							<a href="03-Myblog.html">내 블로그</a>
						</li>
						<li class="nav-item">
							<a href="55-HoneyTipBoard.html">꿀팁 게시판</a>
						</li>
						<li class="nav-item">
							<a href="#">전국 날씨예보</a>
						</li>
						<li class="close-responsive-menu js-close-responsive-menu">
							<svg class="olymp-close-icon"><use xlink:href="#olymp-close-icon"></use></svg>
						</li>
						<li class="nav-item js-expanded-menu">
							<a href="#" class="menu-link"><img src="/resources/img/menu-bar.png" style="width: 26px; height: 26px;"></a>
						</li>
						<li class="lang-set-item">
							<a href="#" class="change-lang"><img src="/resources/img/changeLang.png" style="width: 26px; height: 26px;"></a>
						</li>
						<li class="login-set-item">
							<a href="01-LoginPage.html" class="login-user"><img src="/resources/img/login-user.png" class="login-user-menu"style="width: 26px; height: 26px;"></a>
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
								<div class="row" style="justify-content: center;">
									<div class="col col-lg-6 col-md-6 col-sm-12 col-12" >
										<div class="admin-container">
											<div class="tabs" style="display: flex; justify-content: flex-end; gap: 10px;">
													<a href="01-ManagerPage-MyPage.html" class="btn btn-primary btn-md-2" id="tab-mypage">마이페이지</a>
													<a href="01-ManagerPage.html" class="btn btn-primary btn-md-2" id="tab-user">회원관리</a>
													<a href="01-ManagerPage-Post.html" class="btn btn-primary btn-md-2" id="tab-cpost">게시물 관리</a>
													<a href="01-ManagerPage-Reply.html" class="btn btn-primary btn-md-2" id="tab-reply">댓글 관리</a>
													<a href="01-ManagerPage-CreatePost.html" class="btn btn-primary btn-md-2" id="tab-createpost">글쓰기</a>
											</div>
									</div>
									<form>
									<div class="tab-content" id="my-infomation">
										<div class="tab-pane fade show active">
											<div class="title h6">마이페이지</div>
											<div>
												<img src="/resources/img/user.png" style="width: 500px; display: block; margin: 0 auto;">
											</div>
											<form class="content">
												<div class="row" style="justify-content: center; display: flex; flex-direction: column; align-items: center;">
													<!-- 아이디 입력 -->
													<div class="col col-12 col-xl-6 col-lg-6 col-md-6 col-sm-12">
														<div class="form-group label-floating">
															<div style="display: flex; align-items: center; justify-content: space-between; white-space: nowrap; gap: 10px;">
																<p>사용자 이메일<h3>alkema0000@naver.com</h3></p>
																<button class="btn btn-primary btn-md-2" type="submit">수정</button>
															</div>
															
														</div>
													</div>
									
													<!-- 비밀번호 입력 -->
													<div class="col col-12 col-xl-6 col-lg-6 col-md-6 col-sm-12">
														<div class="form-group label-floating">
															<div style="display: flex; align-items: center; justify-content: space-between; white-space: nowrap;">
																<p>사용자 닉네임<h3>nsxno123</h3></p>
																<button class="btn btn-primary btn-md-2" type="submit">수정</button>
															</div>
													</div>
									
													<!-- 로그인 버튼 -->
													<div class="col col-12 col-xl-6 col-lg-6 col-md-6 col-sm-12" style="display: flex; align-items: center; justify-content: space-between; white-space: nowrap; gap: 40px;">
														<button class="btn btn-purple btn-lg full-width" type="submit">로그인</button>
														<button class="btn btn-purple btn-lg full-width" type="reset">취소</button>
													</div>
												</div>
												</div>
											</form>
										</div>
									</div>
								</form>
									</div>
									</div>
							</form>    
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
<footer>
	<p>쉿 아무말도하지마 나의 작은 아가고냥이</p>
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