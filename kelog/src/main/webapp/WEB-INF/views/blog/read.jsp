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
					<!--end form-group  -->
					<a class="btn btn-success" href="/blog/modify?blogPostNo=${dto.blogPostNo }">Modify</a>
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
<%@include file="../includes/footer.jsp"%>