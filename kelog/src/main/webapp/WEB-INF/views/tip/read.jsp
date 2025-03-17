<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="formattedRegDate">
	<fmt:formatDate pattern="yyyy-MM-dd a hh:mm:ss" value="${dto.regDate}" />
</c:set>

<!DOCTYPE html>
<html lang="en">
<head>
<title>꿀팁 게시글</title>
<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Theme Font -->
<link rel="preload" type="text/css"
	href="/resources/css/theme-font.min.css" as="style">

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="/resources/Bootstrap/dist/css/bootstrap2.css">

<!-- Main Styles CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/main2.css">

<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body class="body-bg-white">

	<!-- 신고 모달 -->
	<div id="reportModal" class="modal">
		<div class="modal-content">
			<span class="close-btn" id="closeModal">×</span>
			<h2 id="modalTitle">게시글 신고</h2>
			<form id="reportForm" method="post" action="/tip/report">
				<input id="modalTipBoardNo" class="form-control" type="hidden"
					name="tipBoardNo" value="${dto.tipBoardNo}"> <input
					id="modalReplyNo" class="form-control" type="hidden" name="replyNo"
					value="">
				<div class="form-group">
					<label>게시판 제목</label> <input class="form-control" type="text"
						readonly="readonly" id="modalTitleInput" name="title"
						value="${dto.title}">
				</div>
				<div class="form-group">
					<label>신고자</label> <input class="form-control" type="text"
						readonly="readonly" name="nickName" value="${nickName}">
				</div>
				<div class="form-group">
					<label>신고 사유</label> <select name="reportReason" id="reportReason"
						class="form-control">
						<option selected>::선택하세요::</option>
						<option value="부적절한 언어사용">부적절한 언어사용</option>
						<option value="선정적 콘텐츠">선정적 콘텐츠</option>
						<option value="적절하지 못한 정보">적절하지 못한 정보</option>
						<option value="개인정보노출">개인정보노출</option>
						<option value="그외 부적절함">그외 부적절함</option>
					</select>
				</div>
				<div class="modal-actions" style="margin-top: 10px;">
					<button type="submit" class="btn btn-danger">신고</button>
					<button type="button" class="btn btn-secondary" id="cancelBtn">취소</button>
				</div>
			</form>
		</div>
	</div>
	<!-- //신고 모달 -->

	<!-- Preloader -->
	<div id="hellopreloader">
		<div class="preloader">
			<svg width="45" height="45" stroke="#fff">
            <g fill="none" fill-rule="evenodd" stroke-width="2"
					transform="translate(1 1)">
                <circle cx="22" cy="22" r="6" stroke="none">
                    <animate attributeName="r" begin="1.5s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="6;22" />
                    <animate attributeName="stroke-opacity" begin="1.5s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0" />
                    <animate attributeName="stroke-width" begin="1.5s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="2;0" />
                </circle>
                <circle cx="22" cy="22" r="6" stroke="none">
                    <animate attributeName="r" begin="3s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="6;22" />
                    <animate attributeName="stroke-opacity" begin="3s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0" />
                    <animate attributeName="stroke-width" begin="3s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="2;0" />
                </circle>
                <circle cx="22" cy="22" r="8">
                    <animate attributeName="r" begin="0s"
					calcMode="linear" dur="1.5s" repeatCount="indefinite"
					values="6;1;2;3;4;5;6" />
                </circle>
            </g>
        </svg>
			<div class="text">Loading ...</div>
		</div>
	</div>
	<!-- ... end Preloader -->

	<!-- Header Standard Landing  -->
	<div class="header--standard header--standard-landing"
		id="header--standard">
		<div class="container">
			<div class="header--standard-wrap">
				<a href="12-FavouritePage.html" class="logo"></a>
				<div class="img-wrap">
					<a href="#"> <img loading="lazy"
						src="/resources/img/logokelog.png" width="140" height="34"
						alt="Logo" class="logo-colored">
					</a>
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
							<li class="nav-item"><a href="/tip/list"
								style="color: #000 !important;">꿀팁 게시판</a></li>
							<li class="nav-item"><a href="#"
								style="color: #000 !important;">전국 날씨예보</a></li>
							<li class="close-responsive-menu js-close-responsive-menu">
								<svg class="olymp-close-icon">
									<use xlink:href="#olymp-close-icon"></use></svg>
							</li>
							<li class="nav-item js-expanded-menu"><a href="#"
								class="menu-link"> <img src="/resources/img/menu-bar.png"
									style="width: 26px; height: 26px; filter: none;">
							</a></li>
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
													<li><a href="/user/read?uno=${user.uno}">마이페이지</a></li>
												</c:when>
												<c:otherwise>
													<li><a
														href="/manager/01-ManagerPage-MyPage?uno=${user.uno}">마이페이지</a></li>
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
	<!-- ... end Header Standard Landing  -->

	<div class="main-header-post">
		<img loading="lazy" src="/resources/img/wall03_1920.jpg" alt="author"
			width="1229" height="480">
	</div>

	<div class="container negative-margin-top150 mb60">
		<div class="row">
			<div class="col col-xl-8 m-auto col-lg-12 col-md-12 col-sm-12 col-12">

				<div class="ui-block">
					<!-- Single Post -->
					<article class="hentry blog-post single-post single-post-v1"
						style="position: relative; padding: 20px;">

						<!-- 상단 -->
						<div
							style="position: absolute; top: 20px; right: 20px; display: flex; align-items: center;padding-top: 15px;">
							<!-- 목록 아이콘 + 텍스트 -->
							<a href="/tip/list"
								class="text-decoration-none d-flex align-items-center"> <img
								src="/resources/img/list-icon.png" alt="목록 아이콘"
								style="width: 20px; height: 20px; margin-right: 5px;"> 목록
							</a>

							<!-- 수정  -->
							<c:if test="${dto.email == email}">
								<a href="/tip/modify?tipBoardNo=${dto.tipBoardNo}"
									class="text-decoration-none d-flex align-items-center"
									style="margin-left: 15px;"> 
									<img src="/resources/img/edit.png" alt="수정 아이콘"
								    style="width: 18px; height: 18px;
									margin-right: 5px;"> 수정
								</a>
							</c:if>
						</div>

						<input class="form-control" id="tipBoardNo" type="hidden"
							name="tipBoardNo" value="${dto.tipBoardNo}">
						<!-- 게시판 카테고리 표시 -->
						<a class="post-category bg-primary" style="margin-bottom: 20px;">꿀팁
							게시판</a>

						<div class="author-date" style="margin-top: 10px;">
							<div class="author-thumb">
									<img alt="author"
										src="/upload/${writerImage}"
										style="width: 40px; height: 40px; border-radius: 50%; margin-right: 10px;"
										class="avatar">
									
							</div>
							<p class="h6 post__author-name fn" style="margin-left: 10px;">${dto.nickName}</p>
							<div class="post__date" style="margin-left: 20px;">
								<div class="form-group"
									style="margin-bottom: 0; margin-top: 20px;">
									<label style="margin-left: -20px;">작성일</label> <input
										class="form-control" name="regDate" readonly="readonly"
										value="${formattedRegDate}"
										style="width: auto; margin-left: -20px; background-color: #ffffff; border: none;">
								</div>
							</div>
						</div>

						<div class="post-content-wrap" style="margin-top: -40px;">
							<div class="form-group">
								<label>제목</label> <input class="form-control" name="title"
									readonly="readonly" value="${dto.title}"
									style="background-color: #ffffff; border: none;">
							</div>
							<div class="form-group">
								<label>내용</label>
								<div id="editor">${dto.content}</div>
							</div>
							<div id="viewer"></div>
							<div class="my-3">
							<h6 class="fw-bold mb-0 text-left">${dto.tag }</h6>
						</div>
						</div>

						<!-- 하단 -->
						<!-- 좋아요 & 신고 버튼 컨테이너 -->
						<div
							style="display: flex; align-items: center; justify-content: flex-end; margin-top: 20px;">

							<!-- 좋아요 -->
							<div style="display: flex; align-items: center;">
								<!-- 좋아요 카운트 (아이콘 왼쪽 정렬) -->
								<span style="font-size: 14px; color: #666; margin-right: 8px;">
									<span id="likeCount">${dto.likeCnt}</span>
								</span>

								<!-- 좋아요 버튼 (아래 좋아요 텍스트 추가) -->
								<button id="likeButton${dto.tipBoardNo}"
									onclick="toggleLike(${dto.tipBoardNo})"
									style="border: none; background: none; cursor: pointer; display: flex; flex-direction: column; align-items: center;">
									<img
										src="/resources/img/${isliked ? 'like-filled.png' : 'like-ep.png'}"
										alt="좋아요" style="width: 24px; height: 24px;"> <span
										style="font-size: 12px; color: #666;">좋아요</span>
									<!-- 아이콘 아래에 좋아요 텍스트 -->
								</button>
							</div>

							<!-- 신고 -->
							<div
								style="display: flex; flex-direction: column; align-items: center; text-align: center;">
								<button class="Report reportIcon"
									style="border: none; background: none; cursor: pointer; display: flex; flex-direction: column; align-items: center;">
									<img src="/resources/img/Report-icon.png" alt="신고"
										style="width: 24px; height: 26px;"> <span
										style="font-size: 12px; color: #666;">신고</span>
								</button>
							</div>
						</div>
					</article>
					<!-- ... end Single Post -->
				</div>

				<!-- 댓글 영역 -->
				<div class="crumina-module crumina-heading with-title-decoration"
					style="margin-top: 40px;">
					<h5 class="heading-title">댓글</h5>
				</div>

				<div class="row">
					<div class="col col-12">
						<!-- 댓글 입력창 -->
						<div class="form-group d-flex align-items-center"
							style="border: 1px solid #ddd; border-radius: 8px; padding: 12px; background: #fff; width: 100%; position: relative;">

							<!-- 댓글 입력창 -->
							<div style="position: relative; flex: 1;">
								<!-- 프로필 이미지가 입력창 안쪽에서 정렬 -->
								<div
									style="display: flex; align-items: center; padding-left: 10px; margin-bottom: 15px;">
									<img alt="user-profile"
										src="/upload/${user.profileImg }"
										style="width: 40px; height: 40px; border-radius: 50%; margin-right: 10px;">

									<!-- 닉네임  -->
									<span style="font-weight: bold; font-size: 14px; color: #666;">${nickName}</span>
								</div>

								<!-- 입력창 -->
								<textarea id="btn-input" class="form-control"
									placeholder="﻿게시판이 더 훈훈해지는 댓글 부탁드립니다. "
									style="width: 100%; min-height: 60px; border: none; outline: none; background: transparent; resize: none; font-size: 14px; color: #333;"></textarea>



							</div>
						</div>

						<!-- 등록 버튼  -->
						﻿
						<div
							style="text-align: right; margin-top: -25px; margin-bottom: 20px;">
							<input type="hidden" value="${email}" name="email">
							<button id="btn-chat" class="btn"
								style="width: 60px; height: 30px; font-size: 13px; border: 1px solid #ccc; border-radius: 4px; background: #fff; color: #666;">
								등록</button>
						</div>

					</div>
				</div>


				﻿
				<table style="width: 100%;">
					<tbody class="chat"></tbody>
				</table>

			</div>
		</div>
	</div>

	<script>
function toggleLike(tipBoardNo) {
    var email = '${email}'; // 세션에서 사용자 ID
    if (!email) {
        alert("로그인 후 좋아요를 누를 수 있습니다.");
        return;
    }
    $.ajax({
        url: '/tip/like',
        type: 'POST',
        data: { tipBoardNo: tipBoardNo },
        success: function() {
            var currentLikeCount = parseInt($('#likeCount').text().replace('좋아요: ', ''));
            let likeButton = document.getElementById("likeButton" + tipBoardNo);
            let likeImg = likeButton.querySelector('img');

            // 이미지와 좋아요 수 변경
            if (likeImg.src.includes('like-ep.png')) {
                likeImg.src = '/resources/img/like-filled.png';
                currentLikeCount += 1;
            } else {
                likeImg.src = '/resources/img/like-ep.png';
                currentLikeCount -= 1;
            }
            $('#likeCount').html(currentLikeCount);
        },
        error: function(e) {
            console.log("좋아요 처리 실패: ", e);
        }
    });
}
</script>

	<!-- 모달 창, 신고 이벤트 JS -->
	<script type="text/javascript">
const reportModal = document.getElementById('reportModal');
const closeModal = document.getElementById('closeModal');
const cancelBtn = document.getElementById('cancelBtn');
const reportForm = document.getElementById('reportForm');
const reportIcons = document.querySelectorAll('.reportIcon');

// 게시글 신고 버튼 이벤트
reportIcons.forEach(reportIcon => {
    reportIcon.addEventListener('click', function() {
        var email = '${email}';
        if (!email) {
            alert("로그인 후 신고할 수 있습니다.");
            return;
        } else if (JSON.parse('${isReport}') == true) {
            alert("이미 신고하신 게시글 입니다.");
            return;
        } else {
            document.getElementById('modalTitle').textContent = "게시글 신고";
            document.getElementById('modalTitleInput').value = "${dto.title}";
            document.getElementById('modalTipBoardNo').value = "${dto.tipBoardNo}";
            document.getElementById('modalReplyNo').value = "";
            reportForm.action = "/tip/report";
            reportModal.style.display = 'block';
        }
    });
});

// 모달 닫기
closeModal.addEventListener('click', function() {
    reportModal.style.display = 'none';
});
cancelBtn.addEventListener('click', function() {
    reportModal.style.display = 'none';
});
window.addEventListener('click', function(event) {
    if (event.target === reportModal) {
        reportModal.style.display = 'none';
    }
});
</script>

	<!-- 댓글 등록 및 목록 로드 -->
	<script type="text/javascript">
function loadReplies() {
    $.ajax({
        url: "/tipreply/getreplies",
        type: "post",
        data: { tipBoardNo: $("#tipBoardNo").val() },
        dataType: "json",
        success: function(data) {
            var commentList = $(".chat");
            commentList.empty();

            $.each(data, function(index, reply) {
                let updateDate = new Date(reply.regDate);
                var options = {
                    year: "numeric", month: "2-digit", day: "2-digit",
                    hour: "2-digit", minute: "2-digit"
                };
                var replyemail = reply.email;
                var userEmail = '${email}';
                var formattedUpdateDate = updateDate.toLocaleString("ko-KR", options);

                var ul = $("<ul>").addClass("comments-list style-3");
                var commentItem = $("<li>").addClass("comment-item");
                var commentContent = $("<div>").addClass("comments-content");
                var authorInfo = $("<div>").addClass("post__author author vcard");
                var authorDate = $("<div>").addClass("author-date");

                var authorName = $("<p>").addClass("h6 post__author-name fn").text(reply.nickName);
                var postDate = $("<div>").addClass("post__date");
                var time = $("<time>").addClass("published").attr("datetime", reply.regDate).text(formattedUpdateDate);
                postDate.append(time);
                authorDate.append(authorName).append(postDate);
                authorInfo.append(authorDate);

                var commentText = $("<p>").text(reply.content);

                // 신고 링크
                var reportLink = $("<a>").addClass("report").text("신고").css("margin-left", "10px").on("click", function(e) {
                    e.preventDefault();
                    var email = '${email}';
                    if (!email) {
                        alert("로그인 후 신고할 수 있습니다.");
                        return;
                    }
                    // 모달창 설정
                    document.getElementById('modalTitle').textContent = "댓글 신고";
                    document.getElementById('modalTitleInput').value = reply.content;
                    document.getElementById('modalTipBoardNo').value = $("#tipBoardNo").val();
                    document.getElementById('modalReplyNo').value = reply.replyNo;
                    reportForm.action = "/tipreply/report";
                    reportModal.style.display = 'block';
                });

                // 삭제 링크 (본인 댓글만)
                if (replyemail === userEmail) {
                    var deleteLink = $("<a>")
                        .addClass("report")
                        .attr("href", "/tipreply/delete?replyNo=" + reply.replyNo + "&tipBoardNo=" + $("#tipBoardNo").val())
                        .text("삭제")
                        .css("margin-left", "10px");
                    commentContent.append(authorInfo).append(commentText).append(deleteLink).append(reportLink);
                } else {
                    commentContent.append(authorInfo).append(commentText).append(reportLink);
                }

                commentItem.append(commentContent);
                ul.append(commentItem);
                commentList.append(ul);
            });
        },
        error: function(e) {
            console.log(e);
        }
    });
}

$(document).ready(function() {
    loadReplies();

    $("#btn-chat").on("click", function(e) {
        var email = '${email}';
        if (!email) {
            alert("로그인 후 댓글을 달 수 있습니다.");
            return;
        }
        const content = $('#btn-input').val().trim();
        if (!content || content === "<p><br></p>") {
            alert("댓글을 입력해 주세요.");
            $('#btn-input').focus();
            return;
        }
        e.preventDefault();
        $.ajax({
            url: "/tipreply/register",
            type: "post",
            data: {
                content: $("#btn-input").val(),
                tipBoardNo: $("#tipBoardNo").val()
            },
            dataType: "json",
            success: function(data) {
                $("#btn-input").val("");
                loadReplies();
            },
            error: function(e) {
                console.log(e);
            }
        });
    });
});
</script>

	<!-- 토스트UI 에디터 (내용 읽기용) -->
	<script>
$(function() {
    ToView();
});

/* 토스트 UI */
const editor = new toastui.Editor({
    el: document.querySelector('#editor'),
});

/* 토스트 UI 뷰어 */
const viewer = toastui.Editor.factory({
    el: document.querySelector('#viewer'),
    viewer: true,
    height: '500px',
    initialEditType: 'wysiwyg',
    initialValue: ''
});

function ToView() {
    viewer.setMarkdown(editor.getHTML());
};
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
	<script src="/resources/js/libs/aos.min.js"></script>
	<script src="/resources/js/main.js"></script>
	<script src="/resources/js/libs-init/libs-init.js"></script>
	<script src="/resources/Bootstrap/dist/js/bootstrap.bundle.min.js"></script>

	<!-- SVG icons loader -->
	<script src="/resources/js/svg-loader.js"></script>
	<!-- /SVG icons loader -->

	<!-- 다국어 JSON파일 로딩 -->
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
    // 필요시 추가
}

// 로그인 버튼 / 드롭다운 메뉴
const loginButton = document.querySelector('.login-user');
const loginDropdownMenu = document.querySelector('.login-drop-menu');
var email = '${email}';

// 로그인 아이콘 클릭 시 드롭다운 토글
if (loginButton) {
    loginButton.addEventListener('click', function(event) {
        if (email) {
            event.preventDefault();
            const languageTabs = document.getElementById('language-tabs');
            if (languageTabs.style.display === 'block') {
                languageTabs.style.display = 'none';
            }
            const isMenuVisible = loginDropdownMenu.style.display === 'block';
            loginDropdownMenu.style.display = isMenuVisible ? 'none' : 'block';
        }
    });
}

document.addEventListener('click', function(event) {
    const languageTabs = document.getElementById('language-tabs');
    const dropdownMenu = document.querySelector('.login-drop-menu');

    // 언어 탭 외부 클릭 시 닫기
    if (!document.querySelector('.change-lang').contains(event.target) && !languageTabs.contains(event.target)) {
        languageTabs.style.display = 'none';
    }

    // 로그인 드롭다운 외부 클릭 시 닫기
    if (email && dropdownMenu && !loginButton.contains(event.target) && !dropdownMenu.contains(event.target)) {
        dropdownMenu.style.display = 'none';
    }
});
</script>

	<script>
document.getElementById('mypage').addEventListener('click', function(event) {
    event.preventDefault();
    const uno = '${user.uno}';
    $.ajax({
        url: '/user/read',
        type: 'POST',
        data: { uno: uno },
        success: function(response) {
            window.location.href = '/user/read?uno=' + uno;
        },
        error: function(xhr, status, error) {
            console.error('에러:', error);
        }
    });
});
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

	<!-- 하단 푸터 -->
	<footer class="py-4 mt-5">
		<div class="container text-center">
			<p class="mb-1">이용약관 | 개인정보처리방침 | 주소 | 연락처</p>
			<small>&copy; 2025. All rights reserved.</small>
		</div>
	</footer>
</body>
</html>
