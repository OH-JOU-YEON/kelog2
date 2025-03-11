<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="formattedRegDate">
	<fmt:formatDate pattern="yyyy-MM-dd a hh:mm:ss" value="${dto.regDate }" />
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

<<div id="reportModal" class="modal">
        <div class="modal-content">
            <span class="close-btn" id="closeModal">&times;</span>
            <h2>게시글 신고</h2>
            <form id="reportForm" method="post" action="/tip/report">
                <input id="tipBoardNo" class="form-control" type="hidden" name="tipBoardNo"
                    value="${dto.tipBoardNo }">
                <div class="form-group">
                    <label>게시판 제목</label><input class="form-control" type="text"
                        readonly="readonly" name="title" value="${dto.title }">
                </div>
                <div class="form-group">
                    <label>신고자</label><input class="form-control" type="text"
                        readonly="readonly" name="nickName" value="${nickName}">
                </div>
                <div class="form-group">
                    <label>신고 사유</label> <select name="reportReason">
                  <option selected>::선택하세요::</option>
								<option value="부적절한 언어사용">부적절한 언어사용</option>
								<option value="선정적 콘텐츠">선정적 콘텐츠</option>
								<option value="적절하지 못한 정보">적절하지 못한 정보</option>
								<option value="개인정보노출">개인정보노출</option>
								<option value="그외 부적절함">그외 부적절함</option>
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

<!-- ... end Header Standard Landing  -->
<div class="main-header-post">
	<img loading="lazy" src="/resources/img/wall03_1920.jpg" alt="author" width="1229" height="480">
</div>


<div class="container negative-margin-top150 mb60">
	<div class="row">
		<div class="col col-xl-8 m-auto col-lg-12 col-md-12 col-sm-12 col-12">

			<div class="ui-block">
				<!-- Single Post -->
				<article class="hentry blog-post single-post single-post-v1">	
					<input class="form-control" id="tipBoardNo" type="hidden" name="tipBoardNo"
						value="${dto.tipBoardNo }">
					<a href="/tip/list" class="post-category bg-primary">꿀팁 게시판</a>
					<c:if test="${dto.email == email }">
					<a class="btn btn-primary btn-md" href="/tip/modify?tipBoardNo=${dto.tipBoardNo }" id="editPostBtn" style="margin-left: 950px;">수정하기</a>
					</c:if>
					<div class="author-date">
						<div class="author-thumb">
							<img alt="author" src="/resources/img/friend-harmonic7.webp" class="avatar">
						</div>
						<p class="h6 post__author-name fn" >${dto.nickName}</p>
						<div class="post__date">
							<div class="form-group">
								<label>RegDate</label> <input class="form-control" name="regDate"
									readonly="readonly" value="${formattedRegDate }">
							</div>
						</div>
					</div>
				
					<div class="post-content-wrap">
						<div class="form-group">
							<label>Title</label> <input class="form-control" name="title"
								readonly="readonly" value="${dto.title }">
						</div>

							<div class="form-group">
								<label>Content</label>
								<div id="editor" >${dto.content}</div>
							</div>
							<div id="viewer"></div>
					</div>
				
				<p id="likeCount">좋아요: ${dto.likeCnt}</p>
					
					<button id="likeButton${dto.tipBoardNo}" onclick="toggleLike(${dto.tipBoardNo})">${isliked ? '좋아요 취소' : '좋아요'}</button>				
					
					<div class="Report reportIcon">
                        <img src="/resources/img/Report-icon.png"
                            style="width: 22px; height: 22px; margin-bottom: 20px; margin-right: 20px;">
                    </div>
				</article>
				<!-- ... end Single Post -->

			</div>
			
				<div class="crumina-module crumina-heading with-title-decoration">
					<h5 class="heading-title" style="position: relative;">댓글
					</h5>
					
				</div>
			
				<div class="row">
					<div class="col col-12 col-xl-4 col-lg-4 col-md-4 col-sm-12">
						<div class="form-group label-floating">
							<label class="control-label">사용자 ID</label>
							<input class="form-control" value="${nickName}" type="text" readonly="readonly">
						</div>
					</div>
					<div class="col col-10 col-xl-10 col-lg-10 col-md-10 col-sm-10">
						<div class="form-group d-flex">
							<input type="hidden" value="${email }" name="email">
							<input type="text" id="btn-input" class="form-control" placeholder="댓글 입력" style="flex: 1; height: 60px;"></input>
							<span class="input-group-btn"><button id="btn-chat" class="btn btn-primary btn-lg" style="margin-left: 10px; height: 58px; background-color: #9edbff; border-color: #9eb3ff;">등록</button></span>
						</div>
				</div>
			</div>
		<table>
			<tbody class="chat">
			</tbody>
		</table>
		</div>
	</div>
</div>
<script>
function toggleLike(tipBoardNo) {
	
    var email = '${email}';  // 세션에서 사용자 ID 가져오기 (예시)

    console.log(email);
    
    if (!email) {
        alert("로그인 후 좋아요를 누를 수 있습니다.");
        return;  // 로그인되지 않으면 더 이상 진행하지 않음
    }
    
    $.ajax({
        url: '/tip/like',
        type: 'POST',
        data: { tipBoardNo: tipBoardNo },
        success: function() {
        	var currentLikeCount = parseInt($('#likeCount').text().replace('좋아요: ', ''));
        	console.log("성공");
            // 좋아요 버튼 상태 변경
            let likeButton = document.getElementById("likeButton" + tipBoardNo);
            if (likeButton.textContent == "좋아요") {
                likeButton.textContent = '좋아요 취소';
                currentLikeCount += 1;
                $('#likeCount').html('좋아요: ' + currentLikeCount); 
            } else {
                likeButton.textContent = '좋아요';
                currentLikeCount -= 1;
                $('#likeCount').html('좋아요: ' + currentLikeCount); 
            }
        }
    });
}

</script>
<script type="text/javascript">
    function loadReplies() {
    	
        $.ajax({
            url : "/tipreply/getreplies",
            type : "post",
            data : {
                tipBoardNo : $("#tipBoardNo").val()
            },
            dataType : "json",
            success : function(data) {
                var commentList = $(".chat"); // 댓글 목록을 담을 요소
                commentList.empty(); // 기존 댓글 삭제

                $.each(data, function(index, reply) {
                    let updateDate = new Date(reply.regDate);
                    var options = {
                        year : "numeric",
                        month : "2-digit",
                        day : "2-digit",
                        hour : "2-digit",
                        minute : "2-digit"
                    };
                    var replyemail = reply.email;
                    var email = '${email}';
                    var formattedUpdateDate = updateDate.toLocaleString("ko-KR", options);
                    var ul = $("<ul>").addClass("comments-list style-3");
                    var commentItem = $("<li>").addClass("comment-item");

                    var authorThumb = $("<div>").addClass("post__author-thumb");
                    var authorImage = $("<img>").attr("loading", "lazy").attr("src", "/resources/img/avatar1.webp")
                        .attr("alt", "author").attr("width", "92").attr("height", "92");
                    authorThumb.append(authorImage);

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

                    // 신고 링크 추가 (모든 댓글에 표시)
                    var reportLink = $("<a>").addClass("report").attr("href", "/tipreply/report?replyNo=" + reply.replyNo + "&tipBoardNo=" + $("#tipBoardNo").val()).text("신고").css("margin-left", "10px");

                    // 삭제 링크는 본인 댓글에만 표시
                    if (replyemail != email) {
                        commentContent.append(authorInfo).append(commentText).append(reportLink);
                    } else {
                        var deleteLink = $("<a>").addClass("report").attr("href", "/tipreply/delete?replyNo=" + reply.replyNo + "&tipBoardNo=" + $("#tipBoardNo").val()).text("삭제");
                        commentContent.append(authorInfo).append(commentText).append(deleteLink).append(reportLink);
                    }

                    commentItem.append(authorThumb).append(commentContent);
                    ul.append(commentItem);
                    commentList.append(ul); // 댓글 목록에 추가
                });
            },
            error : function(e) {
                console.log(e);
            }
        });
    };

    $(document).ready(function() {
        loadReplies();
     
        $("#btn-chat").on("click", function(e) {
        	   var email = '${email}';  // 세션에서 사용자 ID 가져오기 (예시)

          	    console.log(email);
          	    
          	    if (!email) {
          	        alert("로그인 후 댓글을 달 수 있습니다.");
          	        return;  // 로그인되지 않으면 더 이상 진행하지 않음
          	    }
            e.preventDefault();
            $.ajax({
                url : "/tipreply/register",
                type : "post",
                data : {
                    content : $("#btn-input").val(),
                    tipBoardNo : $("#tipBoardNo").val()
                },
                dataType : "json",
                success : function(data) {
                    let updateDate = new Date(data.regDate);
                    var options = {
                        year : "numeric",
                        month : "2-digit",
                        day : "2-digit",
                        hour : "2-digit",
                        minute : "2-digit"
                    };
                    // 댓글 목록 갱신
                    loadReplies();  // 댓글 목록을 새로 불러옵니다.

                    // 댓글 입력 후 입력칸 초기화
                    $("#btn-input").val("");  // 댓글 입력란 초기화
                    var formattedUpdateDate = updateDate.toLocaleString("ko-KR", options);
                    
                    var commentList = $(".chat");
                    var ul = $("<ul>").addClass("comments-list style-3");
                    var commentItem = $("<li>").addClass("comment-item");

                    var authorThumb = $("<div>").addClass("post__author-thumb");
                    var authorImage = $("<img>").attr("loading", "lazy").attr("src", "/resources/img/avatar1.webp")
                        .attr("alt", "author").attr("width", "92").attr("height", "92");
                    authorThumb.append(authorImage);

                    var commentContent = $("<div>").addClass("comments-content");

                    var authorInfo = $("<div>").addClass("post__author author vcard");
                    var authorDate = $("<div>").addClass("author-date");
                    var authorName = $("<p>").addClass("h6 post__author-name fn").text(reply.nickName);
                    var postDate = $("<div>").addClass("post__date");
                    var time = $("<time>").addClass("published").attr("datetime", reply.regDate).text(formattedUpdateDate);
                    postDate.append(time);
                    authorDate.append(authorName).append(postDate);
                    authorInfo.append(authorDate);

                    var commentText = $("<p>").text(data.content);

                 	var email ='${email}';
                    var replyemail = reply.email;
                    if(replyemail != email) {
                    commentContent.append(authorInfo).append(commentText);                    	
                    }else{
                        var deleteLink = $("<a>").addClass("report").attr("href", "/tipreply/delete?replyNo=" + reply.replyNo + "&tipBoardNo=" + $("#tipBoardNo").val()).text("삭제");
                        commentContent.append(authorInfo).append(commentText).append(deleteLink);
                    }

                    ul.append(commentItem);
                    commentList.append(ul); // 댓글 목록에 추가

                },
                error : function(e) {
                    console.log(e);
                }
            });
        });
    });
</script>
<script>
	$(function() {ToView();
	});

	/*토스트 UI */
	const content = [].join('\n');

	const editor = new toastui.Editor({
		el : document.querySelector('#editor'),
	});

	/*토스트 UI 뷰어 */
	const viewer = toastui.Editor.factory({
		el : document.querySelector('#viewer'),
		viewer : true,
		height : '500px',
		initialEditType : 'wysiwyg',
		initialValue : content

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
document.getElementById('mypage').addEventListener('click', function(event) {
    event.preventDefault(); // 기본 링크 동작 방지

    const uno = '${user.uno}'; // JSP에서 가져온 uno 값

    $.ajax({
        url: '/user/read',
        type: 'POST',
        data: { uno: uno }, // POST 데이터로 uno 전송
        success: function(response) {
            // 서버 응답에 따라 처리
            console.log('성공:', response);
            // 페이지 이동을 원한다면 아래 줄 추가
            window.location.href = '/user/read?uno=' + uno;
        },
        error: function(xhr, status, error) {
            console.error('에러:', error);
        }
    });
});
</script>
<script>
// 모달 창과 관련된 요소 선택
const reportModal = document.getElementById('reportModal');
const closeModal = document.getElementById('closeModal');
const reportIcons = document.querySelectorAll('.reportIcon');  // class로 선택
const cancelBtn = document.getElementById('cancelBtn');  // 취소 버튼 추가

// 각 reportIcon에 클릭 이벤트 추가

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

<footer>
	<p>쉿 아무말도하지마 나의 작은 아가고냥이</p>
</footer>
</body>
</html>