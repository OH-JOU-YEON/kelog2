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
	<form>
		<div>
			<label>nickName</label> 
			<input name="nickName" type="text" value="${user.nickName }" >
		</div>
		<div>
			<label>email</label> 
			<input name="email" type="text" value="${user.email }" readonly="readonly">
		</div>
		<div>
			<label>profileImg</label> 
			<input id="i_imageFileName" name="file" type="file" value="${user.profileImg }" >
			<img id="preview" alt="업로드된 파일" src="/upload/${user.profileImg }"
									style="width: 300px; height: 300px">
		</div>
			<input name="uno" type="hidden" value="${user.uno }">
			<input name="profileImg" type="hidden" value="${user.profileImg }">
	<button type="button" class="btn" data-oper="modify">수정</button>
	<button type="button" class="btn" data-oper="read">취소</button>
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
	})
	var formObj = $("form");
	
	$(".btn").on("click",function(e){
		e.preventDefault(); // 기존에 갖고있는 이벤트 무효화
		
		let operation = $(this).data("oper");
		console.log(operation);
		
		if(operation === "modify"){
			formObj.attr("action","/user/modify").attr("method","post").attr("enctype","multipart/form-data");
		}else if (operation === "read"){
			formObj.attr("action","/user/read").attr("method","post");
		}
		formObj.submit();
	});
});

</script>
</body>
</html>