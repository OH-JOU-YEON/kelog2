package com.spring.domain;

public class GoogleOAuthURLDTO {
	 
	public final static String GOOGLE_AUTH_BASE_URL = "https://accounts.google.com/o/oauth2/v2/auth";
    public final static String GOOGLE_TOKEN_BASE_URL = "https://oauth2.googleapis.com/token";
    public final static String GOOGLE_REVOKE_TOKEN_BASE_URL = "https://oauth2.googleapis.com/revoke";
     
    ///login/oauth2/code/google
    public final static String REDIRECT_URI = "http://localhost:8090/login/google/auth";
     
    public final static String CLIENT_ID = "337803134070-kjdaa4g3svd9l1fs3i33qo9vn91bkurr.apps.googleusercontent.com";
    public final static String CLIENT_SECRET = "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";
     
     
     
    public static String url(){
        StringBuffer sb=new StringBuffer();
        sb.append(GOOGLE_AUTH_BASE_URL);
        sb.append("?client_id=");
        sb.append(CLIENT_ID);
        sb.append("&redirect_uri=");
        sb.append(REDIRECT_URI);
        sb.append("&response_type=code");
        sb.append("&scope=email profile openid https://www.googleapis.com/auth/drive.file");
        sb.append("&access_type=offline");
         
        return sb.toString();
    }
     
}