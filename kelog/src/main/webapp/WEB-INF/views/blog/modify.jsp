<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="formattedRegDate">
	<fmt:formatDate pattern="yyyy-MM-dd a hh:mm:ss" value="${dto.regDate }" />
</c:set>

<%@include file="../includes/header.jsp"%>
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Post Read</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- end row -->


	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<form role="form">
						<input class="form-control" name="blogPostNo" type="hidden" value="${dto.blogPostNo}">
						<div class="form-group">
							<label>Title</label> <input class="form-control" name="title"
								value="${dto.title }">
						</div>
						<!--end form-group  -->
						<div class="form-group">
							<label>Content</label>
							<textarea id="editor" class="form-control" rows="3" name="content"  style="display:none;">${dto.content }</textarea>
						</div>
							<div id="viewer"></div>
						<!--end form-group  -->
						<div class="form-group">
							<label>nickName</label> <input class="form-control" name="nickName"
								readonly="readonly" value="${dto.nickName }">
						</div>
						<div class="form-group">
							<label>RegDate</label> 
							<input class="form-control" name="regDate" disabled="disabled" value="${formattedRegDate }">
						</div>						
						<!--end form-group  -->
						
						<!-- 사용자 지정 속성 (커스텀 데이터 속성) -->
						<button type="button" class="btn btn-primary" data-oper="modify">Modify</button>
						<button type="button" class="btn btn-danger" data-oper="remove">Remove</button>
						<button type="button" class="btn btn-success" data-oper="list">List</button>
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
$(function(){
	var formObj = $("form");
	
	$(".btn").on("click",function(e){
		e.preventDefault(); // 기존에 갖고있는 이벤트 무효화
		
		let operation = $(this).data("oper");
		console.log(operation);
		
		if(operation === "modify"){
			formObj.attr("action","/blog/modify").attr("method","post");
		}else if (operation === "remove"){
			formObj.attr("action","/blog/remove").attr("method","post");
		}else if (operation === "list"){
			formObj.attr("action","/blog/list").attr("method","get");
		}
		formObj.submit();
	});
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
});

</script>
<%@include file="../includes/footer.jsp"%>