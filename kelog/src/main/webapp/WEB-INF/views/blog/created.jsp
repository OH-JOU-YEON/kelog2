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

<title>내 블로그 글 작성</title>

<!-- Required meta tags always come first -->
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

 <style>
      .map_wrap,
      .map_wrap *,
      .toastui-editor-popup-body {
        margin: 0;
        padding: 0;
        font-family: "Malgun Gothic", dotum, "돋움", sans-serif;
        font-size: 12px;
      }
      ul {
        list-style: none;
        padding-inline-start: 0;
      }
      .map_wrap a,
      .map_wrap a:hover,
      .map_wrap a:active,
      .toastui-editor-popup-body {
        color: #000;
        text-decoration: none;
      }
      .map_wrap,
      .toastui-editor-popup-body {
        position: relative;
        width: 100%;
        height: 500px;
      }
      #menu_wrap {
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        width: 350px;
        margin: 10px 0 30px 10px;
        padding: 5px;
        overflow-y: auto;
        background: rgba(255, 255, 255, 0.7);
        z-index: 1;
        font-size: 12px;
        border-radius: 10px;
      }
      .bg_white {
        background: #fff;
      }
      #menu_wrap hr {
        display: block;
        height: 1px;
        border: 0;
        border-top: 2px solid #5f5f5f;
        margin: 3px 0;
      }
      #menu_wrap .option {
        text-align: center;
      }
      #menu_wrap .option p {
        margin: 10px 0;
      }
      #menu_wrap .option button {
        margin-left: 5px;
      }
      #placesList li {
        list-style: none;
      }
      #placesList .item {
        position: relative;
        border-bottom: 1px solid #888;
        overflow: hidden;
        cursor: pointer;
        min-height: 65px;
      }
      #placesList .item span {
        display: block;
        margin-top: 4px;
      }
      #placesList .item h5,
      #placesList .item .info {
        text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
      }
      #placesList .item .info {
        padding: 10px 0 10px 55px;
      }
      #placesList .info .gray {
        color: #8a8a8a;
      }
      #placesList .info .jibun {
        padding-left: 26px;
        background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
          no-repeat;
      }
      #placesList .info .tel {
        color: #009900;
      }
      #placesList .item .markerbg {
        float: left;
        position: absolute;
        width: 36px;
        height: 37px;
        margin: 10px 0 0 10px;
        background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
          no-repeat;
      }
      #placesList .item .marker_1 {
        background-position: 0 -10px;
      }
      #placesList .item .marker_2 {
        background-position: 0 -56px;
      }
      #placesList .item .marker_3 {
        background-position: 0 -102px;
      }
      #placesList .item .marker_4 {
        background-position: 0 -148px;
      }
      #placesList .item .marker_5 {
        background-position: 0 -194px;
      }
      #placesList .item .marker_6 {
        background-position: 0 -240px;
      }
      #placesList .item .marker_7 {
        background-position: 0 -286px;
      }
      #placesList .item .marker_8 {
        background-position: 0 -332px;
      }
      #placesList .item .marker_9 {
        background-position: 0 -378px;
      }
      #placesList .item .marker_10 {
        background-position: 0 -423px;
      }
      #placesList .item .marker_11 {
        background-position: 0 -470px;
      }
      #placesList .item .marker_12 {
        background-position: 0 -516px;
      }
      #placesList .item .marker_13 {
        background-position: 0 -562px;
      }
      #placesList .item .marker_14 {
        background-position: 0 -608px;
      }
      #placesList .item .marker_15 {
        background-position: 0 -654px;
      }
      #pagination {
        margin: 10px auto;
        text-align: center;
      }
      #pagination a {
        display: inline-block;
        margin-right: 10px;
      }
      #pagination .on {
        font-weight: bold;
        cursor: default;
        color: #777;
      }
    </style>

<!-- Main RTL CSS -->
<!--<link rel="stylesheet" type="text/css" href="css/rtl.min.css">-->
<link rel="stylesheet"
	href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css">

</head>
<body class="page-has-left-panels page-has-right-panels">


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


	<!-- Fixed Sidebar Left -->

	<div class="header--standard header--standard-landing"
		id="header--standard">
		<div class="container" >
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

				<div class="nav nav-pills nav1 header-menu">
					<div class="mCustomScrollbar">
						<ul>
							<li class="nav-item"><a href="00-MainPage.html">메인 페이지</a></li>
							<li class="nav-item dropdown"><a
								href="02-RecommendPost.html">여행 추천지</a></li>
							<li class="nav-item dropdown dropdown-has-megamenu"><a
								href="97-BlogPostBoard.html">블로그 게시판</a></li>
							<li class="nav-item"><a href="03-Myblog.html">내 블로그</a></li>
							<li class="nav-item"><a href="55-HoneyTipBoard.html">꿀팁
									게시판</a></li>
							<li class="nav-item"><a href="#">전국 날씨예보</a></li>
							<li class="close-responsive-menu js-close-responsive-menu">
								<svg class="olymp-close-icon">
									<use xlink:href="#olymp-close-icon"></use></svg>
							</li>
							<li class="nav-item js-expanded-menu"><a href="#"
								class="menu-link"><img src="/resources/img/menu-bar.png"
									style="width: 26px; height: 26px;"></a></li>
							<li class="lang-set-item"><a href="#" class="change-lang"><img
									src="/resources/img/changeLang.png"
									style="width: 26px; height: 26px;"></a></li>
							<li class="login-set-item"><a href="01-LoginPage.html"
								class="login-user"><img src="/resources/img/login-user.png"
									class="login-user-menu"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ... end Fixed Sidebar Left -->

	<div class="main-header-post" style="position: relative;">
		<img loading="lazy" src="/resources/img/wall03_1920.jpg" alt="author"
			width="1229" height="480">

		<!-- 3개의 탭 -->
		<div class="tabs"
			style="position: absolute; bottom: 10px; right: 10px; display: flex; z-index: 10;">
			<a href="03-Myblog.html" class="btn btn-primary btn-md-2"
				style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">게시물</a>
			<a href="03-MyblogMap.html" class="btn btn-primary btn-md-2"
				style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">지도</a>
			<a href="/blog/exchange" class="btn btn-primary btn-md-2"
				style="background-color: #9edbff; border-color: #9eb3ff; margin-left: 5px;">일정</a>
		</div>
	</div>


	<div class="container"  >
		<div class="row">

			<!-- Main Content -->

			<!-- Main Content Section -->
			<div class="container" >
				<div class="row">
					<main
						class="col col-xl-8 order-xl-2 col-lg-12 order-lg-1 col-md-12 col-sm-12 col-12"
						style="margin-left: 85px;">
						<div class="ui-block">
							<div class="news-feed-form">
								<!-- Nav tabs -->
								<ul class="nav nav-tabs" style="justify-content: end;"
									role="tablist">
									<li class="nav-item"><a
										class="nav-link active inline-items" data-bs-toggle="tab"
										href="#home-1" role="tab" aria-expanded="true"> <svg
												class="olymp-status-icon">
												<use xlink:href="#olymp-status-icon"></use></svg> <span>글
												작성</span>
									</a></li>
								</ul>

								<!-- Tab panes -->
								<div class="tab-content">
									<div class="tab-pane fade active show" id="home-1"
										role="tabpanel" aria-expanded="true">
										
											<div class="create-post">
												<div class="form-group">
													<label for="post-title">제목</label> <input name="title"
														class="form-control" id="post-title">
												</div>
												<div class="form-group">
													<label for="post-hashTags">해시태그</label> <input name="hashTag"
														class="form-control" id="hashTag" placeholder = "해시태그 구분은 띄어쓰기로 해주세요">
												</div>
												<div class="form-group">
													<label for="address">추가한 주소</label> <div  style = "display:none"
														class="form-control" id="address">
												</div>

											
												<div id="content"></div>
											</div>
											<div class="form-group">
												<label>nickName</label> <input class="form-control"
													name="nickName" readonly="readonly"
													value="${nickName }">
											</div>
											<div class="add-options-message">
												<button type="button" id="submitBtn" class="btn btn-primary btn-md-2"
												onclick=savePost()>등록</button>
												<a href="/blog/list"  class="btn btn-md-2 btn-border-think btn-transparent c-grey">취소</a>
											</div>
										
									</div>
								</div>
							</div>
						</div>
					</main>
				</div>
			</div>
		</div>
	</div>



	<!-- JS Scripts -->
	<script src="/resources/js/jQuery/jquery-3.5.1.min.js"></script>

	<script src="/resources/js/libs/jquery.mousewheel.min.js"></script>
	<script src="/resources/js/libs/perfect-scrollbar.min.js"></script>
	<script src="/resources/js/libs/imagesloaded.pkgd.min.js"></script>
	<script src="/resources/js/libs/material.min.js"></script>
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
 <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=04720162558616bc3b85cfe657ce599d&libraries=services"
    ></script>

    <script type="text/javascript">
      const container = document.createElement("div");
      container.setAttribute("class", ".toastui-editor-popup-body");

      container.setAttribute("style", "width : 58rem; height : 28rem");

      const menu = document.createElement("div");
      menu.setAttribute("id", "menu_wrap");
      menu.setAttribute("class", "bg_white");

      container.appendChild(menu);

      const option = document.createElement("div");
      option.setAttribute("class", "option");

      menu.appendChild(option);

      const wrapDiv = document.createElement("div");

      option.appendChild(wrapDiv);

      const form = document.createElement("form");
      form.setAttribute("onsubmit", "searchPlaces(); return false");

      wrapDiv.appendChild(form);

      const formInput = document.createElement("input");
      formInput.setAttribute("placeholder", "키워드를 입력하세요");
      formInput.setAttribute("id", "keyword");
      formInput.setAttribute("size", "15");
      formInput.setAttribute("contenteditable", "true");
      formInput.setAttribute("name", "keyword");

      form.appendChild(formInput);

      const hr = document.createElement("hr");

      option.appendChild(hr);

      let buttonText = document.createTextNode("검색하기");

      const submitButton = document.createElement("button");
      submitButton.setAttribute("type", "submit");
      submitButton.appendChild(buttonText);

      form.appendChild(submitButton);

      const page = document.createElement("div");
      page.setAttribute("id", "pagination");

      const placeList = document.createElement("ul");
      placeList.setAttribute("id", "placesList");

      option.appendChild(placeList);
      option.appendChild(page);

      const editor = new toastui.Editor({
        el: document.querySelector("#content"), // 에디터를 적용할 요소 (컨테이너)
        height: "500px", // 에디터 영역의 높이 값 (OOOpx || auto)
        initialEditType: "markdown", // 최초로 보여줄 에디터 타입 (markdown || wysiwyg)
        initialValue: "내용을 입력해 주세요.", // 내용의 초기 값으로, 반드시 마크다운 문자열 형태여야 함
        previewStyle: "vertical", // 마크다운 프리뷰 스타일 (tab || vertical)
        toolbarItems: [
          ["heading", "bold", "italic", "strike"],
          ["hr", "quote"],
          ["ul", "ol", "task", "indent", "outdent"],
          ["table", "image", "link"],
          ["code", "codeblock"],
          ["scrollSync"],
          [
            {
              name: "map",
              tooltip: "장소 추가하기",
              popup: {
                body: container,
                style: { height: "30rem", width: "60rem" },
              },
              text: "m",
              className: "toastui-editor-toolbar-maps",
              style: { backgroundImage: "none", color: "green" },
              // `strong` 노드에 위치할 경우 툴바 요소에 'active' 클래스가 추가된다.
            },
          ],
        ],
        hooks: {
            async addImageBlobHook(blob, callback) {
              // 이미지 업로드 로직 커스텀
              try {
                /*
                 * 1. 에디터에 업로드한 이미지를 FormData 객체에 저장
                 *    (이때, 컨트롤러 uploadEditorImage 메서드의 파라미터인 'image'와 formData에 append 하는 key('image')값은 동일해야 함)
                 */
                const formData = new FormData();
                formData.append("image", blob);

                // 2. FileApiController - uploadEditorImage 메서드 호출
                const response = await fetch("/editor/image-upload", {
                  method: "POST",
                  body: formData,
                });

                // 3. 컨트롤러에서 전달받은 디스크에 저장된 파일명
                const filename = await response.text();
                console.log("서버에 저장된 파일명 : ", filename);

                // 4. addImageBlobHook의 callback 함수를 통해, 디스크에 저장된 이미지를 에디터에 렌더링
                const imageUrl = `/editor/image-print?filename=${filename}`;
                callback(imageUrl, "image alt attribute");
              } catch (error) {
                console.error("업로드 실패 : ", error);
              }
            },
          }
      });

      document
        .querySelector(".toastui-editor-toolbar-maps")
        .setAttribute("onclick", "relayout()");
    </script>

    <script type="text/javascript">
      var markers = [];
      
      const navs = [];

      var mapContainer = document.querySelector(".toastui-editor-popup-body"), // 지도를 표시할 div
        mapOption = {
          center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
          level: 3, // 지도의 확대 레벨
        };

      // 지도를 생성합니다
      var map = new kakao.maps.Map(mapContainer, mapOption);

      // 장소 검색 객체를 생성합니다
      var ps = new kakao.maps.services.Places();

      // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
      var infowindow = new kakao.maps.InfoWindow({ zIndex: 1 });

      // 키워드로 장소를 검색합니다
      searchPlaces();

      // 키워드 검색을 요청하는 함수입니다
      function searchPlaces() {
        const keyword = document.getElementById("keyword").value;

        if (!keyword.replace(/^\s+|\s+$/g, "")) {
          alert("키워드를 입력해주세요!");
          return false;
        }

        // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
        ps.keywordSearch(keyword, placesSearchCB);
      }

      // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
      function placesSearchCB(data, status, pagination) {
        console.log("data", data);

        console.log("status", status);

        console.log("pagination", pagination);

        if (status === kakao.maps.services.Status.OK) {
          // 정상적으로 검색이 완료됐으면
          // 검색 목록과 마커를 표출합니다
          displayPlaces(data);

          // 페이지 번호를 표출합니다
          displayPagination(pagination);
        } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
          alert("검색 결과가 존재하지 않습니다.");
          return;
        } else if (status === kakao.maps.services.Status.ERROR) {
          alert("검색 결과 중 오류가 발생했습니다.");
          return;
        }
      }

      // 검색 결과 목록과 마커를 표출하는 함수입니다
      function displayPlaces(places) {
        console.log("places", places);

        var listEl = document.getElementById("placesList"),
          menuEl = document.getElementById("menu_wrap"),
          fragment = document.createDocumentFragment(),
          bounds = new kakao.maps.LatLngBounds(),
          listStr = "";

        // 검색 결과 목록에 추가된 항목들을 제거합니다
        removeAllChildNods(listEl);

        // 지도에 표시되고 있는 마커를 제거합니다
        removeMarker();

        for (var i = 0; i < places.length; i++) {
          // 마커를 생성하고 지도에 표시합니다
          var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i),
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

          // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
          // LatLngBounds 객체에 좌표를 추가합니다
          bounds.extend(placePosition);

          // 마커와 검색결과 항목에 mouseover 했을때
          // 해당 장소에 인포윈도우에 장소명을 표시합니다
          // mouseout 했을 때는 인포윈도우를 닫습니다
          (function (marker, title) {
            kakao.maps.event.addListener(marker, "mouseover", function () {
              displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, "mouseout", function () {
              infowindow.close();
            });

            itemEl.onmouseover = function () {
              displayInfowindow(marker, title);
            };
            kakao.maps.event.addListener(marker, "click", function () {
                let markinfo = {
                  title: title,
                  coord: marker.getPosition(),
                };
                navs.push(markinfo);
                console.log(navs);
                document
                  .querySelector(".toastui-editor-popup")
                  .setAttribute("style", "display:none");
			const add =	document
					.querySelector("#address");
			add.setAttribute("style","display:block"); 
				
				let hr = document.createElement("span");
				
				hr.setAttribute("style","cursor:pointer");
				hr.setAttribute("onclick","display()"); 

			      

			      let text = document.createTextNode(markinfo.title);
			      
			      hr.appendChild(text);
			      
			      add.appendChild(hr); 
				
                 
              });

            itemEl.onmouseout = function () {
              infowindow.close();
            };
          })(marker, places[i].place_name);

          fragment.appendChild(itemEl);
        }

        // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
        listEl.appendChild(fragment);
        menuEl.scrollTop = 0;

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
      }
      
      function display() {
    	  
    	  const li = event.target;
    	  li.remove();
      }

      // 검색결과 항목을 Element로 반환하는 함수입니다
      function getListItem(index, places) {
        var el = document.createElement("li"),
          itemStr =
            '<span class="markerbg marker_' +
            (index + 1) +
            '"></span>' +
            '<div class="info">' +
            "   <h5>" +
            places.place_name +
            "</h5>";

        if (places.road_address_name) {
          itemStr +=
            "    <span>" +
            places.road_address_name +
            "</span>" +
            '   <span class="jibun gray">' +
            places.address_name +
            "</span>";
        } else {
          itemStr += "    <span>" + places.address_name + "</span>";
        }

        itemStr += '  <span class="tel">' + places.phone + "</span>" + "</div>";

        el.innerHTML = itemStr;
        el.className = "item";

        return el;
      }

      // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
      function addMarker(position, idx, title) {
        var imageSrc =
            "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png", // 마커 이미지 url, 스프라이트 이미지를 씁니다
          imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
          imgOptions = {
            spriteSize: new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin: new kakao.maps.Point(0, idx * 46 + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37), // 마커 좌표에 일치시킬 이미지 내에서의 좌표
          },
          markerImage = new kakao.maps.MarkerImage(
            imageSrc,
            imageSize,
            imgOptions
          ),
          marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage,
          });

        marker.setMap(map); // 지도 위에 마커를 표출합니다
        markers.push(marker); // 배열에 생성된 마커를 추가합니다

        return marker;
      }

      // 지도 위에 표시되고 있는 마커를 모두 제거합니다
      function removeMarker() {
        for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(null);
        }
        markers = [];
      }

      // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
      function displayPagination(pagination) {
        var paginationEl = document.getElementById("pagination"),
          fragment = document.createDocumentFragment(),
          i;

        // 기존에 추가된 페이지번호를 삭제합니다
        while (paginationEl.hasChildNodes()) {
          paginationEl.removeChild(paginationEl.lastChild);
        }

        for (i = 1; i <= pagination.last; i++) {
          var el = document.createElement("a");
          el.href = "#";
          el.innerHTML = i;

          if (i === pagination.current) {
            el.className = "on";
          } else {
            el.onclick = (function (i) {
              return function () {
                pagination.gotoPage(i);
              };
            })(i);
          }

          fragment.appendChild(el);
        }
        paginationEl.appendChild(fragment);
      }

      // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
      // 인포윈도우에 장소명을 표시합니다
      function displayInfowindow(marker, title) {
        var content = '<div style="padding:5px;z-index:1;">' + title + "</div>";

        infowindow.setContent(content);
        infowindow.open(map, marker);
      }

      // 검색결과 목록의 자식 Element를 제거하는 함수입니다
      function removeAllChildNods(el) {
        while (el.hasChildNodes()) {
          el.removeChild(el.lastChild);
        }
      }

      function relayout() {
        // 지도를 표시하는 div 크기를 변경한 이후 지도가 정상적으로 표출되지 않을 수도 있습니다
        // 크기를 변경한 이후에는 반드시  map.relayout 함수를 호출해야 합니다
        // window의 resize 이벤트에 의한 크기변경은 map.relayout 함수가 자동으로 호출됩니다
        map.relayout();
      }
      
      function savePost() {
          if (editor.getMarkdown().length < 1) {
            alert("에디터 내용을 입력해 주세요.");
            throw new Error("editor content is required!");
          }

          const url = "/blog/created";
   
          const params = {
            navs: navs,
            tag: document.getElementById("hashTag").value,
            title: document.getElementById("post-title").value,
            content: editor.getHTML(),
          };

          try {
            const request = fetch(url, {
              method: "POST",
              headers: {
                "Content-Type": "application/json; charset=utf-8;",
              },
              body: JSON.stringify(params),
            });
            console.log(params);
          } catch (error) {
            console.error("저장 실패 : ", error);
            console.log(params);
          }
        }
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