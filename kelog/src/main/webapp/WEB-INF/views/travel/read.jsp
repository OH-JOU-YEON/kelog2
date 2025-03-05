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
					 <input class="form-control" type="hidden"
							name="travelBoardNo" value="${dto.travelBoardNo }">

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
						<label>nickName</label> <input class="form-control" name="nickName"
							readonly="readonly" value="${dto.nickName }">
					</div>
					<div class="form-group">
						<label>RegDate</label> <input class="form-control" name="regDate"
							readonly="readonly" value="${formattedRegDate }">
					</div>
					<p id="likeCount">좋아요: ${dto.likeCnt}</p>
					
					<button id="likeButton${dto.travelBoardNo}" onclick="toggleLike(${dto.travelBoardNo})">${isliked ? '좋아요 취소' : '좋아요'}</button>				
					
					
					<p id="unlikeCount">싫어요: ${dto.dislikeCnt}</p>
					
					<button id="unlikeButton${dto.travelBoardNo}" onclick="toggleunLike(${dto.travelBoardNo})">${isunliked ? '싫어요 취소' : '싫어요'}</button>			
					
					
					<c:if test="${dto.nickName == user.nickName }">
						<a class="btn btn-success" href="/travel/modify?travelBoardNo=${dto.travelBoardNo }">Modify</a>
					</c:if>
					<a class="btn btn-success" href="/travel/list">List</a>
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
function toggleLike(travelBoardNo) {
	
    var email = '${user.email}';  // 세션에서 사용자 ID 가져오기 (예시)

    console.log(email);
    
    if (!email) {
        alert("로그인 후 좋아요를 누를 수 있습니다.");
        return;  // 로그인되지 않으면 더 이상 진행하지 않음
    }
    
    $.ajax({
        url: '/travel/like',
        type: 'POST',
        data: { travelBoardNo: travelBoardNo },
        success: function() {
        	var currentLikeCount = parseInt($('#likeCount').text().replace('좋아요: ', ''));
        	console.log("성공");
            // 좋아요 버튼 상태 변경
            let likeButton = document.getElementById("likeButton" + travelBoardNo);
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

<script>
function toggleunLike(travelBoardNo) {
	
    var email = '${user.email}';  // 세션에서 사용자 ID 가져오기 (예시)

    console.log(email);
    
    if (!email) {
        alert("로그인 후 싫어요를 누를 수 있습니다.");
        return;  // 로그인되지 않으면 더 이상 진행하지 않음
    }
    
    $.ajax({
        url: '/travel/unlike',
        type: 'POST',
        data: { travelBoardNo: travelBoardNo },
        success: function() {
        	var unLikeCount = parseInt($('#unlikeCount').text().replace('싫어요: ', ''));
        	console.log("성공");
            // 좋아요 버튼 상태 변경
            let unlikeButton = document.getElementById("unlikeButton" + travelBoardNo);
            if (unlikeButton.textContent == "싫어요") {
            	unlikeButton.textContent = '싫어요 취소';
                unLikeCount += 1;
                $('#unlikeCount').html('싫어요: ' + unLikeCount); 
            } else {
            	unlikeButton.textContent = '싫어요';
                unLikeCount -= 1;
                $('#unlikeCount').html('싫어요: ' + unLikeCount); 
            }
        }
    });
}

</script>
		    
<%@include file="../includes/footer.jsp"%>