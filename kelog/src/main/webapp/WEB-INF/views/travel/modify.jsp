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
						<div class="form-group">
							<label>travelNo</label> <input class="form-control" name="travelNo"
								readonly="readonly" value="${dto.travelNo }">
						</div>
						<div class="form-group">
							<label>Title</label> <input class="form-control" name="title"
								value="${dto.title }">
						</div>
						<!--end form-group  -->
						<div class="form-group">
							<label>Content</label>
							<textarea class="form-control" rows="3" name="content">${dto.content }</textarea>
						</div>
						<!--end form-group  -->
						<div class="form-group">
							<label>Writer</label> <input class="form-control" name="nickName"
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
			formObj.attr("action","/travel/modify").attr("method","post");
		}else if (operation === "remove"){
			formObj.attr("action","/travel/remove").attr("method","post");
		}else if (operation === "list"){
			formObj.attr("action","/travel/list").attr("method","get");
		}
		formObj.submit();
	});
});

</script>
<%@include file="../includes/footer.jsp"%>