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
					<form role="form" action="/travel/created" method="post">
						<div class="form-group">
							<label>Title</label> <input class="form-control" name="title">
						</div>
						<!--end form-group  -->
						<div class="form-group">
							<label>Content</label>
							<textarea class="form-control" rows="3" name="content"></textarea>
						</div>
						<!--end form-group  -->

						<div class="form-group">
							<label>nickName</label> <input readonly="readonly"
								class="form-control" name="nickName">
						</div>
						<!--end form-group  -->
						<button type="submit" class="btn btn-success">submit</button>
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

<%@include file="../includes/footer.jsp"%>