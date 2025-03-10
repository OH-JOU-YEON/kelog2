<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>블로그 포스팅</title>

<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Theme Font -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<link rel="preload" type="text/css"
	href="/resources/css/theme-font.min.css" as="style">

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/Bootstrap/dist/css/bootstrap.css">

<!-- Main Styles CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">

<!-- Main RTL CSS -->
<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->

</head>
<body class="page-has-left-panels page-has-right-panels">

	<!-- 신고하기 모달 -->

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
	<div id="mymodal" class="modal" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">상태창</h5>
					<button type="button" class="close" data-bs-dismiss="modal"
						aria-label="Close">
						<span>&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>Modal body text goes here.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" 
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- ... end Fixed Sidebar Left -->

	<!-- Responsive Header-BP -->

	<header class="header header-responsive" id="site-header-responsive">

		<div class="header-content-wrapper">
			<ul class="nav nav-tabs mobile-notification-tabs"
				id="mobile-notification-tabs" role="tablist">
				<li class="nav-item" role="presentation"><a class="nav-link"
					id="request-tab" data-bs-toggle="tab" href="#request" role="tab"
					aria-controls="request" aria-selected="false">
						<div class="control-icon has-items">
							<svg class="olymp-happy-face-icon">
							<use xlink:href="#olymp-happy-face-icon"></use>
						</svg>
							<div class="label-avatar bg-blue">6</div>
						</div>
				</a></li>

				<li class="nav-item" role="presentation"><a class="nav-link"
					id="chat-tab" data-bs-toggle="tab" href="#chat" role="tab"
					aria-controls="chat" aria-selected="false">
						<div class="control-icon has-items">
							<svg class="olymp-chat---messages-icon">
							<use xlink:href="#olymp-chat---messages-icon"></use>
						</svg>
							<div class="label-avatar bg-purple">2</div>
						</div>
				</a></li>

				<li class="nav-item" role="presentation"><a class="nav-link"
					id="notification-tab" data-bs-toggle="tab" href="#notification"
					role="tab" aria-controls="notification" aria-selected="false">
						<div class="control-icon has-items">
							<svg class="olymp-thunder-icon">
							<use xlink:href="#olymp-thunder-icon"></use>
						</svg>
							<div class="label-avatar bg-primary">8</div>
						</div>
				</a></li>

				<li class="nav-item" role="presentation"><a class="nav-link"
					id="search-tab" data-bs-toggle="tab" href="#search" role="tab"
					aria-controls="search" aria-selected="false"> <svg
							class="olymp-magnifying-glass-icon">
						<use xlink:href="#olymp-magnifying-glass-icon"></use>
					</svg> <svg class="olymp-close-icon">
						<use xlink:href="#olymp-close-icon"></use>
					</svg>
				</a></li>
			</ul>
		</div>

		<!-- Tab panes -->
		<div class="tab-content tab-content-responsive">

			<div class="tab-pane fade" id="request" role="tabpanel"
				aria-labelledby="request-tab">

				<div class="mCustomScrollbar" data-mcs-theme="dark">
					<div class="ui-block-title ui-block-title-small">
						<h6 class="title">FRIEND REQUESTS</h6>
						<a href="#">Find Friends</a> <a href="#">Settings</a>
					</div>
					<ul class="notification-list friend-requests">
						<li>
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar55-sm.webp"
									alt="author" width="34" height="34">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Tamara Romanoff</a> <span
									class="chat-message-item">Mutual Friend: Sarah Hetfield</span>
							</div> <span class="notification-icon"> <a href="#"
								class="accept-request"> <span class="icon-add without-text">
										<svg class="olymp-happy-face-icon">
											<use xlink:href="#olymp-happy-face-icon"></use></svg>
								</span>
							</a> <a href="#" class="accept-request request-del"> <span
									class="icon-minus"> <svg class="olymp-happy-face-icon">
											<use xlink:href="#olymp-happy-face-icon"></use></svg>
								</span>
							</a>

						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
							</div>
						</li>
						<li>
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar56-sm.webp"
									alt="author" width="34" height="34">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Tony Stevens</a> <span
									class="chat-message-item">4 Friends in Common</span>
							</div> <span class="notification-icon"> <a href="#"
								class="accept-request"> <span class="icon-add without-text">
										<svg class="olymp-happy-face-icon">
											<use xlink:href="#olymp-happy-face-icon"></use></svg>
								</span>
							</a> <a href="#" class="accept-request request-del"> <span
									class="icon-minus"> <svg class="olymp-happy-face-icon">
											<use xlink:href="#olymp-happy-face-icon"></use></svg>
								</span>
							</a>

						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
							</div>
						</li>
						<li class="accepted">
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar57-sm.webp"
									alt="author" width="34" height="34">
							</div>
							<div class="notification-event">
								You and <a href="#" class="h6 notification-friend">Mary Jane
									Stark</a> just became friends. Write on <a href="#"
									class="notification-link">her wall</a>.
							</div> <span class="notification-icon"> <svg
									class="olymp-happy-face-icon">
									<use xlink:href="#olymp-happy-face-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
								<svg class="olymp-little-delete">
								<use xlink:href="#olymp-little-delete"></use>
							</svg>
							</div>
						</li>
						<li>
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar58-sm.webp"
									alt="author" width="34" height="34">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Stagg Clothing</a> <span
									class="chat-message-item">9 Friends in Common</span>
							</div> <span class="notification-icon"> <a href="#"
								class="accept-request"> <span class="icon-add without-text">
										<svg class="olymp-happy-face-icon">
											<use xlink:href="#olymp-happy-face-icon"></use></svg>
								</span>
							</a> <a href="#" class="accept-request request-del"> <span
									class="icon-minus"> <svg class="olymp-happy-face-icon">
											<use xlink:href="#olymp-happy-face-icon"></use></svg>
								</span>
							</a>

						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
							</div>
						</li>
					</ul>
					<a href="#" class="view-all bg-blue">Check all your Events</a>
				</div>

			</div>

			<div class="tab-pane fade" id="chat" role="tabpanel"
				aria-labelledby="chat-tab">

				<div class="mCustomScrollbar" data-mcs-theme="dark">
					<div class="ui-block-title ui-block-title-small">
						<h6 class="title">Chat / Messages</h6>
						<a href="#">Mark all as read</a> <a href="#">Settings</a>
					</div>

					<ul class="notification-list chat-message">
						<li class="message-unread">
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar59-sm.webp"
									alt="author" width="34" height="34">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Diana Jameson</a> <span
									class="chat-message-item">Hi James! It’s Diana, I just
									wanted to let you know that we have to reschedule...</span> <span
									class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">4
										hours ago</time></span>
							</div> <span class="notification-icon"> <svg
									class="olymp-chat---messages-icon">
									<use xlink:href="#olymp-chat---messages-icon"></use></svg>
						</span>
							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
							</div>
						</li>

						<li>
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar60-sm.webp"
									alt="author" width="34" height="34">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Jake Parker</a> <span
									class="chat-message-item">Great, I’ll see you tomorrow!.</span>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">4
										hours ago</time></span>
							</div> <span class="notification-icon"> <svg
									class="olymp-chat---messages-icon">
									<use xlink:href="#olymp-chat---messages-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
							</div>
						</li>
						<li>
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar61-sm.webp"
									alt="author" width="34" height="34">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Elaine Dreyfuss</a> <span
									class="chat-message-item">We’ll have to check that at
									the office and see if the client is on board with...</span> <span
									class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">Yesterday
										at 9:56pm</time></span>
							</div> <span class="notification-icon"> <svg
									class="olymp-chat---messages-icon">
									<use xlink:href="#olymp-chat---messages-icon"></use></svg>
						</span>
							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
							</div>
						</li>

						<li class="chat-group">
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar11-sm.webp"
									alt="author" width="16" height="16"> <img loading="lazy"
									src="/resources/img/avatar12-sm.webp" alt="author" width="16"
									height="16"> <img loading="lazy"
									src="/resources/img/avatar13-sm.webp" alt="author" width="16"
									height="16"> <img loading="lazy"
									src="/resources/img/avatar10-sm.webp" alt="author" width="36"
									height="36">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">You, Faye, Ed
									&amp; Jet +3</a> <span class="last-message-author">Ed:</span> <span
									class="chat-message-item">Yeah! Seems fine by me!</span> <span
									class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">March
										16th at 10:23am</time></span>
							</div> <span class="notification-icon"> <svg
									class="olymp-chat---messages-icon">
									<use xlink:href="#olymp-chat---messages-icon"></use></svg>
						</span>
							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
							</div>
						</li>
					</ul>

					<a href="#" class="view-all bg-purple">View All Messages</a>
				</div>

			</div>

			<div class="tab-pane fade" id="notification" role="tabpanel"
				aria-labelledby="notification-tab">

				<div class="mCustomScrollbar" data-mcs-theme="dark">
					<div class="ui-block-title ui-block-title-small">
						<h6 class="title">Notifications</h6>
						<a href="#">Mark all as read</a> <a href="#">Settings</a>
					</div>

					<ul class="notification-list">
						<li>
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar62-sm.webp"
									width="34" height="34" alt="author">
							</div>
							<div class="notification-event">
								<div>
									<a href="#" class="h6 notification-friend">Mathilda Brinker</a>
									commented on your new <a href="#" class="notification-link">profile
										status</a>.
								</div>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">4
										hours ago</time></span>
							</div> <span class="notification-icon"> <svg
									class="olymp-comments-post-icon">
									<use xlink:href="#olymp-comments-post-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
								<svg class="olymp-little-delete">
								<use xlink:href="#olymp-little-delete"></use>
							</svg>
							</div>
						</li>

						<li class="un-read">
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar63-sm.webp"
									alt="author" width="34" height="34">
							</div>
							<div class="notification-event">
								<div>
									You and <a href="#" class="h6 notification-friend">Nicholas
										Grissom</a> just became friends. Write on <a href="#"
										class="notification-link">his wall</a>.
								</div>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">9
										hours ago</time></span>
							</div> <span class="notification-icon"> <svg
									class="olymp-happy-face-icon">
									<use xlink:href="#olymp-happy-face-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
								<svg class="olymp-little-delete">
								<use xlink:href="#olymp-little-delete"></use>
							</svg>
							</div>
						</li>

						<li class="with-comment-photo-wrap">
							<div class="with-comment-photo">
								<div class="author-thumb">
									<img loading="lazy" src="/resources/img/avatar64-sm.webp"
										width="34" height="34" alt="author">
								</div>
								<div class="notification-event">
									<div>
										<a href="#" class="h6 notification-friend">Sarah Hetfield</a>
										commented on your <a href="#" class="notification-link">photo</a>.
									</div>
									<span class="notification-date"><time
											class="entry-date updated" datetime="2004-07-24T18:18">Yesterday
											at 5:32am</time></span>
								</div>
								<span class="notification-icon"> <svg
										class="olymp-comments-post-icon">
										<use xlink:href="#olymp-comments-post-icon"></use></svg>
								</span>
							</div>
							<div class="comment-photo">
								<img loading="lazy" src="/resources/img/comment-photo1.webp"
									alt="photo" width="40" height="40"> <span>“She
									looks incredible in that outfit! We should see each...”</span>
							</div>
							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
								<svg class="olymp-little-delete">
								<use xlink:href="#olymp-little-delete"></use>
							</svg>
							</div>
						</li>

						<li>
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar65-sm.webp"
									alt="author" width="34" height="34">
							</div>
							<div class="notification-event">
								<div>
									<a href="#" class="h6 notification-friend">Green Goo Rock</a>
									invited you to attend to his event Goo in <a href="#"
										class="notification-link">Gotham Bar</a>.
								</div>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">March
										5th at 6:43pm</time></span>
							</div> <span class="notification-icon"> <svg
									class="olymp-happy-face-icon">
									<use xlink:href="#olymp-happy-face-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
								<svg class="olymp-little-delete">
								<use xlink:href="#olymp-little-delete"></use>
							</svg>
							</div>
						</li>

						<li>
							<div class="author-thumb">
								<img loading="lazy" src="/resources/img/avatar66-sm.webp"
									alt="author" width="34" height="34">
							</div>
							<div class="notification-event">
								<div>
									<a href="#" class="h6 notification-friend">James Summers</a>
									commented on your new <a href="#" class="notification-link">profile
										status</a>.
								</div>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">March
										2nd at 8:29pm</time></span>
							</div> <span class="notification-icon"> <svg
									class="olymp-heart-icon">
									<use xlink:href="#olymp-heart-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
								<use xlink:href="#olymp-three-dots-icon"></use>
							</svg>
								<svg class="olymp-little-delete">
								<use xlink:href="#olymp-little-delete"></use>
							</svg>
							</div>
						</li>
					</ul>

					<a href="#" class="view-all bg-primary">View All Notifications</a>
				</div>

			</div>

			<div class="tab-pane fade" id="search" role="tabpanel"
				aria-labelledby="search-tab">

				<form class="search-bar w-search notification-list friend-requests">
					<div class="form-group with-button">
						<input class="form-control js-user-search"
							placeholder="Search here people or pages..." type="text">
					</div>
				</form>

			</div>

		</div>
		<!-- ... end  Tab panes -->

	</header>

	<!-- ... end Responsive Header-BP -->



	<!-- Main Header BlogV1 -->

	<div class="main-header" style="height: 700px;">
		<img loading="lazy" src="/resources/img/BlogPostMain.jpg" alt="author"
			style="width: 100%; height: 700px; object-fit: cover;">
		<div class="content-bg-wrap bg-account"></div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col col-lg-8 m-auto col-md-8 col-sm-12 col-12">
				<div class="main-header-content"
					style="position: absolute; top: 450px; left: 50%; transform: translateX(-50%); color: white;">
					<h1>블로그 둘러보기</h1>
					<p>설명 들어갈 장소</p>
				</div>
			</div>
		</div>
	</div>

	<div
		style="margin: 25px 25px 0 25px; background-color: #fff; display: flex; justify-content: end; position: relative;">
		<form class="w-search" onsubmit="performSearch(event)">
			<div class="form-group with-button is-empty">
				<input id="search-input" class="form-control" type="text"
					placeholder="검색..."> <a
					style="position: absolute; right: 10px; top: 57%; transform: translateY(-50%); cursor: pointer;"
					onclick="performSearch(event)"> <img
					src="/resources/img/Search-icon.png" alt="#"
					style="width: 18px; height: 18px;">
				</a> <span class="material-input"></span>
			</div>
		</form>
	</div>

	<!-- ... end Main BlogV1 -->


	<section class="blog-post-wrap">
		<div class="container">
			<div class="row">
				<c:forEach var="vo" items="${list }">
					<div class="col col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 post">
						<div class="ui-block">
							<!-- Post -->

							<article class="hentry blog-post">

								<div class="post-thumb">
									<img loading="lazy" src="/resources/img/cafe1.jpg" alt="photo"
										width="370" height="261"
										style="height: 421.33px; object-fit: cover;">
								</div>

								<div class="post-content">
									<a href="/blog/read?blogPostNo=${vo.blogPostNo }" class="h4 post-title">${vo.title }</a>
									<p>${vo.content }</p>
									<div class="info">
										<p>${vo.nickName}</p>&emsp;
										<p><fmt:formatDate pattern="yyyy-MM-dd a hh:mm:ss" 	value="${vo.regDate }" /></p>
									</div>
								</div>

							</article>

							<!-- ... end Post -->
						</div>
					</div>
				</c:forEach>
			</div>					
			<button id="regBtn" type="button" class="btn btn-primary btn-md-2">글등록</button>

			<!-- Pagination -->

			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled"><a class="page-link" href="#"
						tabindex="-1">이전</a></li>
					<li class="page-item"><a class="page-link" href="#">1
							<div class="ripple-container">
								<div class="ripple ripple-on ripple-out"
									style="left: -10.3833px; top: -16.8333px; background-color: rgb(255, 255, 255); transform: scale(16.7857);"></div>
							</div>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">...</a></li>
					<li class="page-item"><a class="page-link" href="#">12</a></li>
					<li class="page-item"><a class="page-link" href="#">다음</a></li>
				</ul>
			</nav>
		
			<!-- ... end Pagination -->
		</div>
	</section>

	<!-- JS Scripts -->
	<script src="/resources/js/jQuery/jquery-3.5.1.min.js"></script>

	<script src="/resources/js/libs/jquery.mousewheel.min.js"></script>
	<script src="/resources/js/libs/perfect-scrollbar.min.js"></script>
	<script src="/resources/js/libs/imagesloaded.pkgd.min.js"></script>
	<script src="/resources/js/libs/material.min.js"></script>
	<script src="/resources/js/libs/selectize.min.js"></script>
	<script src="/resources/js/libs/swiper.jquery.min.js"></script>
	<script src="/resources/js/libs/isotope.pkgd.min.js"></script>
	<script src="/resources/js/libs/ajax-pagination.min.js"></script>
	<script src="/resources/js/libs/jquery.magnific-popup.min.js"></script>

	<script src="/resources/js/main.js"></script>
	<script src="/resources/js/libs-init/libs-init.js"></script>

	<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>

	<!-- SVG icons loader -->
	<script src="/resources/js/svg-loader.js"></script>
	<!-- /SVG icons loader -->


	<!-- 검색창 기능 -->
	<script>
	function performSearch(event) {
		
		event.preventDefault();
		
		const searchQuery = document.getElementById('search-input').value;
		
		if (searchQuery) {
			console.log("Searching for:", searchQuery);
			alert("검색어: " + searchQuery);
		} else {
			alert("검색어를 입력하세요.");
		}
	}
</script>
<script type="text/javascript">

	function checkModal(result) {
		if (result === '') {
			return;
			
		}else if(result === 'mod'){
			
			$(".modal-body").html("정상적으로 수정되었습니다.")
			
		}else if(result === 'del'){
			
			$(".modal-body").html("정상적으로 삭제되었습니다.")
			
		}else if (parseInt(result) > 0) {
			
			$(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다.")
		}
		$("#mymodal").modal("show");
	}
	
	$(document).ready(function() {
		var email = '${user.email}';
	
			$("#regBtn").on("click", function() {
				if(!email){
					alert("로그인 후 글 등록할 수 있습니다.");
		   	        return; 
				}else{
					self.location = "/blog/created";
				}
			});
			
		

		$(".close, .btn-secondary").on("click", function() {
			$("#mymodal").modal("hide");
		});

		var result = '${result}';
		checkModal(result);

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
        reportModal.style.display = 'block';  // 모달을 열기
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

// 신고 폼 제출시
document.getElementById('reportForm').onsubmit = function(event) {
    event.preventDefault();
    
    const checkedReasons = [];
    const checkboxes = document.querySelectorAll('input[name="reportReason"]:checked');
    checkboxes.forEach(function(checkbox) {
        checkedReasons.push(checkbox.value);
    });

    const details = event.target.details.value;

    if (checkedReasons.length > 0 || details.trim() !== '') {
        alert('신고 되었습니다');
        // 신고를 서버로 전송하는 코드 추가 할 자리
        reportModal.style.display = 'none';  // 신고 후 모달창 닫음
    } else {
        alert('신고 사유를 선택 또는 상세 내용을 입력해주세요.');
    }
}

	</script>

	<!-- 모달 끝 -->

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