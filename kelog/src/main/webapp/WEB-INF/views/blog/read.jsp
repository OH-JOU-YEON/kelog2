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
		<form id="reportForm" method="post" action="/blog/report">
			<input class="form-control" type="hidden" name="blogPostNo"
				value="${dto.blogPostNo }">
			<div class="form-group">
				<label>게시판 제목</label><input class="form-control" type="text"
					readonly="readonly" name="title" value="${dto.title }">
			</div>
			<div class="form-group">
				<label>신고자</label><input class="form-control" type="text"
					readonly="readonly" name="nickName" value="${user.nickName}">
			</div>
			<div class="form-group">
				<label>신고 사유</label> <select name="reportReason">
					<option selected>::선택하세요::</option>
					<option value="불법정보">불법정보</option>
					<option value="욕설/인신공격">욕설/인신공격</option>
					<option value="음란성/선정성">음란성/선정성</option>
					<option value="영리목적/홍보성">영리목적/홍보성</option>
					<option value="개인정보노출">개인정보노출</option>
				</select>
			</div>

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
			<h1 class="page-header">BlogPost Read</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- end row -->

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<input class="form-control" type="hidden" name="blogPostNo"
						value="${dto.blogPostNo }">

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

					<p id="likeCount">좋아요: ${dto.likeCnt}</p>

					<button id="likeButton${dto.blogPostNo}"
						onclick="toggleLike(${dto.blogPostNo})">${isliked ? '좋아요 취소' : '좋아요'}</button>
					<!--end form-group  -->
					<c:if test="${dto.nickName == user.nickName }">
						<a class="btn btn-success"
							href="/blog/modify?blogPostNo=${dto.blogPostNo }">Modify</a>
					</c:if>
					<a class="btn btn-success" href="/blog/list">List</a> <button
						class="btn btn-success post-category bg-primary" id="reportBtn"
						style="position: absolute; right: 0;">신고하기</button>
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

</script>



<script>
		    
			    $(function(){
		        	ToView();
		        });
		        
		        /*토스트 UI */
	    		const content = [].join('\n');
		        
	    		 
		        
	    	    const editor = new toastui.Editor({
		               el: document.querySelector('#editor'),	
		           });
	    	    
	    	    /*토스트 UI 뷰어 */	
		        const viewer = toastui.Editor.factory({
		            el: document.querySelector('#viewer'),
		            viewer: true,
		            height: '500px',
		            initialEditType : 'wysiwyg',
		            initialValue: content
		            
		        });

		        function ToView(){
		            viewer.setMarkdown(editor.getHTML());
		        };

		    </script>

<script>
function toggleLike(blogPostNo) {
	
    var email = '${user.email}';  // 세션에서 사용자 ID 가져오기 (예시)

    console.log(email);
    
    if (!email) {
        alert("로그인 후 좋아요를 누를 수 있습니다.");
        return;  // 로그인되지 않으면 더 이상 진행하지 않음
    }
    
    $.ajax({
        url: '/blog/like',
        type: 'POST',
        data: { blogPostNo: blogPostNo },
        success: function() {
        	var currentLikeCount = parseInt($('#likeCount').text().replace('좋아요: ', ''));
        	console.log("성공");
            // 좋아요 버튼 상태 변경
            let likeButton = document.getElementById("likeButton" + blogPostNo);
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
<%@include file="../includes/footer.jsp"%>