package com.spring.domain;

import lombok.Data;

@Data
public class GoogleOAuthResponseDTO {
 
    private String accessToken;
    private String expiresIn;
    private String refreshToken;
    private String scope;
    private String tokenType;
    private String idToken;
}