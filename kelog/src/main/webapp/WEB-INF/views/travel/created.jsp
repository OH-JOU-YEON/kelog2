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
	    hooks: {
	    	addImageBlobHook: (blob, callback) => {
	    		// blob : Java Script 파일 객체
	    		//console.log(blob);
	    		
	    		const formData = new FormData();
	        	formData.append('image', blob);
	        	
	        	let url = '/images/';
	   			$.ajax({
	           		type: 'POST',
	           		enctype: 'multipart/form-data',
	           		url: '/travel/created',
	           		data: formData,
	           		dataType: 'json',
	           		processData: false,
	           		contentType: false,
	           		cache: false,
	           		timeout: 600000,
	           		success: function(data) {
	           			//console.log('ajax 이미지 업로드 성공');
	           			url += data.filename;
	           			
	           			// callback : 에디터(마크다운 편집기)에 표시할 텍스트, 뷰어에는 imageUrl 주소에 저장된 사진으로 나옴
	        			// 형식 : ![대체 텍스트](주소)
	           			callback(url, '사진 대체 텍스트 입력');
	           		},
	           		error: function(e) {
	           			//console.log('ajax 이미지 업로드 실패');
	           			//console.log(e.abort([statusText]));
	           			
	           			callback('image_load_fail', '사진 대체 텍스트 입력');
	           		}
	           	});
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

	// 폼 제출
	$("#fom").submit();
});
</script>
<%@include file="../includes/footer.jsp"%>