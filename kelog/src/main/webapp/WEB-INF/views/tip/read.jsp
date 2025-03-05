<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="formattedRegDate">
	<fmt:formatDate pattern="yyyy-MM-dd a hh:mm:ss" value="${dto.regDate }" />
</c:set>

<%@include file="../includes/header.jsp"%>
<div id="reportModal" class="modal">
	<div class="modal-content">
		<span class="close-btn" id="closeModal">&times;</span>
		<h2>게시글 신고</h2>
		<form id="reportForm">
			<form>
				<div class="form-group">
					<label>게시판 제목</label><input class="form-control" type="text"
						readonly="readonly" name="title" value="${dto.title }">
				</div>
				<div class="form-group">
					<label>신고자</label><input class="form-control" type="text"
						readonly="readonly" name="nickName" value="${nickName}">
				</div>
				<div class="form-group">
					<label>신고 사유</label><select>
						<option selected>::선택하세요::</option>
						<option>불법정보</option>
						<option>욕설/인신공격</option>
						<option>음란성/선정성</option>
						<option>영리목적/홍보성</option>
						<option>개인정보노출</option>
					</select>
				</div>
			</form>
			<div class="modal-actions">
				<button type="submit" class="btn btn-danger">신고</button>
				<button type="button" class="btn btn-secondary" id="cancelBtn">취소</button>
			</div>
		</form>
	</div>
</div>
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
					<input class="form-control" id="tipBoardNo" type="hidden" name="tipBoardNo"
						value="${dto.tipBoardNo }">

					<!--end form-group  -->
					<div class="form-group">
						<label>Title</label> <input class="form-control" name="title"
							readonly="readonly" value="${dto.title }">
					</div>
					<!--end form-group  -->
					<div class="form-group">
						<label>Content</label>
						<div id="editor" style="display: none;">${dto.content}</div>
					</div>
					<div id="viewer"></div>
					<!--end form-group  -->
					<div class="form-group">
						<label>Writer</label> <input class="form-control" name="nickName"
							readonly="readonly" value="${dto.nickName }">
					</div>
					<div class="form-group">
						<label>RegDate</label> <input class="form-control" name="regDate"
							readonly="readonly" value="${formattedRegDate }">
					</div>
					<!--end form-group  -->
					<c:if test="${dto.nickName == nickName }">
					<a class="btn btn-success" href="/tip/modify?tipBoardNo=${dto.tipBoardNo }">Modify</a>
					</c:if>
					<a class="btn btn-success" href="/tip/list">List</a> 
					<a href="#" class="btn btn-success post-category bg-primary" id="reportBtn" style="position: absolute; right: 0;">신고하기</a>
					<!-- Button trigger modal -->
				</div>
				<!-- end panel-body -->
			</div>
			<!--end panel panel-default -->
		</div>
		<!--end col-lg-12 -->
		<div class="col-lg-12">
			<div class="panel panel-default">

				<div class="panel-heading">
					Replies
					<div class="input-group col-lg-6 pull-right">
						<input id="btn-input" name="content" type="text"
							class="form-control input-sm" placeholder="댓글을 입력해 주세요"
							required="required"> <span class="input-group-btn">
							<button class="btn btn-warning btn-sm" id="btn-chat" >등록</button>
						</span>
					</div>

					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="table-responsive table-bordered">
							<table class="table">
								<thead>
									<tr>
										<th>nickName</th>
										<th>content</th>
										<th>regDate</th>
									</tr>
								</thead>
								<tbody>

								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
		</div>
		<!--end row -->
	</div>
	<!--end row -->
</div>
<!-- end page-wrapper -->
<!-- Button trigger modal -->


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

						var row = $("<tr>");
						row.append($("<td>").text(reply.nickName));
						row.append($("<td>").text(reply.content));
						row.append($("<td>").text(formattedUpdateDate));
						if(reply.nickName === "${nickName}"){
						row.append($("<td>").html("<a href='/tipreply/delete?tipReplyNo="+reply.tipReplyNo+"&tipBoardNo="+$("#tipBoardNo").val()+"'}>삭제</a>"));						
						}
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

						var row = $("<tr>");
						row.append($("<td>").text(data.nickName));
						row.append($("<td>").text(data.content));
						row.append($("<td>").text(formattedUpdateDate));
						if(data.nickName === "${nickName}"){
							row.append($("<td>").html("<a href='/tipreply/delete?tipReplyNo="+data.tipReplyNo+"&tipBoardNo="+$("#tipBoardNo").val()+"'}>삭제</a>"));				
							}
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
		const checkboxes = document
				.querySelectorAll('input[name="reportReason"]:checked');
		checkboxes.forEach(function(checkbox) {
			checkedReasons.push(checkbox.value);
		});

		const details = event.target.details.value;

		if (checkedReasons.length > 0 || details.trim() !== '') {
			alert('신고 되었습니다');
			// 신고를 서버로 전송하는 코드 추가 할 자리
			reportModal.style.display = 'none'; // 신고 후 모달창 닫음
		} else {
			alert('신고 사유를 선택 또는 상세 내용을 입력해주세요.');
		}
	}
</script>
<script>
	$(function() {

		ToView();
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
<%@include file="../includes/footer.jsp"%>