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
<h1>회원 등록</h1>
 <form action="/user/create" method="post" enctype="multipart/form-data">
 	<label>email</label>
    <input type="text" name="email" value="${user.email}" readonly="readonly">
    <label>nickName</label>
    <input type="text" name="nickName" value="${user.name}">
    <label>profileImg</label> 
	<input id="i_imageFileName" name="file" type="file" value="${user.picture}">
	<img id="preview" alt="업로드된 파일" src="${user.picture}"
									style="width: 300px; height: 300px">
	<input type="hidden" name="profileImg" value="${user.picture}">
    <input type="submit" value="생성">
    </form>
<script type="text/javascript">
$(function(){
	$("#i_imageFileName").on("change",function(event){
		console.log(event);
	var reader = new FileReader();
	
	reader.onload = function(e){
		console.log(e);
	$("#preview").attr("src",e.target.result).show();	
	}
	reader.readAsDataURL(event.target.files[0]);
	});
});
</script>

</body>
</html>