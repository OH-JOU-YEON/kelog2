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

	<div id="reportModal" class="modal">
		<div class="modal-content">
				<span class="close-btn" id="closeModal">&times;</span>
				<h2>게시글 신고</h2>
				<form id="reportForm" action="/tip/report" method="post">
						<div class="checkbox-group">
							<input name="tipBoardNo" value="${dto.tipBoardNo}" type="hidden">
							<label>글 제목</label>
							<input type="text" class="form-control" name="title" value="${dto.title }" readonly="readonly">
							<label>신고자</label>
							<input type="text" class="form-control" name="title" value="${nickName } " readonly="readonly">
							<div class="form-group">
							<label>신고 사유</label><select name="reportReason">
								<option selected>::선택하세요::</option>
								<option value="부적절한 언어사용">부적절한 언어사용</option>
								<option value="선정적 콘텐츠">선정적 콘텐츠</option>
								<option value="적절하지 못한 정보">적절하지 못한 정보</option>
								<option value="개인정보노출">개인정보노출</option>
								<option value="그외 부적절함">그외 부적절함</option>
							</select>
						</div>
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
						<li class="nav-item">
							<a href="00-MainPage.html">메인 페이지</a>
						</li>
						<li class="nav-item dropdown">
							<a href="02-RecommendPost.html">여행 추천지</a>
						</li>
						<li class="nav-item dropdown dropdown-has-megamenu">
							<a href="97-BlogPostBoard.html">블로그 게시판</a>
						</li>
						<li class="nav-item">
							<a href="03-Myblog.html">내 블로그</a>
						</li>
						<li class="nav-item">
							<a href="/tip/list">꿀팁 게시판</a>
						</li>
						<li class="nav-item">
							<a href="#">전국 날씨예보</a>
						</li>
						<li class="close-responsive-menu js-close-responsive-menu">
							<svg class="olymp-close-icon"><use xlink:href="#olymp-close-icon"></use></svg>
						</li>
						<li class="nav-item js-expanded-menu">
							<a href="#" class="menu-link"><img src="/resources/img/menu-bar.png" style="width: 26px; height: 26px;"></a>
						</li>
						<li class="lang-set-item">
							<a href="#" class="change-lang"><img src="/resources/img/changeLang.png" style="width: 26px; height: 26px;"></a>
						</li>
						<li class="login-set-item">
							<a href="01-LoginPage.html" class="login-user"><img src="/resources/img/login-user.png" class="login-user-menu"style="width: 26px; height: 26px;"></a>
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
					<a class="btn btn-primary btn-md" href="/tip/modify?tipBoardNo=${dto.tipBoardNo }"Modify id="editPostBtn" style="margin-left: 950px;">수정하기</a>
				
					<div class="author-date">
						<div class="author-thumb">
							<img alt="author" src="/resources/img/friend-harmonic7.webp" class="avatar">
						</div>
						by
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
					
					
					
				</article>
				
				<!-- ... end Single Post -->

			</div>
			
			<form>
				<div class="crumina-module crumina-heading with-title-decoration">
					<h5 class="heading-title" style="position: relative;">댓글
						<a href="#" class="post-category bg-primary" id="reportBtn" style="position: absolute; right: 0;">신고하기</a>
					</h5>
					
				</div>
				<div class="row">
					<div class="col col-12 col-xl-4 col-lg-4 col-md-4 col-sm-12">
						<div class="form-group label-floating">
							<label class="control-label">사용자 ID</label>
							<input class="form-control" value="${nickName}" type="text">
						</div>
					</div>
					<div class="col col-10 col-xl-10 col-lg-10 col-md-10 col-sm-10">
						<div class="form-group d-flex">
							<input type="text" id="btn-input" class="form-control" placeholder="댓글 입력" style="flex: 1; height: 60px;"></input>
							<span class="input-group-btn"><button id="btn-chat" class="btn btn-primary btn-lg" style="margin-left: 10px; height: 58px; background-color: #9edbff; border-color: #9eb3ff;">등록</button></span>
						</div>
				</div>
			</div>
		</form>
		<table>
			<tbody>
				<ul class="comments-list style-3">
					<li class="comment-item">
						<div class="post__author-thumb">
							<img loading="lazy" src="/resources/img/avatar1.webp" alt="author" width="92" height="92">
						</div>
				
						<div class="comments-content">
							<div class="post__author author vcard">
								<div class="author-date">
									<a class="h6 post__author-name fn" href="#">Nicholas Grissom</a>
									<div class="post__date">
										<time class="published" datetime="2004-07-24T18:18">
											27 mins ago
										</time>
									</div>
								</div>
				
							</div>
				
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium der doloremque laudantium.</p>
				
							<a href="#" class="reply">답글</a>
							<a href="#" class="report">좋아요</a>
							<a href="#" class="report" style="margin-left: 20px;">싫어요</a>
						</div>
				
					</li>
					
				</ul>


			</tbody>
		</table>
		
		
		

		</div>
</div>
<script>
function toggleLike(tipBoardNo) {
	
    var email = '${user.email}';  // 세션에서 사용자 ID 가져오기 (예시)

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
			url : "/tipreply/getReplies",
			type : "post",
			data : {
				tipBoardNo : $("#tipBoardNo").val()
			},
			dataType : "json",
			success : function(data) {
				var replyTbody = $("table tbody");
				replyTbody.empty(); // 기존에 테이블에 있는 행 지우기

				$.each(data, function(index, reply) {
					let updateDate = new Date(reply.regDate);
					// numeric : 연도를 숫자, 2-digit : 두자리 숫자 형식 표시
					var options = {
						year : "numeric",
						month : "2-digit",
						day : "2-digit",
						hour : "2-digit",
						minute : "2-digit"
					};
					var formattedUpdateDate = updateDate.toLocaleString("ko-KR", options);

					var row = $("<ul class='comments-list style-3'>");
						row.append($("<li class='comment-item'>"));
						row.append($("<div class='post__author-thumb'>").html("<img loading='lazy' src='/resources/img/avatar1.webp' alt='author' width='92' height='92'>"));
						row.append($("</div>"));
						row.append($("<div class='comments-content'>"));
						row.append($("<div class='post__author author vcard'>"));
						row.append($("<div class='author-date'>"));
						row.append($("<p class='h6 post__author-name fn'>").text(reply.nickName));
						row.append($("</p>"));
						row.append($("<div class='post__date'>"));
						row.append($("<p class='published'>").text(formattedUpdateDate));
						row.append($("</p>"));
						row.append($("</div>"));
						row.append($("</div>"));
						row.append($("<p>").text(reply.content));
						row.append($("</p>"));
						row.append().html("<a href='#'>신고</a>");
						if(reply.nickName === "${nickName}"){
						row.append().html("<a href='/tipreply/delete?tipReplyNo="+reply.tipReplyNo+"&tipBoardNo="+$("#tipBoardNo").val()+"'}>삭제</a>")						
						};					
						row.append($("</li>"));
						row.append($("</ui>"));
						replyTbody.append(row);
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
			let nickname = '${nickName}';
			console.log(nickname);
			if(!nickname){
				alert("로그인을 해주세요.")
			}else{
			
			e.preventDefault();
			$.ajax({
				url : "/tipreply/register",
				type : "post",
				data : {
					tipBoardNo : $("#tipBoardNo").val(),
					content : $("#btn-input").val()
				},
				dataType : "json",
				success : function(data) {
					let updateDate = new Date(data.regDate);
					// numeric : 연도를 숫자, 2-digit : 두자리 숫자 형식 표시
					var options = {
						year : "numeric",
						month : "2-digit",
						day : "2-digit",
						hour : "2-digit",
						minute : "2-digit"
					};
					var formattedUpdateDate = updateDate.toLocaleString(
							"ko-KR", options);
					console.log(data)
					var replyTbody = $("table tbody");

					var row = $("<ul class='comments-list style-3'>");
						row.append($("<li class='comment-item'>"));
						row.append($("<div class='post__author-thumb'>").html("<img loading='lazy' src='/resources/img/avatar1.webp' alt='author' width='92' height='92'>"));
						row.append($("</div>"));
						row.append($("<div class='comments-content'>"));
						row.append($("<div class='post__author author vcard'>"));
						row.append($("<div class='author-date'>"));
						row.append($("<p class='h6 post__author-name fn'>").text(reply.nickName));
						row.append($("</p>"));
						row.append($("<div class='post__date'>"));
						row.append($("<p class='published'>").text(formattedUpdateDate));
						row.append($("</p>"));
						row.append($("</div>"));
						row.append($("</div>"));
						row.append($("<p>").text(reply.content));
						row.append($("</p>"));
						row.append().html("<a href='#'>신고</a>");
						if(reply.nickName === "${nickName}"){
						row.append().html("<a href='/tipreply/delete?tipReplyNo="+reply.tipReplyNo+"&tipBoardNo="+$("#tipBoardNo").val()+"'}>삭제</a>")						
						};					
						row.append($("</li>"));
						row.append($("</ui>"));
						replyTbody.append(row);
					
					//replyTbody.prepend(row); // tbody에 최상단에 추가 
					//replyTbody.append(row); // tbody에 최하단에 추가 

					replyTbody.prepend(row); // tbody에 최하단에 추가 
				},
				error : function(e) {
					console.log(e);
				}

			});
		}
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

<!-- 신고 모달창부분 -->

<script>
	const reportBtn = document.getElementById('reportBtn');
	const reportModal = document.getElementById('reportModal');
	const closeModal = document.getElementById('closeModal');
	const cancelBtn = document.getElementById('cancelBtn');
	
	// 신고 버튼 클릭시 모달창 띄움
	reportBtn.onclick = function() {
			reportModal.style.display = 'block';
	}
	
	// 모달 닫기 X 버튼을 클릭시 모달 닫기
	closeModal.onclick = function() {
			reportModal.style.display = 'none';
	}
	
	// 취소 버튼을 클릭시 모달 닫기
	cancelBtn.onclick = function() {
			reportModal.style.display = 'none';
	}
	
	// 모달 바깥 부분을 클릭시 모달 닫기
	window.onclick = function(event) {
			if (event.target === reportModal) {
					reportModal.style.display = 'none';
			}
	}
	
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