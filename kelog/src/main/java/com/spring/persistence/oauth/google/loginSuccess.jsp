<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<title>Insert title here</title>
</head>
<body>
    <h1>Google Login 완료</h1>

    <div>${token}</div>
    <div>${user.email}</div>
    <div>${nickName}</div>
    <div>
        <img src="/upload/${user.profileImg}"></img>
    </div>
 	<a href="/travel/list">추천게시판으로 이동</a>
 	<a href="/tip/list">팁게시판으로 이동</a>
 	<a href="/user/read?uno=${user.uno}">내 정보 보기</a>
    <div>
    <form action="/login/google/revoke/token" method="get">
    <input type="hidden" name="token" value="${token}">
        <input type="submit" value="로그아웃">
    </form>
    </div>
</body>
</html>