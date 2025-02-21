<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="../includes/header.jsp"%>
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">Tables</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					DataTables Advanced Tables
					<button id="regBtn" type="button"
						class="btn btn-default btn-xs pull-right">Register</button>
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<table width="100%"
						class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>travelBoardNo</th>
								<th>TITLE</th>
								<th>CONTENT</th>
								<th>NICKNAME</th>
								<th>REGDATE</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="vo" items="${list }">
								<tr>
									<td>${vo.travelBoardNo }</td>
									<td>${vo.title }</td>
									<td><a href="/travel/read?travelBoardNo=${vo.travelBoardNo }">${vo.content }</a></td>
									<td>${vo.nickName }</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd a hh:mm:ss"
											value="${vo.regDate }" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- /.table-responsive -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
</div>
<!-- /#page-wrapper -->

<div id="mymodal" class="modal" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Modal title</h5>
				<button type="button" class="close" data-bs-dismiss="modal"
					aria-label="Close">
					<span>&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p>Modal body text goes here.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" 
					data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">

	function checkModal(result) {
		if (result === '') {
			return;
			
		}else if(result === 'mod'){
			
			$(".modal-body").html("정상적으로 수정되었습니다.")
			
		}else if(result === 'del'){
			
			$(".modal-body").html("정상적으로 삭제되었습니다.")
			
		}else if (parseInt(result) > 0) {
			
			$(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다.")
		}
		$("#mymodal").modal("show");
	}

	$(document).ready(function() {
		$("#regBtn").on("click", function() {
			self.location = "/travel/created";
		});

		$(".close, .btn-secondary").on("click", function() {
			$("#mymodal").modal("hide");
		});

		var result = '${result}';
		checkModal(result);

	});
</script>
<%@include file="../includes/footer.jsp"%>

