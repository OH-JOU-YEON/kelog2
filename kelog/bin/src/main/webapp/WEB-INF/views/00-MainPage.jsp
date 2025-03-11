
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>Favourite Page</title>

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
<body class="page-has-left-panels page-has-right-panels">


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
							<a href="01-LoginPage.html" class="login-user"><img src="/resources/img/login-user.png" class="login-user-menu" style="width: 26px; height: 26px;"></a>
						</li>
						</ul>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- Responsive Header-BP -->

<header class="header header-responsive" id="site-header-responsive">

	<div class="header-content-wrapper">
		
	</div>

	<!-- Tab panes -->
	
		

		<div class="tab-pane fade" id="notification" role="tabpanel" aria-labelledby="notification-tab">

			<div class="mCustomScrollbar" data-mcs-theme="dark">
				<div class="ui-block-title ui-block-title-small">
					<h6 class="title">Notifications</h6>
					<a href="#">Mark all as read</a>
					<a href="#">Settings</a>
				</div>

				<ul class="notification-list">
					<li>
					
					</li>

					<li class="un-read">
						
					</li>

					<li class="with-comment-photo-wrap">
						
					</li>

					<li>
						
					</li>

					<li>
					
					</li>
				</ul>

				<a href="#" class="view-all bg-primary">View All Notifications</a>
			</div>

		</div>

	<!-- ... end  Tab panes -->

</header>

<!-- ... end Responsive Header-BP -->
<div class="header-spacer"></div>


<div class="container">
	<div class="row">
		<div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
			<div class="ui-block">
				<div class="top-header top-header-favorit">
					<div class="top-header-thumb">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="container">
	<div class="row">
		<div class="col col-xl-12 order-xl-2 col-lg-12 order-lg-1 col-sm-12 col-12">
			<div id="newsfeed-items-grid">
				<div class="ui-block">
					<div class="ui-block-title">
						<h6 class="title">추천 게시글</h6>
							<a href="#" class="more"><svg class="olymp-three-dots-icon"><use xlink:href="#olymp-three-dots-icon"></use></svg></a>
						</div>

				
				<!-- W-Twitter -->
				
				<ul class="widget w-twitter">
					<li class="twitter-item">
						<div class="author-folder">
							<img loading="lazy" src="/resources/img/twitter-avatar.webp" alt="avatar" width="40" height="40">
							<div class="author">
								<a href="#" class="author-name">게시글 제목</a>
								<a href="#" class="group">작성자 닉네임</a>
								<span class="verified">
									<svg width="5" height="5"><use xlink:href="#olymp-check-icon-small"></use></svg>
								</span>
							</div>
						</div>
						<p>미리보기 내용 들어갈 자리<a href="#" class="link-post">#NewsoftheGoo</a></p>
						<span class="post__date">
											<time class="published" datetime="2017-03-24T18:18">
												4 hours ago
											</time>
										</span>
					</li>
					<li class="twitter-item">
						<div class="author-folder">
							<img loading="lazy" src="/resources/img/twitter-avatar.webp" alt="avatar" width="40" height="40">
							<div class="author">
								<a href="#" class="author-name">게시글 제목</a>
								<a href="#" class="group">작성자 닉네임</a>
								<span class="verified"><svg width="5" height="5"><use xlink:href="#olymp-check-icon-small"></use></svg></span>
							</div>
						</div>
						<p>미리보기 내용 들어갈 자리<a href="#" class="link-post">www.ggrock.com</a></p>
						<span class="post__date">
											<time class="published" datetime="2017-03-24T18:18">
												Yesterday
											</time>
										</span>
					</li>
					<li class="twitter-item">
						<div class="author-folder">
							<img loading="lazy" src="/resources/img/twitter-avatar.webp" alt="avatar" width="40" height="40">
							<div class="author">
								<a href="#" class="author-name">게시글 제목</a>
								<a href="#" class="group">작성자 닉네임</a>
								<span class="verified"><svg width="5" height="5"><use xlink:href="#olymp-check-icon-small"></use></svg></span>
							</div>
						</div>
						<p>미리보기 내용 들어갈 자리<a href="#" class="link-post">#GGinRome #PisaArena </a></p>
						<span class="post__date">
											<time class="published" datetime="2017-03-24T18:18">
												5 days ago
											</time>
										</span>
					</li>
				</ul>
				
	</div>
		</div>
			</div>
			</div>

			<div class="ui-block features-video">
				<div class="video-player">
					<img loading="lazy" src="/resources/img/video9.webp" alt="photo" width="912" height="570">
					<a href="https://youtube.com/watch?v=excVFQ2TWig" class="play-video">
						<svg class="olymp-play-icon"><use xlink:href="#olymp-play-icon"></use></svg>
					</a>

					<div class="video-content">
						<div class="h4 title">Rock Garden Festival - Day 3</div>
						<time class="published" datetime="2017-03-24T18:18">12:06</time>
					</div>
					
					<div class="overlay"></div>
				</div>

				
			
				<div class="features-video-content">
			
					<div class="blog-post-tip">
						<div><h4>추천 블로그</h4></div>
						<hr>
						<li class="twitter-item">
							<div class="author-folder">
								<img loading="lazy" src="#" alt="avatar" width="40" height="40">
								<div class="author">
									<h2><a href="#" class="author-name">블로그 이름</a></h2>
								</div>
							</div>
							<p>미리보기 내용 들어갈 자리<a href="#" class="link-post">#아무거나 </a><a href="#" class="link-post">#아무거나 </a><a href="#" class="link-post">#아무거나 </a></p>
							<span class="post__date">
												<time class="published" datetime="2017-03-24T18:18">
													4 hours ago
												</time>
											</span>
						</li>
					</div>
					<article class="hentry post">
						<div>
							<a href="#" class="link-post">#아무거나 </a><a href="#" class="link-post">#아무거나 </a><a href="#" class="link-post">#아무거나 </a>

						</div>

						<div class="post-additional-info inline-items">
							<p>추천 해시태그 들어갈 자리</p>
						</div>
			
					</article>
			
					<div class="mCustomScrollbar ps ps--theme_default ps--active-y" data-mcs-theme="dark" data-ps-id="5309ba1d-019d-d8f1-e734-05d0139f233b">
			
						
			
					<div class="ps__scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps__scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__scrollbar-y-rail" style="top: 0px; height: 110px; right: 0px;"><div class="ps__scrollbar-y" tabindex="0" style="top: 0px; height: 31px;"></div></div></div>
			
					<div class="comment-form inline-items">
			
						<div class="post__author author vcard inline-items">
							<img loading="lazy" src="/resources/img/avatar73-sm.webp" alt="author" width="28" height="28">
							
							<div class="form-group with-icon-right is-empty">
								<input class="form-control" type="text" placeholder="해시태그 검색">
								<div class="add-options-message">
									<a href="#" class="options-message" data-bs-toggle="modal" data-bs-target="#update-header-photo">
										<button style="border-radius: 5px; border-color: #c2c5d9;">
											<svg class="olymp-magnifying-glass-icon"><use xlink:href="#olymp-magnifying-glass-icon"></use></svg>
										</button>
									</a>
								</div>
							<span class="material-input"></span></div>
						</div>
						</div>
					</div>
				</div>
			</div>
<!-- Window-popup-CHAT for responsive min-width: 768px -->

<script type="text/javascript">
		function checkModal(result) {
			if (result === '') {
				return;

			} else if (result === 'mod') {

				$(".modal-body").html("정상적으로 수정되었습니다.")

			} else if (result === 'del') {

				$(".modal-body").html("정상적으로 삭제되었습니다.")

			} else if (parseInt(result) > 0) {

				$(".modal-body")
						.html("게시글 " + parseInt(result) + "번이 등록되었습니다.")
			}
			$("#mymodal").modal("show");
		}
		function loadTable() {
			$.ajax({
				url : "/tip/getList",
				type : "post",
				data : {
					pageNum : $("#pageForm").find("input[name='pageNum']")
							.val(),
					amount : $("#pageForm").find("input[name='amount']").val()

				},
				dataType : "json",
				success : function(data) {
					var boardTbody = $("table tbody");
					boardTbody.empty();// 기존에 쓰여있는 테이블 데이터 비우기

					$.each(data,
							function(index, tiplist) {
								let updateDate = new Date(tiplist.regDate)
								// numeric : 연도를 숫자,2-digit : 두자리 숫자 형식 표시
								var options = {
									year : "numeric",
									month : "2-digit",
									day : "2-digit",
									hour : "2-digit",
									minute : "2-digit"
								};
								var formattedUpdateDate = updateDate
										.toLocaleString("ko-KR", options);

								var row = $("<tr>");
								row.append($("<td>").text(tiplist.tipBoardNo));
								row.append($("<td>").text(tiplist.title));

								var readLink = $("<a>").attr("href",
										"/tip/read?tipBoardNo=" + tiplist.tipBoardNo).html(
												tiplist.content);

								row.append($("<td>").append(readLink));
								row.append($("<td>").text(tiplist.nickName));
								row.append($("<td>").text(formattedUpdateDate));
								boardTbody.append(row);
							});

				},
				error : function(e) {
					console.log(e)
				}

			})
		}
		$(document).ready(function() {
			loadTable();
			
			$("#regBtn").on("click", function() {
				self.location = "/tip/created";
			});

			$(".close, .btn-secondary").on("click", function() {
				$("#mymodal").modal("hide");
			});

			var result = '${result}';
			checkModal(result);
			$(".close, .btn-secondary").on("click", function() {
				$("#myModal").modal("hide");
			});
			// pageeNum, amount가 담겨있는 form 태그 찾기
			let pageForm = $("#pageForm");
			$(".paginate_button a").on("click", function(e){
				// 기존에 a태그가 가진 기능(이벤트) 지우기
				e.preventDefault();
				// pageNum 값을 클라인트가 클릭한 a태그의 href속성값으로 변경
				pageForm.find("input[name='pageNum']").val($(this).attr("href"));
				pageForm.submit();
			})
			var result = '${result}';
			checkModal(result);

			$("#selectAmount").on("change",function(e) {
				$("#pageForm").find("input[name='pageNum']").val(1); // 사용자의 페이지를 1페이지로 
					$("#pageForm").find("input[name='amount']").val(e.currentTarget.value);
				pageForm.submit();
							});
			
		});
	</script>

<!-- ... end Window-popup-CHAT for responsive min-width: 768px -->


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

<footer>
	<p>쉿 아무말도하지마 나의 작은 아가고냥이</p>
</footer>
</body>

</html>