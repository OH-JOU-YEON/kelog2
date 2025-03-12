<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>

<title>Landing Page</title>
<style type="text/css">
#container{width:500px}
.sns_join a.google{border-color:#eb6155}
.sns_join a{display:block;margin-top:10px;width:100%;height:50px;border:1px solid #000;font-size:15px;line-height:50px;text-align:center;background:#fff}
.sns_join a.google>.icon{background:url(https://cdn.jsdelivr.net/gh/braverokmc79/ouath2-img@v1.0.0/images/icon_google.png) no-repeat 0 0;background-size:18px auto}
.sns_join a>.icon{display:inline-block;margin:0 auto;padding-left:29px;width:188px;color:#666;font-size:15px;letter-spacing:-1px;line-height:20px;text-align:left}
</style>
<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Theme Font -->
<link rel="preload" type="text/css"
	href="/resources/css/theme-font.min.css" as="style">

<!-- Bootstrap CSS -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/Bootstrap/dist/css/bootstrap.css">

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
		<div class="row display-flex"
			style="justify-content: center; display: flex; align-items: center;">
			<div class="col col-xl-5 col-lg-6 col-md-12 col-sm-12 col-12">

				<!-- Login-Registration Form  -->

				<div class="registration-login-form">
					<!-- Tab panes -->
					<div class="tab-content" id="registration-form-tabs-content">
						<div class="tab-pane fade show active">
							<div class="title h6">로그인</div>
							<div class="row"
								style="justify-content: center; display: flex; flex-direction: column; align-items: center;">
								<!-- 아이디 입력 -->
								<div class="col col-12 col-xl-6 col-lg-6 col-md-6 col-sm-12">
									<div class="sns_join">
										<a class="google" href="${urlGoogle}" id="googleLoginBtn">
											<span class="icon">구글 로그인</span>
										</a>
									</div>
								</div>

							</div>
						</div>
					</div>


					<!-- ... end Login-Registration Form  -->


					<!-- Window-popup Restore Password -->

					<div class="modal fade" id="restore-password" tabindex="-1"
						role="dialog" aria-labelledby="restore-password"
						aria-hidden="true">
						<div class="modal-dialog window-popup restore-password-popup"
							role="document">
							<div class="modal-content">
								<a href="#" class="close icon-close" data-bs-dismiss="modal"
									aria-label="Close"> <svg class="olymp-close-icon">
										<use xlink:href="#olymp-close-icon"></use></svg>
								</a>

								<div class="modal-header">
									<h6 class="title">Restore your Password</h6>
								</div>

								<div class="modal-body">
									<form method="get">
										<p>Enter your email and click the send code button. You’ll
											receive a code in your email. Please use that code below to
											change the old password for a new one.</p>
										<div class="form-group label-floating">
											<label class="control-label">Your Email</label> <input
												class="form-control" placeholder="" type="email"
												value="james-spiegel@yourmail.com">
										</div>
										<button class="btn btn-purple btn-lg full-width">Send
											me the Code</button>
										<div class="form-group label-floating">
											<label class="control-label">Enter the Code</label> <input
												class="form-control" placeholder="" type="text" value="">
										</div>
										<div class="form-group label-floating">
											<label class="control-label">Your New Password</label> <input
												class="form-control" placeholder="" type="password"
												value="olympus">
										</div>
										<button class="btn btn-primary btn-lg full-width">Change
											your Password!</button>
									</form>

								</div>
							</div>
						</div>
					</div>

					<!-- ... end Window-popup Restore Password -->


					<!-- Window Popup Main Search -->

					<div class="modal fade" id="main-popup-search" tabindex="-1"
						role="dialog" aria-labelledby="main-popup-search"
						aria-hidden="true">
						<div
							class="modal-dialog modal-dialog-centered window-popup main-popup-search"
							role="document">
							<div class="modal-content">
								<a href="#" class="close icon-close" data-bs-dismiss="modal"
									aria-label="Close"> <svg class="olymp-close-icon">
										<use xlink:href="#olymp-close-icon"></use></svg>
								</a>
								<div class="modal-body">
									<form class="form-inline search-form" method="post">
										<div class="form-group label-floating">
											<label class="control-label">What are you looking
												for?</label> <input class="form-control bg-white" placeholder=""
												type="text" value="">
										</div>

										<button class="btn btn-purple btn-lg">Search</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
    const onClickGoogleLogin = (e) => {
        window.location.replace('${src}')
    }
    const googleLoginBtn = document.getElementById("googleLoginBtn");
    googleLoginBtn.addEventListener("click", onClickGoogleLogin) 
</script>
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