<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>Landing Page</title>

<!-- Required meta tags always come first -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Theme Font -->
<link rel="preload" type="text/css"
	href="/resources/css/theme-font.min.css" as="style">

<!-- Bootstrap CSS -->

<link rel="stylesheet" type="text/css"
	href="/resources/Bootstrap/dist/css/bootstrap.css">

<!-- Main Styles CSS -->
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">

<!-- Main RTL CSS -->
<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->

</head>

<body class="landing-page">


	<!-- Preloader -->

	<div id="hellopreloader">
		<div class="preloader">
			<svg width="45" height="45" stroke="#fff">
			<g fill="none" fill-rule="evenodd" stroke-width="2"
					transform="translate(1 1)">
				<circle cx="22" cy="22" r="6" stroke="none">
					<animate attributeName="r" begin="1.5s" calcMode="linear" dur="3s"
					repeatCount="indefinite" values="6;22" />
					<animate attributeName="stroke-opacity" begin="1.5s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0" />
					<animate attributeName="stroke-width" begin="1.5s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="2;0" />
				</circle>
				<circle cx="22" cy="22" r="6" stroke="none">
					<animate attributeName="r" begin="3s" calcMode="linear" dur="3s"
					repeatCount="indefinite" values="6;22" />
					<animate attributeName="stroke-opacity" begin="3s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0" />
					<animate attributeName="stroke-width" begin="3s" calcMode="linear"
					dur="3s" repeatCount="indefinite" values="2;0" />
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


	<!-- Header Standard Landing  -->

	<div class="header--standard header--standard-landing"
		id="header--standard">
		<div class="container">
			<div class="header--standard-wrap">

				<a href="12-FavouritePage.html" class="logo"></a>
				<div class="img-wrap">
					<img loading="lazy" src="/resources/img/logo-colored-small.webp"
						width="34" height="34" alt="Olympus" class="logo-colored">
				</div>
				<div class="title-block">
					<h6 class="logo-title">로고 들어갈 자리</h6>
					<div class="sub-title">SOCIAL NETWORK</div>
				</div>

				<a href="#" class="open-responsive-menu js-open-responsive-menu">
					<svg class="olymp-menu-icon">
						<use xlink:href="#olymp-menu-icon"></use></svg>
				</a>

				
			</div>
		</div>
	</div>


	<!-- ... end Header Standard Landing  -->
	<div class="header-spacer--standard"></div>

	<div class="container">
		<div class="row display-flex"
			style="justify-content: center; display: flex; align-items: center;">
			<div class="col col-xl-10 col-lg-6 col-md-12 col-sm-12 col-12">

				<!-- Login-Registration Form  -->

				<div class="registration-login-form">
					<!-- Tab panes -->
					<div class="tab-content" id="registration-form-tabs-content">
						<div class="tab-pane fade show active">
							<form class="content" action="/user/create" method="post" enctype="multipart/form-data">
								<div class="row" style="justify-content: center;">
									<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
										
										<div class="tab-content" id="my-infomation">
											<div class="tab-pane fade show active">
												<div class="title h6">회원 등록</div>
												<div>
													<img id="preview" alt="업로드된 파일"
														src="${user.picture}"
														style="width: 500px; display: block; margin: 0 auto;">
												</div>
												<div class="row"
													style="justify-content: center; display: flex; flex-direction: column; align-items: center;">
													<!-- 아이디 입력 -->
													<div
														class="col col-12 col-xl-6 col-lg-6 col-md-6 col-sm-12">
														<div class="form-group label-floating">
															<div
																style="display: flex; align-items: center; justify-content: space-between; white-space: nowrap; gap: 10px;">
																<p>
																	사용자 이메일<input type="text" name="email"
																		value="${user.email }" readonly="readonly"></input>
																</p>
															</div>

														</div>
													</div>
													<!-- 비밀번호 입력 -->
													<div
														class="col col-12 col-xl-6 col-lg-6 col-md-6 col-sm-12">
														<div class="form-group label-floating">
															<div
																style="display: flex; align-items: center; justify-content: space-between; white-space: nowrap;">
																<p>
																	사용자 닉네임 <input type="text" id="nickName" name="nickName"
																		value="${user.name }"></input>
																		<button type="button" id="checkNicknameBtn" class="btn btn-sm btn-primary">중복확인</button>
																		 <span id="nicknameFeedback"></span>
																</p>
															</div>
															<div>
																<label>profileImg</label> <input id="i_imageFileName"
																	name="file" type="file" value="${user.picture }">
															</div>
															<input type="hidden" name="profileImg" value="${user.picture}">
															<button type="button" class="btn btn-primary btn-lg BNT " data-oper="create">생성</button>
														</div>

														<!-- 로그인 버튼 -->
				
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<!-- ... end Login-Registration Form  -->


	<!-- Window-popup Restore Password -->



	<!-- ... end Window-popup Restore Password -->


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
<script type="text/javascript">
$(function() {
    // 닉네임 중복 여부를 저장하는 변수
    let isNicknameAvailable = false;

    // 이미지 미리보기
    $("#i_imageFileName").on("change", function(event) {
        console.log(event);
        var reader = new FileReader();
        reader.onload = function(e) {
            console.log(e);
            $("#preview").attr("src", e.target.result).show();
        }
        reader.readAsDataURL(event.target.files[0]);
    });

    // 닉네임 중복 확인
    $("#checkNicknameBtn").on("click", function() {
        var nickname = $("#nickName").val().trim();
        var feedback = $("#nicknameFeedback");

        if (nickname === "") {
            feedback.text("닉네임을 입력하세요.").removeClass("available").addClass("taken");
            isNicknameAvailable = false;
            return;
        }

        $.ajax({
            url: "/user/checkNickname",
            type: "post",
            data: { nickName: nickname },
            dataType: "json",
            success: function(response) {
                if (response.available || $("#nickName").val() == '${nickName}') {
                    feedback.text("사용 가능한 닉네임입니다.").removeClass("taken").addClass("available");
                    isNicknameAvailable = true;
                } else {
                    feedback.text("이미 사용 중인 닉네임입니다.").removeClass("available").addClass("taken");
                    isNicknameAvailable = false;
                }
            },
            error: function(e) {
                console.log("AJAX 오류:", e);
                feedback.text("확인 중 오류가 발생했습니다.").removeClass("available").addClass("taken");
                isNicknameAvailable = false;
            }
        });
    });

    // 폼 제출 이벤트
    var formObj = $("form");
    $(".BNT").on("click", function(e) {
        e.preventDefault(); // 기본 동작 방지
        let operation = $(this).data("oper");
        console.log(operation);

        if (operation === "create") {
            if (!isNicknameAvailable) {
                alert("사용 가능한 닉네임을 입력하세요.");
                return; // 제출 중단
            }
            formObj.attr("action", "/user/create")
                   .attr("method", "post")
                   .attr("enctype", "multipart/form-data");
            formObj.submit();

        }
    });
});
</script>
	<script>
		window.addEventListener('scroll', function() {
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