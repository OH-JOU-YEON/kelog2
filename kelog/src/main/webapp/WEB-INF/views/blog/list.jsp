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

</head>
<body class="page-has-left-panels page-has-right-panels">


	<div class="header--standard header--standard-landing"
		id="header--standard">
		<div class="container">
			<div class="header--standard-wrap">

				<a href="12-FavouritePage.html" class="logo"></a>
				<div class="img-wrap">
					<a href="#"><img loading="lazy"
						src="/resources/img/logokelog.png" width="140" height="34"
						alt="Olympus" class="logo-colored"></a>
				</div>
				<a href="#" class="open-responsive-menu js-open-responsive-menu">
					<svg class="olymp-menu-icon">
						<use xlink:href="#olymp-menu-icon"></use></svg>
				</a>

				<div class="nav nav-pills nav1 header-menu">
					<div class="mCustomScrollbar">
						<ul>
							<li class="nav-item dropdown"><a href="/travel/list"
								style="color: #000 !important;">여행 추천지</a></li>
							<li class="nav-item dropdown dropdown-has-megamenu"><a
								href="/blog/list" style="color: #000 !important;">블로그</a></li>
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
							<li class="login-set-item"><c:choose>
									<c:when test="${email == null}">
										<a href="/login/google/login.do" class="login-user"> <img
											src="/resources/img/login-user.png"
											style="width: 31px; height: 31px; filter: none;">
										</a>
									</c:when>

									<c:otherwise>
										<a href="#" class="login-user"> <img
											src="/resources/img/login-user.png" class="login-user-menu"
											style="filter: none;">
										</a>
										<ul class="login-drop-menu" style="display: none;">
											<c:choose>
												<c:when test="${user.role == 'user'}">
													<li><a href="/user/read?uno=${user.uno }">마이페이지</a></li>
												</c:when>
												<c:otherwise>
													<li><a
														href="/manager/01-ManagerPage-MyPage?uno=${user.uno }">마이페이지</a></li>
												</c:otherwise>
											</c:choose>
											<li><a href="03-Myblog.html">내 블로그</a></li>
											<li><a href="/login/google/revoke/token?token=${token}">로그아웃</a></li>
										</ul>
									</c:otherwise>
								</c:choose></li>
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
		<div>
			<label for="rowsPerPage">몇 줄씩 표시할지 선택</label> <select
				id="rowsPerPage" class="selectAmount">
				<option ${pageMaker.cri.amount == 9 ? "selected='selected'":''}
					value="9">9개</option>
				<option ${pageMaker.cri.amount == 15 ? "selected='selected'":''}
					value="15">15개</option>
				<option ${pageMaker.cri.amount == 30 ? "selected='selected'":''}
					value="30">30개</option>
			</select>
		</div>
	</div>

	<!-- ... end Main BlogV1 -->


	<section class="blog-post-wrap">
		<div class="container">
			<div class="row" id="fstvlList">
				<c:forEach var="vo" items="${list }">
				</c:forEach>
			</div>
			<button id="regBtn" type="button" class="btn btn-primary btn-md-2">글등록</button>

			<!-- Pagination -->
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<li class="page-item"><c:if test="${pageMaker.prev }">
							<li class="paginate_button previous" tabindex="0"><a
								href="${pageMaker.startPage - 1 }">Previous</a></li>
						</c:if> <c:forEach var="num" begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }">
							<li
								class="paginate_button ${pageMaker.cri.pageNum == num ? 'active':''}"
								tabindex="0"><a href="${num }">${num}</a></li>
						</c:forEach> <c:if test="${pageMaker.next }">
							<li class="paginate_button next" tabindex="0"><a
								href="${pageMaker.endPage + 1 }">next</a></li>
						</c:if>
						<form id="pageForm" action="/blog/list" method="get">
							<input type="hidden" name="pageNum"
								value="${pageMaker.cri.pageNum }"> <input type="hidden"
								name="amount" value="${pageMaker.cri.amount }">
						</form></li>
				</ul>
			</nav>
			<!-- ... end Pagination -->
		</div>
	</section>
</body>
<!-- 하단 푸터 -->
<footer class="py-4 mt-5">
	<div class="container text-center">
		<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
		<small>&copy; 2025. All rights reserved.</small>
	</div>
</footer>
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
<script type="text/javascript">

function loadTable() {
    $.ajax({
        url: "/blog/getList",
        type: "post",
        data: {
            pageNum: $("#pageForm").find("input[name='pageNum']").val(),
            amount: $("#pageForm").find("input[name='amount']").val()
        },
        dataType: "json",
        success: function(data) {
            var festivalList = $("#fstvlList"); // 이 부분은 실제 컨테이너 ID로 수정 필요
            festivalList.empty(); // 기존 리스트 비우기

            // row div 생성
            var rowDiv = $("<div>").addClass("row");
            
            $.each(data, function(index, bloglist) {
                let updateDate = new Date(bloglist.regDate);
                var options = {
                    year: "numeric",
                    month: "2-digit",
                    day: "2-digit",
                    hour: "2-digit",
                    minute: "2-digit",
                    second: "2-digit",
                    hour12: true // "a" (오전/오후) 포함
                };
                var formattedUpdateDate = updateDate.toLocaleString("ko-KR", options);

                // jQuery로 listItem 생성
                var listItem = $("<div>").addClass("col col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 post").append(
                    $("<div>").addClass("ui-block").append(
                        $("<article>").addClass("hentry blog-post").append(
                            $("<div>").addClass("post-thumb").append(
                                $("<img>").attr({
                                    "loading": "lazy",
                                    "src": "/resources/img/cafe1.jpg",
                                    "alt": "photo",
                                    "style": "height: 160px; object-fit: cover;"
                                })
                            ),
                            $("<div>").addClass("post-content").append(
                                $("<a>").attr("href", "/blog/read?blogPostNo=" + bloglist.blogPostNo)
                                        .addClass("h4 post-title")
                                        .text(bloglist.title),
                                $("<p>").text(bloglist.content),
                                $("<div>").addClass("info").append(
                                    $("<p>").text(bloglist.nickName),
                                    " ", // 공백 문자 (&#8195;)
                                    $("<p>").text(formattedUpdateDate)
                                )
                            )
                        )
                    )
                );

                rowDiv.append(listItem); // row에 각 포스트 추가
            });

            festivalList.append(rowDiv); // 완성된 row를 컨테이너에 추가
        },
        error: function(e) {
            console.log(e);
        }
    });
}


	$(document).ready(function() {
	    loadTable(); // 페이지 로드 시 초기 리스트 불러오기

	    $("#regBtn").on("click", function() {
	        self.location = "/blog/created";
	    });

	    // 페이지 번호 클릭 시
	    let pageForm = $("#pageForm");
	    $(".paginate_button a").on("click", function(e) {
	        e.preventDefault();
	        pageForm.find("input[name='pageNum']").val($(this).attr("href"));
	        pageForm.submit();
	        loadTable();
	    });

	    // "몇 줄씩 표시할지 선택" 변경 시
	    $(".selectAmount").on("change", function(e) {
	        $("#pageForm").find("input[name='pageNum']").val(1);
	        $("#pageForm").find("input[name='amount']").val(e.currentTarget.value);
	        pageForm.submit();
	        loadTable();
	    });

	    var result = '${result}';
	    checkModal(result);
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
	window.addEventListener('scroll', function () {
			const header = document.getElementById('header--standard');
			if (window.scrollY > 50) { // 50px 이상 스크롤 시
					header.classList.add('header--scrolled');
			} else { // 50px 미만이면
					header.classList.remove('header--scrolled');
			}
	});
	
</script>

</html>