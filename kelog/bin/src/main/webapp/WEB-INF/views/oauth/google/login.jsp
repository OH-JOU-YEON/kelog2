<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>google OAuth</title>
<style type="text/css">
#container{width:500px}
.sns_join a.google{border-color:#eb6155}
.sns_join a{display:block;margin-top:10px;width:100%;height:50px;border:1px solid #000;font-size:15px;line-height:50px;text-align:center;background:#fff}
.sns_join a.google>.icon{background:url(https://cdn.jsdelivr.net/gh/braverokmc79/ouath2-img@v1.0.0/images/icon_google.png) no-repeat 0 0;background-size:18px auto}
.sns_join a>.icon{display:inline-block;margin:0 auto;padding-left:29px;width:188px;color:#666;font-size:15px;letter-spacing:-1px;line-height:20px;text-align:left}
</style>
</head>
<body>
 
     
    <div id="container">
        <div class="sns_join">
            <a class="google" href="${urlGoogle}" id="googleLoginBtn"> <span class="icon">구글 로그인</span>
            </a>
        </div>
    </div>
     
</body>
     
<script>
    const onClickGoogleLogin = (e) => {
        window.location.replace('${src}')
    }
    const googleLoginBtn = document.getElementById("googleLoginBtn");
    googleLoginBtn.addEventListener("click", onClickGoogleLogin) 
</script>
</html>