<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../includes/header.jsp"%>

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">report post</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- end row -->


	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<form>
						<div class="form-group">
							<label>게시판 제목</label><input class="form-control" type="text"
								readonly="readonly" name="title" value="${report.title }">
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
					<!--end form-group  -->

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