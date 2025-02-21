<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../includes/header.jsp"%>
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">추천게시판</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- end row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<form id="fom" action="/travel/created" method="post">
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
								class="form-control" name="nickName">
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
		el : document.querySelector('#editor'),
		height : '500px',
		initialEditType : 'markdown',
		previewStyle : 'vertical'
	});


// 폼 제출 전에 Editor의 내용을 textarea에 저장
$('#submitBtn').on('click', function() {
	// 에디터의 HTML 값을 숨겨진 textarea에 저장
	$('#content').val(editor.getHTML());

	// 디버깅용 콘솔 로그
	console.log("전송할 Title:", $("textarea[name='title']").val());
	console.log("전송할 Content:", $('#content').val());

	// 폼 제출
	$("#fom").submit();
});
</script>
<%@include file="../includes/footer.jsp"%>