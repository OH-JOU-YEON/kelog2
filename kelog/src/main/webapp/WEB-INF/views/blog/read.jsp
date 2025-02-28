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
			<h1 class="page-header">BlogPost Read</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- end row -->

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					 <input class="form-control" type="hidden"
							name="blogPostNo" value="${dto.blogPostNo }">

					<!--end form-group  -->
					<div class="form-group">
						<label>Title</label> <input class="form-control" name="title"
							readonly="readonly" value="${dto.title }">
					</div>
					<!--end form-group  -->
					<div class="form-group">
						<label>Content</label>
						<div id="editor" style="display:none;">${dto.content}</div>
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
					
					<button id="likeButton" data-board-id="${dto.blogPostNo}">좋아요</button>
					<!--end form-group  -->
					<c:if test="${dto.nickName == user.nickName }">
						<a class="btn btn-success" href="/blog/modify?blogPostNo=${dto.blogPostNo }">Modify</a>
					</c:if>
					<a class="btn btn-success" href="/blog/list">List</a>
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
$(document).ready(function() {
    // 좋아요 버튼 클릭 이벤트
    $('#likeButton').on('click', function() {
        var blogPostNo = $(this).data('board-id');  // 게시물 번호
        var userId = '${sessionScope.userId}';  // 세션에서 사용자 ID 가져오기 (예2        // 좋아요 상태에 따라 AJAX 요청을 다르게 보냄
        var url = ($("#likeButton").text() === '좋아요') ? '/blog/like' : '/blog/unlike';
        var action = ($("#likeButton").text() === '좋아요') ? 'like' : 'unlike';

        $.ajax({
            url: url,  // 좋아요/좋아요 취소에 맞는 URL로 요청
            type: 'POST',  // HTTP 메소드
            data: {
            	blogPostNo: blogPostNo,
                //userId: userId
            },
            dataType: "json",
            success: function(updatedLikeCount) {
                // 서버에서 받아온 업데이트된 좋아요 수로 갱신
                 var currentLikeCount = parseInt($('#likeCount').text().replace('좋아요: ', ''));

                // 좋아요 상태에 따라 카운트를 +1 또는 -1
                if (action === 'like') {
                    currentLikeCount += 1;  // 좋아요 눌렀을 때 +1
                } else {
                    currentLikeCount -= 1;  // 좋아요 취소했을 때 -1
                }

                // 새로운 좋아요 수 갱신
                $('#likeCount').html('좋아요: ' + currentLikeCount); 
                
                // 버튼 텍스트 변경
                var buttonText = (action === 'like') ? '좋아요 취소' : '좋아요';
                $("#likeButton").text(buttonText);  // 버튼 텍스트 변경
            },
            error: function(e) {
                console.log(e);
            }
        });
    });
});
</script>		    
<%@include file="../includes/footer.jsp"%>