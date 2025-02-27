package com.spring.domain;

import lombok.Data;
import lombok.ToString;
 
/**
 * 
    iss=https://accounts.google.com, 
     
    azp=65465-scmetkg9rf7g0anodi1g4rfp434f81c7rfu.apps.googleusercontent.com,
     
      
    aud=2383873471124-scmetkg9rf7g0ano5di431g24rf32pf81c7rfu.apps.googleusercontent.com, 
     
    sub=1012804324239237390221439, 
     
    email=honggidong@gmail.com,
     
    email_verified=true, 
     
    at_hash=Dv79dcE0q6Ydsadn2uxR5FJpHw, 
     
    name=홍길동, 
 
    picture=https://lh3.googleusercontent.com/a/AGNmyxZ-H_5vaMlSUoYZpdXFd134nFl63lJ-gCsJ7icmj3sA=s96-c, 
     
    given_name=길동, 
     
     
    family_name=홍, 
     
    locale=ko, 
     
    iat=16818033226, 
     
    exp=16813806826, 
     
    alg=RS4256, 
     
    kid=9697180428796829a92372e7949d1a9fff14231cd61b1e3, 
     
    typ=JWT
 
 *
 */
 
@Data
@ToString
public class GoolgeDTO {
 
    private String id;
     
    private String email;
     
    private String name; 
     
    private String picture ; 
     
    private String given_name;
     
    private String family_name;
     
    private String oauth;
     
}