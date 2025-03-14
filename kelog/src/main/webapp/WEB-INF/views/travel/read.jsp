<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
  <link rel="stylesheet" type="text/css" href="/resources/Bootstrap/dist/css/bootstrap2.css">

  <!-- Main Styles CSS -->
  <link rel="stylesheet" type="text/css" href="/resources/css/main2.css">

  <script src="https://code.jquery.com/jquery-latest.min.js"></script>
  <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css">
  <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
  
</head>
<body class="landing-page">

  <!-- Preloader -->
  <div id="hellopreloader">
    <div class="preloader">
      <svg width="45" height="45" stroke="#fff">
        <g fill="none" fill-rule="evenodd" stroke-width="2" transform="translate(1 1)">
          <circle cx="22" cy="22" r="6" stroke="none">
            <animate attributeName="r" begin="1.5s" calcMode="linear" dur="3s"
                     repeatCount="indefinite" values="6;22" />
            <animate attributeName="stroke-opacity" begin="1.5s" calcMode="linear" dur="3s"
                     repeatCount="indefinite" values="1;0" />
            <animate attributeName="stroke-width" begin="1.5s" calcMode="linear" dur="3s"
                     repeatCount="indefinite" values="2;0" />
          </circle>
          <circle cx="22" cy="22" r="6" stroke="none">
            <animate attributeName="r" begin="3s" calcMode="linear" dur="3s"
                     repeatCount="indefinite" values="6;22" />
            <animate attributeName="stroke-opacity" begin="3s" calcMode="linear" dur="3s"
                     repeatCount="indefinite" values="1;0" />
            <animate attributeName="stroke-width" begin="3s" calcMode="linear" dur="3s"
                     repeatCount="indefinite" values="2;0" />
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

  <!-- Header Standard Landing -->
  <div class="header--standard header--standard-landing" id="header--standard">
    <div class="container">
      <div class="header--standard-wrap">
        <a href="12-FavouritePage.html" class="logo"></a>
        <div class="img-wrap">
					<a href="#"><img loading="lazy"
						src="/resources/img/logokelog.png" width="140" height="34"
						alt="Olympus" class="logo-colored"></a>
				</div>
        <div class="title-block">
         
        </div>
        <a href="#" class="open-responsive-menu js-open-responsive-menu">
          <svg class="olymp-menu-icon">
            <use xlink:href="#olymp-menu-icon"></use>
          </svg>
        </a>
        <div class="nav nav-pills nav1 header-menu">
          <div class="mCustomScrollbar">
          <ul>
						<li class="nav-item dropdown"><a
								href="/travel/list" style="color: #000 !important;">여행
									추천지</a></li>
							<li class="nav-item dropdown dropdown-has-megamenu"><a
								href="/blog/list" style="color: #000 !important;">블로그</a>
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
									<li><a href="/travel_en/list" id="english">English</a></li>
									<li><a href="/travel/list" id="korean">한국어</a></li>
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
							            <li><a href="/user/read?uno=${user.uno }" >마이페이지</a></li>
							            	</c:when>
							            	<c:otherwise>
							            	<li><a href="/manager/01-ManagerPage-MyPage?uno=${user.uno }" >마이페이지</a></li>
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
  <!-- ... end Header Standard Landing -->
  <div class="header-spacer--standard"></div>

  <!-- 추천 장소 이름 (가운데 정렬) -->
  <div class="container mt-4">
    <div class="row">
      <div class="col-12 text-center">
        <h2 class="fw-bold mb-0" style="padding-bottom: 20px;"> ${dto.title}</h2>
      </div>
    </div>
  </div>

  <!-- 구분선 -->
  <hr class="mb-4">

  <!-- 메인 영역 -->
  <div class="container">
    <div class="row justify-content-center">
     
      <div class="col-12 col-lg-8 position-relative">

        <!-- 목록-->
        <a href="/travel/list"
           class="text-decoration-none d-flex align-items-center"
           style="position: absolute; right: 20px; top: 0;">
           <img src="/resources/img/list-icon.png" alt="목록 아이콘" style="width: 20px; height: 20px; margin-right: 5px;">
           목록
        </a>

        <div class="ui-block p-4">
          <article class="hentry post post-standard-details">
            <div class="row">
              <input class="form-control" type="hidden" name="travelBoardNo" value="${dto.travelBoardNo}">
              <div class="col-md-4 mb-3"></div>
              <div class="col-md-8">
                <div id="editor" style="display: none;">${dto.content}</div>
              </div>
              <div id="viewer"></div>
            </div>
            <!-- 태그 (중앙) -->
            <div class="my-3 text-center">
              <h6 class="fw-bold mb-0 text-left">${dto.tag}</h6>
            </div>
            <!-- 좋아요/싫어요 및 수정 버튼 (같은 행에서 좌우 배치) -->
            <div class="d-flex justify-content-between align-items-center">
              <!-- 왼쪽: 수정 버튼 (작성자와 로그인 사용자가 일치할 때) -->
              <div class="text-start">
                <c:if test="${dto.email == user.email}">
                  <a href="/travel/modify?travelBoardNo=${dto.travelBoardNo}" class="text-decoration-none">수정</a>
                </c:if>
              </div>
              <!-- 오른쪽: 좋아요/싫어요 버튼 -->
              <div class="text-end d-flex align-items-center" style="padding-top: 30px;">
                <p id="likeCount" class="mb-0 me-2">좋아요: ${dto.likeCnt}</p>
                <button id="likeButton${dto.travelBoardNo}" onclick="toggleLike(${dto.travelBoardNo})" style="border: none; background: none; cursor: pointer;">
                  <img src="/resources/img/${isliked ? 'like-filled.png' : 'like-ep.png'}" alt="좋아요" style="width: 24px; height: 24px;">
                </button>
                <p id="unlikeCnt" class="mb-0 ms-3 me-2">싫어요: ${dto.dislikeCnt}</p>
                <button id="unlikeButton${dto.travelBoardNo}" onclick="toggleunLike(${dto.travelBoardNo})" style="border: none; background: none; cursor: pointer;">
                  <img src="/resources/img/${isunliked ? 'unlike-filled.png' : 'unlike-ep.png'}" alt="싫어요" style="width: 24px; height: 24px;">
                </button>
              </div>
            </div>
          </article>
        </div>
        <!-- .ui-block -->
      </div>
      <!-- col-8 -->
    </div>
    <!-- row -->
  </div>
  <!-- container -->

  <!-- 하단 푸터 -->
  <footer class="py-4 mt-5">
    <div class="container text-center">
      <p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
      <small>&copy; 2025. All rights reserved.</small>
    </div>
  </footer>

  <!-- 스크립트들 -->
  <script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>
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
  <script src="/resources/js/svg-loader.js"></script>

  <!-- 언어 전환 및 기타 스크립트들 -->
  <script>
    // 언어 전환, 로그인 드롭다운, 스크롤 이벤트 등 기존 스크립트 유지
    document.getElementById('language-toggle').addEventListener('click', function(event) {
      event.preventDefault();
      const languageTabs = document.getElementById('language-tabs');
      const dropdownMenu = document.querySelector('.login-drop-menu');
      if (dropdownMenu.style.display === 'block') {
        dropdownMenu.style.display = 'none';
      }
      languageTabs.style.display = (languageTabs.style.display === 'block') ? 'none' : 'block';
    });

    // 로그인 버튼 드롭다운
    const loginButton = document.querySelector('.login-user');
    const loginDropdownMenu = document.querySelector('.login-drop-menu');
    loginButton.addEventListener('click', function(event) {
      event.preventDefault();
      const languageTabs = document.getElementById('language-tabs');
      if (languageTabs.style.display === 'block') {
        languageTabs.style.display = 'none';
      }
      const isMenuVisible = loginDropdownMenu.style.display === 'block';
      loginDropdownMenu.style.display = isMenuVisible ? 'none' : 'block';
    });
    document.addEventListener('click', function(event) {
      if (!loginButton.contains(event.target) && !loginDropdownMenu.contains(event.target)) {
        loginDropdownMenu.style.display = 'none';
      }
      const languageTabs = document.getElementById('language-tabs');
      if (!document.querySelector('.change-lang').contains(event.target) && !languageTabs.contains(event.target)) {
        languageTabs.style.display = 'none';
      }
    });

    // 스크롤 이벤트 (헤더 배경 변화 등)
    window.addEventListener('scroll', function () {
      const header = document.getElementById('header--standard');
      if (window.scrollY > 50) {
        header.classList.add('header--scrolled');
      } else {
        header.classList.remove('header--scrolled');
      }
    });
  </script>

  <!-- Toast UI Editor -->
  <script>
    $(function(){
      ToView();
    });
    const content = [].join('\n');
    const editor = new toastui.Editor({
      el: document.querySelector('#editor'),
    });
    const viewer = toastui.Editor.factory({
      el: document.querySelector('#viewer'),
      viewer: true,
      height: '500px',
      initialEditType : 'wysiwyg',
      initialValue: content
    });
    function ToView(){
      viewer.setMarkdown(editor.getHTML());
    };
  </script>

  <!-- 좋아요 / 싫어요 -->
  <script>
    function toggleLike(travelBoardNo) {
      var email = '${user.email}';
      if (!email) {
        alert("로그인 후 좋아요를 누를 수 있습니다.");
        return;
      }
      $.ajax({
        url: '/travel/like',
        type: 'POST',
        data: { travelBoardNo: travelBoardNo },
        success: function() {
          var currentLikeCount = parseInt($('#likeCount').text().replace('좋아요: ', ''));
          let likeButton = document.getElementById("likeButton" + travelBoardNo);
          let likeImg = likeButton.querySelector('img');
          if (likeImg.src.includes('like-ep.png')) {
            likeImg.src = '/resources/img/like-filled.png';
            currentLikeCount += 1;
          } else {
            likeImg.src = '/resources/img/like-ep.png';
            currentLikeCount -= 1;
          }
          $('#likeCount').html('좋아요: ' + currentLikeCount);
        }
      });
    }
    function toggleunLike(travelBoardNo) {
      var email = '${user.email}';
      if (!email) {
        alert("로그인 후 싫어요를 누를 수 있습니다.");
        return;
      }
      $.ajax({
        url: '/travel/unlike',
        type: 'POST',
        data: { travelBoardNo: travelBoardNo },
        success: function() {
          var currentUnLikeCount = parseInt($('#unlikeCnt').text().replace('싫어요: ', ''));
          let unlikeButton = document.getElementById("unlikeButton" + travelBoardNo);
          let unlikeImg = unlikeButton.querySelector('img');
          if (unlikeImg.src.includes('unlike-ep.png')) {
            unlikeImg.src = '/resources/img/unlike-filled.png';
            currentUnLikeCount += 1;
          } else {
            unlikeImg.src = '/resources/img/unlike-ep.png';
            currentUnLikeCount -= 1;
          }
          $('#unlikeCnt').html('싫어요: ' + currentUnLikeCount);
        }
      });
    }
  </script>

</body>
</html>