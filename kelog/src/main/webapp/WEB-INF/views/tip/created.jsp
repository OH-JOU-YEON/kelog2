<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../includes/header.jsp"%>

<%
request.setCharacterEncoding("UTF-8");

String url = (String) request.getAttribute("url");
String filename = (String) request.getAttribute("filename");

StringBuilder sbHtml = new StringBuilder();

sbHtml.append("{");
sbHtml.append("\"url\" : \"" + url + "\",");
sbHtml.append("\"filename\" : \"" + filename + "\"");
sbHtml.append("}");

out.println(sbHtml);
%>

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">팁게시판</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- end row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<form id="fom" action="/tip/created" method="post">
						<div class="form-group">
							<label>Title</label> <input name="title" class="form-control">
						</div>
						<!--end form-group  -->
						<div class="form-group">
							<label>Content</label>
							<textarea id="content" name="content" class="form-control"
								style="display: none;"></textarea>
						</div>
						<!--end form-group  -->
						<div id="editor"></div>

						<div class="form-group">
							<label>nickName</label> <input readonly="readonly"
							id="nickName" class="form-control" name="nickName"value="${nickName}">
						</div>
						<!--end form-group  -->
						<button type="button" id="submitBtn" class="btn btn-success">Submit</button>
						<button type="reset" class="btn btn-success">reset</button>
					</form>
				</div>
				<!-- end panel-body -->
			</div>
			<!--end panel panel-default -->
		</div>
		<!--end col-lg-12 -->
	</div>
	<!--end row -->
</div>
<!-- end page-wrapper -->
<script type="text/javascript">
const editor = new toastui.Editor({
    el: document.querySelector('#editor'),      // 에디터를 적용할 요소 (컨테이너)
    height: '500px',                             // 에디터 영역의 높이 값 (OOOpx || auto)
    initialEditType: 'markdown',                 // 최초로 보여줄 에디터 타입 (markdown || wysiwyg)
    initialValue: '',                            // 내용의 초기 값으로, 반드시 마크다운 문자열 형태여야 함
    previewStyle: 'vertical',                    // 마크다운 프리뷰 스타일 (tab || vertical)
    placeholder: '내용을 입력해 주세요.',
    hooks: {
        async addImageBlobHook(blob, callback) {
          try {
            const formData = new FormData();
            formData.append("image", blob);
            const response = await fetch("/tui-editor/image-upload", {
              method: "POST",
              body: formData,
            });

            const filename = await response.text();
            console.log("서버에 저장된 파일명 : ", filename);

            const imageUrl = `C:/tui-editor/image-print?filename=${filename}`;
            callback(imageUrl, "image alt attribute");
          } catch (error) {
            console.error("업로드 실패 : ", error);
          }
          
        }
    }
});

// 폼 제출 전에 Editor의 내용을 textarea에 저장
$('#submitBtn').on('click', function() {
	// 에디터의 HTML 값을 숨겨진 textarea에 저장
	$('#content').val(editor.getHTML());

	// 디버깅용 콘솔 로그
	console.log("전송할 Title:", $("textarea[name='title']").val());
	console.log("전송할 Content:", $('#content').val());
	console.log("전송할 niceName:", $('#niceName').val());

	// 폼 제출
	$("#fom").submit();
});
</script>
<%@include file="../includes/footer.jsp"%>