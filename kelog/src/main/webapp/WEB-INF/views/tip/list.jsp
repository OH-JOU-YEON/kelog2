<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>꿀팁 게시판</title>

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




		<div class="row">
			<div class="col col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12 m-auto">
				<div class="search-container" style="display: flex; justify-content: flex-end; align-items: center; gap: 1em;">
					<div style="display: flex; align-items: center;">
						<input type="text" id="searchInput" placeholder="검색..." onkeyup="filterTable()" style="width: 250px;">
					</div>
					
					<div style="margin-bottom: 25px; width: 250px;">
						<label for="rowsPerPage">몇 줄씩 표시할지 선택</label>
						<select id="rowsPerPage" class="selectAmount">
							<option ${pageMaker.cri.amount == 5 ? "selected='selected'":''}
							value="5">5개</option>
						<option ${pageMaker.cri.amount == 10 ? "selected='selected'":''}
							value="10">10개</option>
						<option ${pageMaker.cri.amount == 15 ? "selected='selected'":''}
							value="15">15개</option>
						<option ${pageMaker.cri.amount == 20 ? "selected='selected'":''}
							value="20">20개</option>
						</select>
					</div>
				</div>
				
		

				<table class="honeyPost">
					<thead>
					<tr>
						<th>TipBoardNo</th>
						<th>TITLE</th>
						<th>CONTENT</th>
						<th>NICKNAME</th>
						<th>REGDATE</th>
					</tr>
					</thead>
					<tbody>
					
					</tbody>
			</table>
			<div style="margin-top: 1em; float: right;">
				<a href="/tip/created" class="btn btn-primary" style="background-color: #9edbff; border-color: #9eb3ff;">글쓰기</a>
			</div>
			<div class="pull-right">
				<ul class="pagination">
					<c:if test="${pageMaker.prev }">
						<li class="paginate_button previous" tabindex="0"><a
							href="${pageMaker.startPage - 1 }">Previous</a></li>
					</c:if>
					<c:forEach var="num" begin="${pageMaker.startPage }"
						end="${pageMaker.endPage }">
						<li
							class="paginate_button  ${pageMaker.cri.pageNum == num ? 'active':''}"
							tabindex="0"><a href="${num }">${num}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next }">
						<li class="paginate_button next" tabindex="0"><a
							href="${pageMaker.endPage + 1 }">next</a></li>
					</c:if>
				</ul>
			</div>
			<form id="pageForm" action="/tip/list" method="get">
				<input type="hidden" name="pageNum"
					value="${pageMaker.cri.pageNum }"> <input type="hidden"
					name="amount" value="${pageMaker.cri.amount }">
			</form>
			
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
var email = '${email}'; // JSP에서 가져온 email 값

loginButton.addEventListener('click', function(event) {
if (email) { // email이 있을 때만 드롭다운 토글
    event.preventDefault(); // 로그인 상태일 때만 기본 동작 방지
    const languageTabs = document.getElementById('language-tabs');
    if (languageTabs.style.display === 'block') {
        languageTabs.style.display = 'none';
    }
    const isMenuVisible = loginDropdownMenu.style.display === 'block';
    loginDropdownMenu.style.display = isMenuVisible ? 'none' : 'block';
}
// email이 null이면 기본 동작(href 이동)이 실행됨
});
	
// 페이지 클릭 시 드롭다운 메뉴 숨기기 (드롭다운 외부 클릭 시)
document.addEventListener('click', function(event) {
	if(email != null){	
	// 클릭한 곳이 로그인 버튼이나 드롭다운 메뉴가 아니면 드롭다운 숨기기
		if (!loginButton.contains(event.target) && !loginDropdownMenu.contains(event.target)) {
				loginDropdownMenu.style.display = 'none';
		}

		// 클릭한 곳이 언어 버튼이나 드롭다운 메뉴가 아니면 언어 드롭다운 메뉴 숨기기
		const languageTabs = document.getElementById('language-tabs');
		if (!document.querySelector('.change-lang').contains(event.target) && !languageTabs.contains(event.target)) {
				languageTabs.style.display = 'none';
		}
}
});
</script>
<!-- 신고 모달창부분 -->

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









<!-- Section Call To Action Animation -->


<!-- ... end Section Call To Action Animation -->

<!-- Window-popup Restore Password -->

<!-- ... end Window-popup Restore Password -->




<!-- Footer Full Width -->


<!-- ... end Footer Full Width -->



<!-- Window-popup-CHAT for responsive min-width: 768px -->


<!-- ... end Window-popup-CHAT for responsive min-width: 768px -->







<!-- Edit My Poll Popup -->



<!-- ... end Edit My Poll Popup -->

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
<script src="/resources/js/libs/aos.min.js"></script>

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