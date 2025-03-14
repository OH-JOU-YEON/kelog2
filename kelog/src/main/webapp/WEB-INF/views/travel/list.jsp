<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">
/* 이미지, 목록 기본 스타일 */
.other_festival_img {
    width: 100%;
    height: auto;
}
.other_festival_img img {
    display: block;
    width: 100%;
    height: auto;
}
.other_festival_content {
    width: 100%;
    padding: 10px;
    box-sizing: border-box;
}

/* 글쓰기 링크 스타일 */
.write-link {
    text-decoration: none;
    color: #333;
    margin-right: 5px;
    /* 버튼 모양을 원하시면:
    border: 1px solid #ccc;
    border-radius: 4px;
    padding: 6px 12px;
    */
}
.write-link:hover {
    text-decoration: underline;
}

/* 셀렉트 화살표 커스텀 */
.selectAmount {
    border: 1px solid #ccc;
    border-radius: 4px;
    padding: 5px 30px 5px 8px; /* 오른쪽 공간을 넉넉히 줘야 커스텀 화살표 안 겹침 */
    outline: none;
    background: url("/resources/img/arrow-down.png") no-repeat 95% 50% / 16px auto; 
    /* ↑ 사용하실 화살표 이미지를 이 경로로 넣으세요. 크기에 맞춰 조정 */
    appearance: none;          /* Firefox, Edge 등 */
    -webkit-appearance: none;  /* Chrome, Safari */
    background-color: #fff;    /* 셀렉트 배경 */
    cursor: pointer;
    width: auto; /* 너무 길어지지 않도록 auto */
}
</style>

<title>추천게시판</title>

<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css" href="/resources/Bootstrap/dist/css/bootstrap2.css">
<!-- Main Styles CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">

</head>
<body>

<!-- Header Standard Landing -->
<div class="header--standard header--standard-landing" id="header--standard">
    <div class="container">
        <div class="header--standard-wrap">
            <a href="12-FavouritePage.html" class="logo"></a>
            <div class="img-wrap">
                <a href="#">
                    <img loading="lazy"
                         src="/resources/img/logokelog.png" width="140" height="34"
                         alt="Logo" class="logo-colored">
                </a>
            </div>
            <div class="title-block"></div>
            <a href="#" class="open-responsive-menu js-open-responsive-menu">
                <svg class="olymp-menu-icon">
                    <use xlink:href="#olymp-menu-icon"></use>
                </svg>
            </a>
            <div class="nav nav-pills nav1 header-menu">
                <div class="mCustomScrollbar">
                    <ul>
                        <li class="nav-item dropdown">
                            <a href="/travel/list" style="color: #000 !important;">여행 추천지</a>
                        </li>
                        <li class="nav-item dropdown dropdown-has-megamenu">
                            <a href="/blog/list" style="color: #000 !important;">블로그</a>
                        </li>
                        <li class="nav-item">
                            <a href="/tip/list" style="color: #000 !important;">꿀팁 게시판</a>
                        </li>
                        <li class="nav-item">
                            <a href="#" style="color: #000 !important;">전국 날씨예보</a>
                        </li>
                        <li class="close-responsive-menu js-close-responsive-menu">
                            <svg class="olymp-close-icon">
                                <use xlink:href="#olymp-close-icon"></use>
                            </svg>
                        </li>
                        <li class="nav-item js-expanded-menu">
                            <a href="#" class="menu-link">
                                <img src="/resources/img/menu-bar.png"
                                     style="width: 26px; height: 26px; filter: none;">
                            </a>
                        </li>
                        <li class="lang-set-item">
                            <a href="#" class="change-lang" id="language-toggle">
                                <img src="/resources/img/changeLang.png"
                                     style="width: 26px; height: 26px; filter: none;">
                            </a>
                            <ul id="language-tabs" class="language-tabs" style="display: none;">
                                <li><a href="/travel_en/list" id="english">English</a></li>
                                <li><a href="/travel/list" id="korean">한국어</a></li>
                            </ul>
                        </li>
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
                                                <li><a href="/user/read?uno=${user.uno}">마이페이지</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li><a href="/manager/01-ManagerPage-MyPage?uno=${user.uno}">마이페이지</a></li>
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
<script src="/resources/js/lib/comm.js"></script>

<main role="main" id="mainTab">
    <div class="wrap">
        <!-- 축제 리스트 -->
        <section class="other_list type2" role="region">
            <div class="inner">
                <div class="other_festival" role="application">
                    <div class="blind">페스티벌 검색 리스트</div>

                    <!-- 상단: 오른쪽 정렬 (글쓰기 + 셀렉트) -->
                    <div style="
                        display: flex;
                        justify-content: flex-end; /* 오른쪽 정렬 */
                        align-items: center;
                        gap: 10px;
                        margin-bottom: 20px;
                    ">
                        <c:if test="${user.role == 'admin'}">
                            <a href="/travel/created" class="write-link">글쓰기</a>
                        </c:if>

                        <select id="rowsPerPage" class="selectAmount">
                            <option ${pageMaker.cri.amount == 9 ? "selected='selected'":''} value="9">9개</option>
                            <option ${pageMaker.cri.amount == 15 ? "selected='selected'":''} value="15">15개</option>
                            <option ${pageMaker.cri.amount == 30 ? "selected='selected'":''} value="30">30개</option>
                        </select>
                    </div>

                    <div class="tab_cont_area">
                        <!-- 축제일순 리스트 -->
                        <div class="tab_cont active" aria-expanded="true" role="application">
                            <p class="blind">축제일순 리스트</p>
                            <ul class="other_festival_ul" id="fstvlList">
                                <!-- 동적으로 추가 -->
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!--// 축제 리스트 -->

        <div class="loading">
            <div class="loading_start" aria-live="assertive" role="alert">
                <div class="blind">please wait while we gather your information, Loading...</div>
                <img src="/resources/img/loading.svg" alt="로딩 이미지">
            </div>
        </div>
    </div>
</main>

<div id="mymodal" class="modal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Modal title</h5>
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
                        data-bs-dismiss="modal">Close
                </button>
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
            <form id="pageForm" action="/travel/list" method="get">
                <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
            </form>
        </li>
    </ul>
</nav>
<!-- ... end Pagination -->

<!-- 하단 푸터 -->
<footer class="py-4 mt-5">
    <div class="container text-center">
        <p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
        <small>&copy; 2025. All rights reserved.</small>
    </div>
</footer>

<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $("#regBtn").on("click", function() {
        self.location = "/travel/created";
    });
});
</script>

<!-- JS Scripts -->
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

<!-- 다국어JSON파일 불러오기 -->
<script type="text/javascript">
function checkModal(result) {
    if (result === '') {
        return;
    } else if(result === 'mod'){
        $(".modal-body").html("정상적으로 수정되었습니다.");
    } else if(result === 'del'){
        $(".modal-body").html("정상적으로 삭제되었습니다.");
    }
    $("#mymodal").modal("show");
}
function loadTable() {
    $.ajax({
        url: "/travel/getList",
        type: "post",
        data: {
            pageNum: $("#pageForm").find("input[name='pageNum']").val(),
            amount: $("#pageForm").find("input[name='amount']").val()
        },
        dataType: "json",
        success: function(data) {
            var festivalList = $("#fstvlList");
            festivalList.empty(); // 기존 리스트 비우기

            $.each(data, function(index, travellist) {
                let updateDate = new Date(travellist.regDate);
                var options = {
                    year: "numeric",
                    month: "2-digit",
                    day: "2-digit",
                    hour: "2-digit",
                    minute: "2-digit"
                };
                var formattedUpdateDate = updateDate.toLocaleString("ko-KR", options);

                var listItem = $("<li>").append(
                    $("<div>").addClass("other_festival_img open").append(
                        $("<a>").attr("href", "/travel/read?travelBoardNo=" + travellist.travelBoardNo).append(
                            $("<img>").attr("src", "https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_220371a8-ec85-46b7-8bb0-30afa9a93a19_1.jpg").attr("alt", "사진~")
                        )
                    ),
                    $("<div>").addClass("other_festival_content").append(
                        $("<strong>").append(
                            $("<a>").attr("href", "/travel/read?travelBoardNo=" + travellist.travelBoardNo).text(travellist.title)
                        ),
                        $("<div>").text(travellist.tag),
                        $("<div>").text(formattedUpdateDate)
                    )
                );
                festivalList.append(listItem);
            });
        },
        error: function(e) {
            console.log(e);
        }
    });
}

$(document).ready(function() {
    loadTable(); // 페이지 로드 시 초기 리스트 불러오기

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
    
    // 로그인 드롭다운이 열려 있으면 닫기
    const dropdownMenu = document.querySelector('.login-drop-menu');
    if (dropdownMenu && dropdownMenu.style.display === 'block') {
        dropdownMenu.style.display = 'none';
    }

    // 언어 탭 열고 닫기
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
    // 예시. 실제 요소가 있으면 교체
    // document.querySelector('.logo-title').textContent = data.logoTitle;
}
</script>
<script>
window.addEventListener('scroll', function () {
    const header = document.getElementById('header--standard');
    if (window.scrollY > 50) {
        header.classList.add('header--scrolled');
    } else {
        header.classList.remove('header--scrolled');
    }
});
</script>
</body>
</html>
