<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<style>
    .btn-group {
        display: flex;
        border: 1px solid #ccc;
        border-radius: 2px;
        overflow: hidden;
        width: fit-content;
    }

    .btn-item {
        flex: 1;
        text-align: center;
        padding: 10px 15px;
        cursor: pointer;
        background: #fff;
        font-size: 12px;
        font-weight:bold;
        transition: background 0.3s, color 0.3s;
        color: #0f0f0f99;
        
    }
    
  

    /* 버튼 경계선 */
    .btn-item:not(:last-child) {
        border-right: 1px solid #ccc;
    }

    /* 호버 효과 */
    .btn-item:hover {
        background: #f0f0f0;
    }

 
    .selectAmount {
        font-size: 14px;
        padding: 10px 15px;
        width: auto;
    }
</style>

	

<head>

	<title>꿀팁 게시판</title>

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
	<!-- Main RTL CSS -->
	<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->

</head>
<body class="body-bg-white">


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

<!-- Stunning header -->

<div class="stunning-header bg-primary-opacity" style="height: 500px;">

	
	<!-- Header Standard Landing  -->
	
	<div class="header--standard header--standard-landing" id="header--standard">
	<div class="container">
		<div class="header--standard-wrap">

			<a href="12-FavouritePage.html" class="logo"></a>
				<div class="img-wrap">
					 <a href="#">
                        <img loading="lazy"
                             src="/resources/img/logokelog.png"
                             width="140" height="34"
                             alt="Logo" class="logo-colored">
                    </a>
				</div>
				
				
			<a href="#" class="open-responsive-menu js-open-responsive-menu">
				<svg class="olymp-menu-icon"><use xlink:href="#olymp-menu-icon"></use></svg>
			</a>

			<div class="nav nav-pills nav1 header-menu">
				 <div class="mCustomScrollbar">
          <ul>
						<li class="nav-item dropdown"><a
								href="/travel/list" style="color: #000 !important;">여행 추천지</a></li>
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
							</a>
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

	<div class="stunning-header-content" style="margin-top: 225px;">
		<h1 class="stunning-header-title">꿀팁 게시판</h1>
		<ul class="breadcrumbs">
			<li class="breadcrumbs-item active">
				<span>다양한 꿀팁들을 한번에!</span>
			</li>
		</ul>
	</div>

	<div class="content-bg-wrap stunning-header-bg1"></div>
</div>

<!-- End Stunning header -->

<div class="container">
  <div class="row justify-content-center" style="padding-bottom: 10px;">
    <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12 col-12">
    
      <div class="outer-border" style="max-width:1000px; margin: auto; position: relative;">
        <!-- 글쓰기 버튼 & rowsPerPage  -->
        <div class="btn-group" style="margin-top: 10px; float: right; white-space: nowrap; margin-bottom: 10px;">
          <a href="/tip/created" id="writeBtn" class="btn-item" style="flex: none; padding: 10px 25px;">글쓰기</a>
          <select id="rowsPerPage" class="btn-item selectAmount" style="border: none; background: white; cursor: pointer; flex: none; padding: 10px 15px; width: auto;">
            <option ${pageMaker.cri.amount == 5 ? "selected='selected'":''} value="5">5개</option>
            <option ${pageMaker.cri.amount == 10 ? "selected='selected'":''} value="10">10개</option>
            <option ${pageMaker.cri.amount == 15 ? "selected='selected'":''} value="15">15개</option>
            <option ${pageMaker.cri.amount == 20 ? "selected='selected'":''} value="20">20개</option>
          </select>
        </div>
        <hr style="margin-top: 10px; clear: both;">
        
        <div class="desktop-only table-responsive mx-auto" style="max-width:1000px;">
          <table class="honeyPost" style="width: 100%;">
            <thead>
              <tr>
                <th style="min-width: 50px;">번호</th>
                <th style="min-width: 80px;">제목</th>
                <th style="min-width: 150px;">내용</th>
                 <th style="min-width: 150px;">닉네임</th>
                <th style="min-width: 100px;">작성일자</th>
              </tr>
            </thead>
            <tbody id="honeyPostBody">
            
            </tbody>
          </table>
        </div>
        
      </div>
    </div>
  </div>
</div>



			<!-- Pagination -->
<nav aria-label="Page navigation">
    <ul class="pagination justify-content-center">
        <li class="page-item">
            <c:if test="${pageMaker.prev}">
                <li class="paginate_button previous" tabindex="0">
                    <a href="${pageMaker.startPage - 1}">Previous</a>
                </li>
            </c:if>
            <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                <li class="paginate_button ${pageMaker.cri.pageNum == num ? 'active':''}" tabindex="0">
                    <a href="${num}">${num}</a>
                </li>
            </c:forEach>
            <c:if test="${pageMaker.next}">
                <li class="paginate_button next" tabindex="0">
                    <a href="${pageMaker.endPage + 1}">next</a>
                </li>
            </c:if>
            <form id="pageForm" action="/tip/list" method="get">
                <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
            </form>
        </li>
    </ul>
</nav>
<!-- ... end Pagination -->
			
		</div>
	</div>
	<script type="text/javascript">
function checkModal(result) {
    if (result === '') {
        return;
    } else if (result === 'mod') {
        $(".modal-body").html("정상적으로 수정되었습니다.");
    } else if (result === 'del') {
        $(".modal-body").html("정상적으로 삭제되었습니다.");
    } else if (parseInt(result) > 0) {
        $(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다.");
    }
}
$("#regBtn").on("click", function() {
    self.location = "/tip/created";
});

// 글쓰기 버튼 클릭 시 로그인 체크
$("#writeBtn").on("click", function(e) {
    e.preventDefault(); // 기본 이동 방지
    var email = '${email}'; // JSP에서 가져온 email 값
    if (!email) {
        alert("로그인 후 글을 작성할 수 있습니다.");
        return;
    } else {
        self.location = "/tip/created"; // 로그인 상태면 글쓰기 페이지로
    }
});

function loadTable() {
    $.ajax({
        url: "/tip/getList",
        type: "post",
        data: {
            pageNum: $("#pageForm").find("input[name='pageNum']").val(),
            amount: $("#pageForm").find("input[name='amount']").val()
        },
        dataType: "json",
        success: function(data) {
            var boardTbody = $("table tbody");
            boardTbody.empty(); // 기존 테이블 데이터 비우기

            $.each(data, function(index, tiplist) {
                let updateDate = new Date(tiplist.regDate);
                var options = {
                    year: "numeric",
                    month: "2-digit",
                    day: "2-digit",
                    hour: "2-digit",
                    minute: "2-digit"
                };
                var formattedUpdateDate = updateDate.toLocaleString("ko-KR", options);

                var row = $("<tr>");
                row.append($("<td>").text(tiplist.tipBoardNo));
                var readLink = $("<a>").attr("href", "/tip/read?tipBoardNo=" + tiplist.tipBoardNo).text(tiplist.title);
                row.append($("<td>").append(readLink));

                // content 길이 제한 (예: 20자까지만 표시)
                var maxLength = 20; // 최대 길이 설정
                var shortContent = tiplist.content.length > maxLength 
                    ? tiplist.content.slice(0, maxLength) + "..." 
                    : tiplist.content;
                row.append($("<td>").html(shortContent));

                row.append($("<td>").text(tiplist.nickName));
                row.append($("<td>").text(formattedUpdateDate));
                boardTbody.append(row);
            });
        },
        error: function(e) {
            console.log(e);
        }
    });
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

    let pageForm = $("#pageForm");
    $(".paginate_button a").on("click", function(e) {
        e.preventDefault();
        pageForm.find("input[name='pageNum']").val($(this).attr("href"));
        pageForm.submit();
    });

    $(".selectAmount").on("change", function(e) {
        $("#pageForm").find("input[name='pageNum']").val(1);
        $("#pageForm").find("input[name='amount']").val(e.currentTarget.value);
        pageForm.submit();
    });
});
</script>

	<script>
document.getElementById('language-toggle').addEventListener('click', function(event) {
    event.preventDefault();
    const languageTabs = document.getElementById('language-tabs');
    
    // 로그인 드롭다운이 열려 있으면 닫기 (선택적)
    const dropdownMenu = document.querySelector('.login-drop-menu');
    if (dropdownMenu && dropdownMenu.style.display === 'block') {
        dropdownMenu.style.display = 'none';
    }

    // 언어 탭 토글 (email 체크 없이 항상 동작)
    if (languageTabs.style.display === 'block') {
        languageTabs.style.display = 'none';
    } else {
        languageTabs.style.display = 'block';
    }
});


function setLanguage(language) {
    const tabs = document.querySelectorAll('.language-tabs li a');
    tabs.forEach(tab => {
        tab.classList.remove('selected');
    });

    if (language === 'en') {
        document.getElementById('english').classList.add('selected');
    } else if (language === 'kr') {
        document.getElementById('korean').classList.add('selected');
    }
}

function loadLanguage(language) {
    const filePath = `path/to/lang/${language}.json`;
    fetch(filePath)
        .then(response => response.json())
        .then(data => {
            updatePageText(data);
        })
        .catch(error => console.error('Error loading language file:', error));

    document.getElementById('language-tabs').style.display = 'none';
}

function updatePageText(data) {
    document.querySelector('.logo-title').textContent = data.logoTitle;
    document.querySelector('.sub-title').textContent = data.subTitle;
    document.querySelector('.title').textContent = data.recommendedPosts;
    document.querySelector('.post-title').textContent = data.postTitle;
    document.querySelector('.post-content').textContent = data.postContent;
}

// 로그인 버튼과 드롭다운 메뉴 가져오기
const loginButton = document.querySelector('.login-user');
const loginDropdownMenu = document.querySelector('.login-drop-menu');
var email = '${email}'; // JSP에서 가져온 email 값

if (loginButton) {
    loginButton.addEventListener('click', function(event) {
        if (email) { // email이 있을 때만 드롭다운 토글
            event.preventDefault();
            const languageTabs = document.getElementById('language-tabs');
            if (languageTabs.style.display === 'block') {
                languageTabs.style.display = 'none';
            }
            const isMenuVisible = loginDropdownMenu.style.display === 'block';
            loginDropdownMenu.style.display = isMenuVisible ? 'none' : 'block';
        }
        // email이 null이면 기본 동작(href 이동)이 실행됨
    });
}

// 페이지 클릭 시 드롭다운 메뉴 숨기기 (email 체크 제거)
document.addEventListener('click', function(event) {
    const languageTabs = document.getElementById('language-tabs');
    const dropdownMenu = document.querySelector('.login-drop-menu');

    // 언어 탭 외부 클릭 시 닫기
    if (!document.querySelector('.change-lang').contains(event.target) && 
        !languageTabs.contains(event.target)) {
        languageTabs.style.display = 'none';
    }

    // 로그인 드롭다운 외부 클릭 시 닫기 (email이 있을 때만 적용)
    if (email && dropdownMenu && 
        !loginButton.contains(event.target) && 
        !dropdownMenu.contains(event.target)) {
        dropdownMenu.style.display = 'none';
    }
});
</script>

<script>
//모달 창과 관련된 요소 선택
const reportModal = document.getElementById('reportModal');
const closeModal = document.getElementById('closeModal');
const reportIcons = document.querySelectorAll('.reportIcon');  // class로 선택
const cancelBtn = document.getElementById('cancelBtn');  // 취소 버튼 추가

//각 reportIcon에 클릭 이벤트 추가

reportIcons.forEach(reportIcon => {
reportIcon.addEventListener('click', function() {
    var email = '${email}';
    
      if (!email) {
            alert("로그인 후 신고할 수 있습니다.");
            return;  // 로그인되지 않으면 더 이상 진행하지 않음
        }else {
        	if(JSON.parse('${isReport}') ==true) {
        		alert("이미 신고하신 게시글 입니다.");
        		return;            		
       	 	}else {
            	reportModal.style.display = 'block';  // 모달을 열기
       	 	}
        }
});
});

//모달 닫기 버튼 클릭 시 모달 닫기
closeModal.addEventListener('click', function() {
reportModal.style.display = 'none';
});

//취소 버튼 클릭 시 모달 닫기
cancelBtn.addEventListener('click', function() {
reportModal.style.display = 'none';  // 모달 닫기
});

//모달 바깥을 클릭하면 모달을 닫기
window.addEventListener('click', function(event) {
if (event.target === reportModal) {
    reportModal.style.display = 'none';
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