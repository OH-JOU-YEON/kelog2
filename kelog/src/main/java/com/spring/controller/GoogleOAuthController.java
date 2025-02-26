package com.spring.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.spring.domain.GoogleOAuthRequestDTO;
import com.spring.domain.GoogleOAuthResponseDTO;
import com.spring.domain.GoogleOAuthURLDTO;
import com.spring.domain.GoolgeDTO;

import lombok.extern.log4j.Log4j;
 
@Log4j
@Controller
@RequestMapping("/login/google/")
public class GoogleOAuthController {
 

 
 
    /** 로그인페이지 로그인 첫 화면 요청 메소드 */
    @RequestMapping(value = "login.do", method = { RequestMethod.GET, RequestMethod.POST })
    public String join( Model model) {
        model.addAttribute("urlGoogle",GoogleOAuthURLDTO.url());
        return "oauth/google/login";
    }
     
     
 
    /**
     * Authentication Code를 전달 받는 엔드포인트
     **/
    @GetMapping("auth")
    public String googleAuth(Model model,HttpSession session, @RequestParam(value = "code") String authCode)
            throws JsonProcessingException {
 
        // HTTP Request를 위한 RestTemplate
        RestTemplate restTemplate = new RestTemplate();
 
        // Google OAuth Access Token 요청을 위한 파라미터 세팅
        GoogleOAuthRequestDTO googleOAuthRequestParam = GoogleOAuthRequestDTO.builder().clientId(GoogleOAuthURLDTO.CLIENT_ID)
                .clientSecret(GoogleOAuthURLDTO.CLIENT_SECRET).code(authCode).redirectUri("http://localhost:8090/login/google/auth")
                .grantType("authorization_code").build();
 
        // JSON 파싱을 위한 기본값 세팅
        // 요청시 파라미터는 스네이크 케이스로 세팅되므로 Object mapper에 미리 설정해준다.
        ObjectMapper mapper = new ObjectMapper();
        mapper.setPropertyNamingStrategy(PropertyNamingStrategy.SNAKE_CASE);
        mapper.setSerializationInclusion(Include.NON_NULL);
 
        // AccessToken 발급 요청
        ResponseEntity<String> resultEntity = restTemplate.postForEntity(GoogleOAuthURLDTO.GOOGLE_TOKEN_BASE_URL, googleOAuthRequestParam,
                String.class);
 
        // Token Request
        GoogleOAuthResponseDTO result = mapper.readValue(resultEntity.getBody(), new TypeReference<GoogleOAuthResponseDTO>() {});
 
 
 
        // ID Token만 추출 (사용자의 정보는 jwt로 인코딩 되어있다)
        String jwtToken = result.getIdToken();
        String requestUrl = UriComponentsBuilder.fromHttpUrl("https://oauth2.googleapis.com/tokeninfo")
                .queryParam("id_token", jwtToken).encode().toUriString();
 
        String resultJson = restTemplate.getForObject(requestUrl, String.class);
 
        Map<String, String> userInfo = mapper.readValue(resultJson, new TypeReference<Map<String, String>>() {});
         
        System.out.println("userInfo  정보  " +userInfo.toString());
         
         
        GoolgeDTO googleVO=new GoolgeDTO();
        googleVO.setId("google_"+userInfo.get("kid"));
        googleVO.setEmail(userInfo.get("email"));
        googleVO.setName(userInfo.get("name"));
        googleVO.setPicture(userInfo.get("picture")); 
        googleVO.setOauth("google");
     
        
        model.addAllAttributes(userInfo);
        session.setAttribute("user", userInfo);
        session.setAttribute("token", result.getAccessToken());
        System.out.println(userInfo);
 
        return "redirect:/user/login";
 
    }
 
    /**
     * 토큰 무효화
     **/
    @GetMapping("revoke/token")
    public String revokeToken(@RequestParam(value = "token") String token, HttpSession session) throws JsonProcessingException {
 
        Map<String, String> result = new HashMap<String,String>();
        RestTemplate restTemplate = new RestTemplate();
        final String requestUrl = UriComponentsBuilder.fromHttpUrl(GoogleOAuthURLDTO.GOOGLE_REVOKE_TOKEN_BASE_URL)
                .queryParam("token", token).encode().toUriString();
 
        log.info("TOKEN : " + token);
 
        String resultJson = restTemplate.postForObject(requestUrl, null, String.class);
        result.put("result", "success");
        result.put("resultJson", resultJson);
        session.invalidate();
        return "redirect:/login/google/login.do";
 
    }
 
}