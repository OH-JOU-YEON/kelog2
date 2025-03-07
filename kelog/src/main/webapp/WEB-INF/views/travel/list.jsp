<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Company Page Blog Grid</title>

<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Theme Font -->
<link rel="preload" type="text/css" href="css/theme-font.min.css"
	as="style">

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="Bootstrap/dist/css/bootstrap2.css">

<!-- Main Styles CSS -->
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/reset.css">

<!-- Main RTL CSS -->
<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->





</head>
<body>

	<div class="header--standard header--standard-landing"
		id="header--standard">
		<div class="container">
			<div class="header--standard-wrap">

				<a href="12-FavouritePage.html" class="logo"></a>
				<div class="img-wrap">
					<img loading="lazy" src="img/logo-colored-small.webp" width="34"
						height="34" alt="Olympus" class="logo-colored">
				</div>
				<div class="title-block">
					<h6 class="logo-title">로고 들어갈 자리</h6>

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
								class="menu-link"><img src="img/menu-bar.png"
									style="width: 26px; height: 26px; filter: none;"></a></li>
							<li class="lang-set-item"><a href="#" class="change-lang"
								id="language-toggle"> <img src="img/changeLang.png"
									style="width: 26px; height: 26px; filter: none;">
							</a> <!-- 언어 선택 탭 (기본적으로 숨겨짐) -->
								<ul id="language-tabs" class="language-tabs"
									style="display: none;">
									<li><a href="#" id="english">English</a></li>
									<li><a href="#" id="korean">한국어</a></li>
								</ul></li>
							<li class="login-set-item"><a href="#" class="login-user">
									<img src="img/login-user.png" class="login-user-menu"
									style="filter: none;">
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

	<header role="banner" class="header_black">
		<div class="inner">


			<nav role="navigation" class="sub_nav">
				<ul class="sub_menu">
					<li><a> 전체보기 </a></li>
					<li><a href="#"> 문화 </a></li>
					<li><a href="#"> 한류</a></li>

					<li><a href="#"> K-뷰티</a></li>
				</ul>
				<button class="main_search" aria-label="검색버튼"></button>














				<script src="/kfes/resources/js/lib/comm.js"></script>


				<div class="search_box">
					<form name="totalSearchForm" action="/kfes/list/totalSearchList.do"
						method="post" onsubmit="fn_totalSearch(event); return false;">
						<div class="search_detail_area">
							<div class="selectBox2 size2">

								<button class="label" type="button" tabindex="0">축제</button>
								<ul class="optionList">
									<li class="optionItem">
										<div class="searchType" name="ALL" tabindex="0">전체</div>
									</li>
									<li class="optionItem">
										<div class="searchType" name="A" tabindex="0">축제</div>
									</li>
									<li class="optionItem">
										<div class="searchType" name="B" tabindex="0">여행정보</div>
									</li>
									<li class="optionItem">
										<div class="searchType" name="C" tabindex="0">여행기사</div>
									</li>
									<li class="optionItem">
										<div class="searchType" name="D" tabindex="0">이벤트</div>
									</li>
								</ul>
							</div>
							<fieldset>
								<label class="blind2" for="totalSearchText">검색</label> <input
									id="totalSearchText" name="totalSearchText" class="search_line"
									title="검색" value="" placeholder="검색어를 입력해주세요." maxlength="40">
								<button type="button" aria-label="검색 버튼"
									onclick="fn_totalSearch(event);"></button>
							</fieldset>
						</div>
						<div class="search_list_area">
							<div class="last">
								<strong>최근 검색어</strong>
								<!--검색어 내역 없을 때 노출-->
								<p>최근 검색어 내역이 없습니다.</p>
								<ul style="display: none;">
									<!-- 비동기 처리 -->
								</ul>
							</div>
							<div class="popular">
								<strong>최근 인기 검색어</strong>
								<p>조회일 직전 7일간의 인기 검색어</p>
								<ul>
									<li><a href="javascript:;" onclick="searchKeyword('벚꽃');"><span
											class="num">1</span>벚꽃</a></li>
									<li><a href="javascript:;"
										onclick="searchKeyword('진해군항제');"><span class="num">2</span>진해군항제</a></li>
									<li><a href="javascript:;" onclick="searchKeyword('매화');"><span
											class="num">3</span>매화</a></li>
									<li><a href="javascript:;"
										onclick="searchKeyword('벚꽃축제');"><span class="num">4</span>벚꽃축제</a></li>
									<li><a href="javascript:;" onclick="searchKeyword('영광');"><span
											class="num">5</span>영광</a></li>
									<li><a href="javascript:;"
										onclick="searchKeyword('부산국제록페스티벌');"><span class="num">6</span>부산국제록페스티벌</a></li>
									<li><a href="javascript:;" onclick="searchKeyword('나주');"><span
											class="num">7</span>나주</a></li>
									<li><a href="javascript:;"
										onclick="searchKeyword('논산딸기축제');"><span class="num">8</span>논산딸기축제</a></li>
									<li><a href="javascript:;" onclick="searchKeyword('군항제');"><span
											class="num">9</span>군항제</a></li>
									<li><a href="javascript:;" onclick="searchKeyword('포항');"><span
											class="num">10</span>포항</a></li>
								</ul>
							</div>
						</div>
					</form>
					<button class="search_box_close" aria-label="닫기 버튼"></button>
				</div>


			</nav>
		</div>
	</header>
	<main role="main" id="mainTab">
		<div class="wrap">


			<!-- 비주얼 배너 -->
			<section class="visual_wrap" role="region">
				<div class="inner">
					<div class="blind">페스티벌 미리보기</div>
					<div class="pc_wrap">
						<ul>

							<li class="visual visual1" style="width: 16%;">
								<!-- class="active" 추가시 활성 --> <a
								href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=53ad5cbd-9241-4efa-8366-49c919001862&amp;cntntsNm=양평단월고로쇠축제"
								style="background-image: url('https://kfescdn.visitkorea.or.kr/kfes/upload/nationwide/2025/02/24/133155b6-9cc3-4163-95ca-305a635ea10c.jpg');"
								title="양평 단월 고로쇠축제">
									<div class="txt_area">
										<div class="tit_box">

											<strong>양평 단월 고로쇠축제</strong>
										</div>
										<div class="tit_desc">
											<span>2025.03.15 ~ 2025.03.16</span> <span class="area_name">경기도
												양평군</span> <span class="btn_more"></span>
										</div>
									</div>
							</a>
							</li>


							<li class="visual visual2" style="width: 16%;">
								<!-- class="active" 추가시 활성 --> <a
								href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=62bbfc61-0c83-4108-be6b-304cc3d471bc&amp;cntntsNm=별빛이흐르는정원"
								style="background-image: url('https://kfescdn.visitkorea.or.kr/kfes/upload/nationwide/2025/02/24/46e52bf3-30f1-4d64-8e64-e0733c46ba08.jpg');"
								title="별빛이 흐르는 정원">
									<div class="txt_area">
										<div class="tit_box">

											<span class="flag">개최중</span> <strong>별빛이 흐르는 정원</strong>
										</div>
										<div class="tit_desc">
											<span>2025.01.01 ~ 2025.12.31</span> <span class="area_name">경기도
												파주시</span> <span class="btn_more"></span>
										</div>
									</div>
							</a>
							</li>


							<li class="visual visual3 active" style="width: 64%;">
								<!-- class="active" 추가시 활성 --> <a
								href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=8ea8b269-9ddc-4bef-8b2b-9b592036a174&amp;cntntsNm=강화양오빙어축제"
								style="background-image: url('https://kfescdn.visitkorea.or.kr/kfes/upload/nationwide/2025/02/24/54901ff3-d845-4220-9fe0-3c7cd72dd8af.jpg');"
								title="강화 양오 빙어축제">
									<div class="txt_area">
										<div class="tit_box">

											<strong>강화 양오 빙어축제</strong>
										</div>
										<div class="tit_desc">
											<span>2024.12.21 ~ 2025.03.03</span> <span class="area_name">인천
												강화군</span> <span class="btn_more"></span>
										</div>
									</div>
							</a>
							</li>

						</ul>
					</div>
					<div class="mobile_wrap">
						<!-- swiper -->
						<div
							class="swiper-container mobile swiper-initialized swiper-horizontal swiper-pointer-events">
							<div class="swiper-wrapper" id="swiper-wrapper-c3dbad13a2bc49d0"
								aria-live="polite" style="transition-duration: 0ms;">

								<div class="swiper-slide visual1" role="group"
									aria-label="1 / 3">
									<a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=53ad5cbd-9241-4efa-8366-49c919001862&amp;cntntsNm=양평단월고로쇠축제"
										style="background: url(https://kfescdn.visitkorea.or.kr/kfes/upload/nationwide/2025/02/24/133155b6-9cc3-4163-95ca-305a635ea10c.jpg) no-repeat 27% 50%/cover;">
										<!-- 나머지 코드 -->
										<div class="txt_area">
											<div class="tit_box">

												<strong>양평 단월 고로쇠축제</strong>
											</div>
											<div class="tit_desc">
												<span>2025.03.15 ~ 2025.03.16</span> <span class="area_name">경기도
													양평군</span>
											</div>
										</div>
									</a>
								</div>


								<div class="swiper-slide visual2" role="group"
									aria-label="2 / 3">
									<a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=62bbfc61-0c83-4108-be6b-304cc3d471bc&amp;cntntsNm=별빛이흐르는정원"
										style="background: url(https://kfescdn.visitkorea.or.kr/kfes/upload/nationwide/2025/02/24/46e52bf3-30f1-4d64-8e64-e0733c46ba08.jpg) no-repeat 27% 50%/cover;">
										<div class="txt_area">
											<div class="tit_box">

												<span class="flag">개최중</span> <strong>별빛이 흐르는 정원</strong>
											</div>
											<div class="tit_desc">
												<span>2025.01.01 ~ 2025.12.31</span> <span class="area_name">경기도
													파주시</span>
											</div>
										</div>
									</a>
								</div>


								<div class="swiper-slide visual3" role="group"
									aria-label="3 / 3">
									<a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=8ea8b269-9ddc-4bef-8b2b-9b592036a174&amp;cntntsNm=강화양오빙어축제"
										style="background: url(https://kfescdn.visitkorea.or.kr/kfes/upload/nationwide/2025/02/24/54901ff3-d845-4220-9fe0-3c7cd72dd8af.jpg) no-repeat 27% 50%/cover;">
										<div class="txt_area">
											<div class="tit_box">

												<strong>강화 양오 빙어축제</strong>
											</div>
											<div class="tit_desc">
												<span>2024.12.21 ~ 2025.03.03</span> <span class="area_name">인천
													강화군</span>
											</div>
										</div>
									</a>
								</div>

							</div>
							<div
								class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets swiper-pagination-horizontal"></div>
							<span class="swiper-notification" aria-live="assertive"
								aria-atomic="true"></span>
						</div>

						<!--// swiper -->
					</div>
				</div>
			</section>
			<!--// 비주얼 배너 -->

			<!-- 축제 리스트 -->
			<section class="other_list type2" role="region">
				<div class="inner">
					<div class="other_festival" role="application">
						<div class="blind">페스티벌 검색 리스트</div>

						<div class="festival_ul_top" id="festival_ul_top" style="">
							<ul class="tab_area">

								<li id="tabFstvlList" class="active">
									<button title="선택됨">최신순</button>
								</li>

								<li id="tabFstvlLikeOrderList">
									<button>인기순</button>
								</li>
							</ul>
						</div>



						<div class="tab_cont_area">
							<!-- 먹거리 알리오 -->
							<div class="tab_cont " aria-expanded="" role="application">
								<p class="blind">먹거리순 리스트</p>
								<ul class="other_festival_ul" id="foodBoothOrderList"></ul>
							</div>
							<!--// 먹거리 알리오 -->
							<!-- 축제일순 -->
							<div class="tab_cont active" aria-expanded="true"
								role="application">
								<p class="blind">축제일순 리스트</p>
								<ul class="other_festival_ul" id="fstvlList">

									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=220371a8-ec85-46b7-8bb0-30afa9a93a19&amp;cntntsNm=구팔일댕댕이대잔치">
											<div class="other_festival_img  open">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_220371a8-ec85-46b7-8bb0-30afa9a93a19_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>구팔일 댕댕이 대잔치!</strong>
												<div class="date">2025.03.01~2025.12.31</div>
												<div class="loc">제주특별자치도 제주시</div>
											</div>
									</a></li>


									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=b5d4a45f-87d7-4701-aabc-4fd4d3201925&amp;cntntsNm=영월봄맞이축제">
											<div class="other_festival_img  open">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_b5d4a45f-87d7-4701-aabc-4fd4d3201925_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>영월 봄맞이 축제</strong>
												<div class="date">2025.03.01~2025.05.30</div>
												<div class="loc">강원특별자치도 영월군</div>
											</div>
									</a></li>


									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=4dc5a9e6-2914-4dac-93e6-5acbc3166d1e&amp;cntntsNm=원동면미나리축제">
											<div class="other_festival_img  open food">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_4dc5a9e6-2914-4dac-93e6-5acbc3166d1e_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="icon_alio"></div>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>원동면 미나리 축제</strong>
												<div class="date">2025.02.22~2025.03.21</div>
												<div class="loc">경상남도 양산시</div>
											</div>
									</a></li>

									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=8cbf22f5-fe99-4500-bab7-d5a27e49945b&amp;cntntsNm=휴애리유채꽃축제">
											<div class="other_festival_img  open">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_8cbf22f5-fe99-4500-bab7-d5a27e49945b_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>휴애리 유채꽃 축제</strong>
												<div class="date">2025.01.20~2025.04.13</div>
												<div class="loc">제주특별자치도 서귀포시</div>
											</div>
									</a></li>

									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=3252dcb7-7b01-4e9d-84c0-bccfd010bffb&amp;cntntsNm=청도프로방스빛축제">
											<div class="other_festival_img  open food">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_3252dcb7-7b01-4e9d-84c0-bccfd010bffb_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="icon_alio"></div>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>청도 프로방스 빛축제</strong>
												<div class="date">2025.01.11~2025.11.30</div>
												<div class="loc">경상북도 청도군</div>
											</div>
									</a></li>


									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=62bbfc61-0c83-4108-be6b-304cc3d471bc&amp;cntntsNm=별빛이흐르는정원">
											<div class="other_festival_img  open">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_62bbfc61-0c83-4108-be6b-304cc3d471bc_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>별빛이 흐르는 정원</strong>
												<div class="date">2025.01.01~2025.12.31</div>
												<div class="loc">경기도 파주시</div>
											</div>
									</a></li>


									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=7be130ae-d136-45d7-9a5c-de3af5691c16&amp;cntntsNm=태안빛축제">
											<div class="other_festival_img  open">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_7be130ae-d136-45d7-9a5c-de3af5691c16_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>태안 빛축제</strong>
												<div class="date">2025.01.01~2025.12.31</div>
												<div class="loc">충청남도 태안군</div>
											</div>
									</a></li>

									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=2d15f1d9-651f-4c70-b58a-ff8f4cddea33&amp;cntntsNm=강화길상빙어축제">
											<div class="other_festival_img  open food">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_2d15f1d9-651f-4c70-b58a-ff8f4cddea33_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="icon_alio"></div>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>강화 길상 빙어 축제</strong>
												<div class="date">2024.12.25~2025.03.28</div>
												<div class="loc">인천 강화군</div>
											</div>
									</a></li>


									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=b81f39d7-2438-40fe-8fdd-90a969fd113b&amp;cntntsNm=율봄식물원딸기시즌">
											<div class="other_festival_img  open food">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_b81f39d7-2438-40fe-8fdd-90a969fd113b_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="icon_alio"></div>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>율봄식물원 딸기 시즌</strong>
												<div class="date">2024.12.25~2025.04.13</div>
												<div class="loc">경기도 광주시</div>
											</div>
									</a></li>


									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=87307084-0f05-4476-942b-6b9605cacd2b&amp;cntntsNm=시흥패밀리빙어축제">
											<div class="other_festival_img  open food">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_87307084-0f05-4476-942b-6b9605cacd2b_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="icon_alio"></div>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>시흥 패밀리 빙어 축제</strong>
												<div class="date">2024.12.07~2025.04.30</div>
												<div class="loc">경기도 시흥시</div>
											</div>
									</a></li>

									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=55c4fcce-146a-453f-bb68-8d402ad01fc5&amp;cntntsNm=아침고요수목원오색별빛정원전">
											<div class="other_festival_img  open">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_55c4fcce-146a-453f-bb68-8d402ad01fc5_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>아침고요수목원 오색별빛정원전</strong>
												<div class="date">2024.12.06~2025.03.16</div>
												<div class="loc">경기도 가평군</div>
											</div>
									</a></li>


									<li><a
										href="/kfes/detail/fstvlDetail.do?fstvlCntntsId=67563897-aa70-424e-8816-55f322e020b2&amp;cntntsNm=청도프로방스크리스마스산타마을빛축제">
											<div class="other_festival_img  open">
												<img
													src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_67563897-aa70-424e-8816-55f322e020b2_1.jpg"
													alt=""
													onerror="this.src='/kfes/resources/img/default_list.png';">
												<span class="open">개최중</span>
												<div class="sing_area">
													<div class="blind">문화 관광 축제</div>
												</div>
											</div>
											<div class="other_festival_content">
												<strong>청도 프로방스 크리스마스 산타마을 빛축제 </strong>
												<div class="date">2024.11.01~2025.04.30</div>
												<div class="loc">경상북도 청도군</div>
											</div>
									</a></li>
								</ul>
							</div>
							<!--// 축제일순 -->
							<!-- 거리순 -->
							<div class="tab_cont" aria-expanded="false" role="application">
								<p class="blind">거리순 리스트</p>
								<ul class="other_festival_ul" id="distanceOrderList"></ul>
							</div>
							<!--// 거리순 -->
							<!-- 인기순 -->
							<div class="tab_cont" aria-expanded="false" role="application">
								<p class="blind">인기순 리스트</p>
								<ul class="other_festival_ul" id="fstvlLikeOrderList"></ul>
							</div>
							<!--// 인기순 -->


						</div>

					</div>
				</div>
			</section>
			<!--// 축제 리스트 -->

			<div class="loading">
				<div class="loading_start" aria-live="assertive" role="alert">
					<div class="blind">please wait while we gather your
						information, Loading...</div>
					<img src="/kfes/resources/img/loading.svg" alt="로딩 이미지">
				</div>
			</div>
		</div>

	</main>




	<!-- Pagination -->

	<nav aria-label="Page navigation">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled"><a class="page-link" href="#"
				tabindex="-1">Previous</a></li>
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
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</nav>

	<!-- ... end Pagination -->

	</section>

	<!-- 하단 푸터 -->
	<footer class="py-4 mt-5">
		<div class="container text-center">
			<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
			<small>&copy; 2025. All rights reserved.</small>
		</div>
	</footer>

	<script src="Bootstrap/dist/js/bootstrap.bundle.min.js"></script>



	<!-- JS Scripts -->
	<script src="js/jQuery/jquery-3.5.1.min.js"></script>

	<script src="js/libs/jquery.mousewheel.min.js"></script>
	<script src="js/libs/perfect-scrollbar.min.js"></script>
	<script src="js/libs/imagesloaded.pkgd.min.js"></script>
	<script src="js/libs/material.min.js"></script>
	<script src="js/libs/moment.min.js"></script>
	<script src="js/libs/daterangepicker.min.js"></script>
	<script src="js/libs/isotope.pkgd.min.js"></script>
	<script src="js/libs/ajax-pagination.min.js"></script>
	<script src="js/libs/jquery.magnific-popup.min.js"></script>

	<script src="js/main.js"></script>
	<script src="js/libs-init/libs-init.js"></script>

	<script src="Bootstrap/dist/js/bootstrap.bundle.min.js"></script>

	<!-- SVG icons loader -->
	<script src="js/svg-loader.js"></script>
	<!-- /SVG icons loader -->

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