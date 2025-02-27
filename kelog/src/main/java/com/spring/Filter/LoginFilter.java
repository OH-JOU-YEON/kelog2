package com.spring.Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(urlPatterns = {"/user/read","/user/modify"}) // 보호된 URL 패턴
public class LoginFilter implements Filter {

    public void init(FilterConfig fConfig) throws ServletException {
        // 필터 초기화
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        // 세션에서 로그인 정보를 확인 (예: 세션에 user 객체가 있는지 확인)
        HttpSession session = httpRequest.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            // 로그인되지 않았다면 로그인 페이지로 리다이렉트
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/login/google/login.do");
            return;
        }

        // 로그인 상태라면 요청을 계속 진행
        chain.doFilter(request, response);
    }

    public void destroy() {
        // 필터 종료 시 리소스 정리
    }
}
