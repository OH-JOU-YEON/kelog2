<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<title>Insert title here</title>
</head>

<body>
	<div>
		<button>내정보</button>
		<c:if test="${user.role == 'admin'}">
			<button>회원정보</button>
			<button>게시글 신고 관리</button>
			<button>댓글 신고 관리</button>
			<button>추천 게시판 글쓰기</button>
	</c:if>
	</div>
	<div>
		<label>nickName</label> <input name="nickName" type="text"
			value="${nickName }" readonly="readonly">
	</div>
	<div>
		<label>email</label> <input name="email" type="text"
			value="${user.email }" readonly="readonly">
	</div>
	<c:if test="${not empty user.profileImg }">
		<div class="form-group">
			<label>profileImg</label>
			<div>
				<img alt="업로드된 파일" src="/upload/${user.profileImg}"
					style="width: 300px; height: 300px">

			</div>
		</div>
	</c:if>
	<input name="uno" type="hidden" value="${user.uno }">
	<a href="/user/remove?uno=${user.uno }&token=${token}">회원탈퇴</a>
	<a href="/user/modify?uno=${user.uno }">수정</a>
	<a href="/user/main">메인으로</a>



</body>
</html>