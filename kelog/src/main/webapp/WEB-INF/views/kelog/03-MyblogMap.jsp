<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Profile + Calendar + Form + 옆에 탭버튼</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="Bootstrap/dist/css/bootstrap.css">
  <!-- main.css (CalendarAndEvents + ProfilePage 스타일) -->
  <link rel="stylesheet" href="css/main.css">

  <!-- 달력에 필요한 라이브러리 (moment, fullcalendar 등) -->
  <script src="js/libs/moment.min.js"></script>
  <script src="js/libs/fullcalendar.min.js"></script>
  <script src="js/main.js"></script>

  <style>
    body {
      background-color: #edf2f6;
    }
    .banner {
      position: relative;
      margin-bottom: 2rem;
      overflow: hidden;
    }
    .banner img {
      width: 100%;
      max-height: 400px;
      object-fit: cover;
      display: block;
    }
    .main-container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 4rem;
    }

    .profile-column {
      padding-right: 2rem;
      border: 1px solid #ccc;
      border-radius: 5px;
      background-color: #fff;
      padding: 20px;
      margin-top: 25px;
    }
    .profile-card,
    .calendar-card {
      border: 1px solid #ccc;
      border-radius: 5px;
      background-color: #fff;
      margin-bottom: 3rem;
      margin-top: 1rem;
    }
    .profile-card .card-header,
    .calendar-card .card-header {
      padding: 10px 16px;
      border-bottom: 1px solid #ddd;
      font-weight: 600;
      background-color: #f2f2f2;
    }
    .profile-card .card-body,
    .calendar-card .card-body {
      padding: 16px;
    }

    .right-column {
      display: flex;
      align-items: flex-start;
      padding-left: 3rem;
      margin-top: 25px;
    }

    .tab-content-wrapper {
      flex: 1;
    }
    .tab-content {
      border: 1px solid #ccc;
      border-radius: 5px;
      background-color: #fff;
      padding: 30px 30px 68px 30px;
      position: relative;
      left: 20px;
    }

    .ui-tabs {
      list-style: none;
      margin: 0 0 0 1rem;
      padding: 0;
      display: flex;
      flex-direction: column;
      gap: 5px;
    }
    .ui-tabs li a {
      display: block;
      text-decoration: none;
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 10px 16px;
      background: #f2f2f2;
      transition: background 0.2s;
      color: #333;
      font-size: 14px;
      text-align: center;
    }
    .ui-tabs li a:hover {
      background: #e2e2e2;
    }
    .ui-tabs li.active a {
      background: #fff;
      font-weight: 600;
      border-right-color: #ccc;
    }

    .create-post-form .form-label {
      font-weight: 600;
    }

    @media (max-width: 991px) {
      .right-column {
        flex-direction: row;
        padding-left: 0;
        flex-wrap: nowrap;
      }
      .tab-content-wrapper {
        flex: 3;
        width: auto;
        min-width: 0;
      }
      .tab-content {
        padding: 15px;
        left: 0;
        width: 100%;
      }
      .ui-tabs {
        margin: 0 0 0 1rem;
        flex: 1;
        width: auto;
      }
      .ui-tabs li a {
        padding: 6px 10px;
        font-size: 11px;
      }
    }
  </style>
</head>

<body>
  <!-- 헤더 -->
  <div class="header--standard header--standard-landing" id="header--standard">
    <div class="container">
      <div class="header--standard-wrap">
        <a href="12-FavouritePage.html" class="logo"></a>
          <div class="img-wrap">
            <img loading="lazy" src="img/logo-colored-small.webp" width="34" height="34" alt="Olympus" class="logo-colored">
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
              <li class="nav-item"><a href="00-MainPage.html">메인 페이지</a></li>
              <li class="nav-item dropdown"><a href="02-RecommendPost.html">여행 추천지</a></li>
              <li class="nav-item dropdown dropdown-has-megamenu"><a href="97-BlogPostBoard.html">블로그 게시판</a></li>
              <li class="nav-item"><a href="03-Myblog.html">내 블로그</a></li>
              <li class="nav-item"><a href="55-HoneyTipBoard.html">꿀팁 게시판</a></li>
              <li class="nav-item"><a href="#">전국 날씨예보</a></li>
              <li class="close-responsive-menu js-close-responsive-menu">
                <svg class="olymp-close-icon"><use xlink:href="#olymp-close-icon"></use></svg>
              </li>
              <li class="nav-item js-expanded-menu">
                <a href="#" class="menu-link">
                  <img src="img/menu-bar.png" style="width: 26px; height: 26px;">
                </a>
              </li>
              <li class="lang-set-item">
                <a href="#" class="change-lang">
                  <img src="img/changeLang.png" style="width: 26px; height: 26px;">
                </a>
              </li>
              <li class="login-set-item">
                <a href="01-LoginPage.html" class="login-user">
                  <img src="img/login-user.png" class="login-user-menu">
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 배너 -->
  <section class="banner">
    <img src="img/mainBoard.jpg" alt="배너이미지">
  </section>

  <!-- 메인 컨테이너 -->
  <div class="main-container">
    <div class="row gx-5 align-items-start">
      <!-- 왼쪽: 프로필 + 달력 -->
      <div class="col-12 col-lg-3 mb-4 profile-column">
        <div class="profile-card">
          <div class="card-header">내 프로필</div>
          <div class="card-body text-center">
            <img src="img/author-page.webp" alt="profile" class="rounded-circle" 
                 style="width:80px; height:80px; object-fit:cover;">
            <h6 class="mt-2">닉네임(사용자 ID)</h6>
            <p class="text-muted">간단한 자기소개 텍스트...</p>
          </div>
        </div>
        <div class="calendar-card">
          <div class="card-header">달력</div>
          <div class="card-body">
            <div id="calendar"></div>
            <div class="events-list mt-3"></div>
          </div>
        </div>
      </div>

      <!-- 스프링 영역 -->
      <div class="col-auto d-none d-lg-block spiral-container"></div>

      <!-- 오른쪽: 글쓰기 폼 + 탭 메뉴 -->
      <div class="col-12 col-lg-9 mb-4 right-column">
        <div class="tab-content-wrapper">
          <div id="tab-map" class="tab-content" style="display:block;">
            <form class="create-post-form">
              <div class="mb-3">
                <label for="nickname" class="form-label">지도 나오는곳</label>
                
              </div>
             
              
              
            </form>
          </div>
          <div id="tab-plan" class="tab-content" style="display:none;">
            <p>달력 나오는곳</p>
          </div>
          <div id="tab-post" class="tab-content" style="display:none;">
            <p>게시글</p>
          </div>
        </div>

        <ul class="ui-tabs">
          <li ><a href="#" onclick="showTab(event, 'tab-post')">게시글</a></li>
          <li class="active"><a href="#" onclick="showTab(event, 'tab-map')">지도</a></li>
          <li ><a href="#" onclick="showTab(event, 'tab-plan')">일정계획</a></li>
        </ul>
      </div>
    </div>
  </div>

  <!-- 하단 푸터 -->
  <footer class="py-4 mt-5">
    <div class="container text-center">
      <p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
      <small>© 2025. All rights reserved.</small>
    </div>
  </footer>

  <!-- Bootstrap & jQuery -->
  <script src="Bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="js/jQuery/jquery-3.5.1.min.js"></script>
  <script src="js/libs/jquery.mousewheel.min.js"></script>
  <script src="js/libs/perfect-scrollbar.min.js"></script>
  <script src="js/libs/imagesloaded.pkgd.min.js"></script>
  <script src="js/libs/material.min.js"></script>
  <script src="js/libs/selectize.min.js"></script>
  <script src="js/libs/isotope.pkgd.min.js"></script>
  <script src="js/libs/ajax-pagination.min.js"></script>
  <script src="js/libs/jquery.magnific-popup.min.js"></script>
  <script src="js/main.js"></script>
  <script src="js/libs-init/libs-init.js"></script>
  <script src="js/svg-loader.js"></script>

  <script>
    window.addEventListener('scroll', function () {
      const header = document.getElementById('header--standard');
      if (window.scrollY > 50) {
        header.classList.add('header--scrolled');
      } else {
        header.classList.remove('header--scrolled');
      }
    });

    document.addEventListener("DOMContentLoaded", function () {
      var calendarEl = document.getElementById('calendar');
      if (calendarEl) {
        var calendar = new FullCalendar.Calendar(calendarEl, {
          plugins: [ 'dayGrid' ],
          defaultView: 'dayGridMonth',
          header: {
            left: 'prev',
            center: 'title',
            right: 'next'
          },
          events: [
            { title: '이벤트1', start: '2024-12-10' },
            { title: '이벤트2', start: '2024-12-25' }
          ]
        });
        calendar.render();
      }
    });

    function showTab(evt, tabId) {
      evt.preventDefault();
      const allContents = document.querySelectorAll('.tab-content');
      allContents.forEach(c => c.style.display = 'none');
      const allTabs = document.querySelectorAll('.ui-tabs li');
      allTabs.forEach(li => li.classList.remove('active'));
      document.getElementById(tabId).style.display = 'block';
      evt.currentTarget.parentNode.classList.add('active');
    }
  </script>
</body>
</html>