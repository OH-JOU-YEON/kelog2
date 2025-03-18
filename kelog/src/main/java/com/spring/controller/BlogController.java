package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.spring.domain.BlogDTO;
import com.spring.domain.Criteria;
import com.spring.domain.NavAddressDTO;
import com.spring.domain.DTOS.BlogProfileDTO;
import com.spring.domain.DTOS.logDTO;
import com.spring.service.BlogServiceImpl;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class BlogController {
	
	private final BlogServiceImpl blogService; 
	
	
	
	@GetMapping("/kelogs/{blogName}/")
	public String blogMapping(Model model, HttpServletRequest request, @PathVariable("blogName") String blogName, Criteria cri) {
		HttpSession session = request.getSession(false);
		
        
        String email = (String) session.getAttribute("email");
        
        BlogDTO blogDTO = blogService.getBlogByBlogNameAndUno(blogName, email);
		
		BlogProfileDTO blogProfileDTO = blogService.getBlogProfileByBlogName(blogName, email); 
		
		model.addAttribute("profile", blogProfileDTO); 
		
		List<logDTO> blogs  = blogService.getblogPosts(blogName); 
		session.setAttribute("bd", blogDTO);
		
		model.addAttribute("blogs",blogs); 
		
		model.addAttribute("presentURL","kelogs/" + blogName ); 
		
		
		return "/kelogs/03-Myblog";
		
	}
	
	@GetMapping("/kelogs/{blogName}/myMap")
	public String myMapMapping(Model model, HttpServletRequest request, @PathVariable String blogName) {
		
		List<NavAddressDTO> navs = blogService.getblogNavs(blogName); 
		
		model.addAttribute("navs", navs); 
		
		
		return "/kelogs/03-MyblogMap"; 
		
	}
	
	@GetMapping("/kelogs/{blogName}/logs")
	public String logMapping(Model model, HttpServletRequest request, @PathVariable String blogName) {
		
		return "/kelogs/exchange"; 
		
	}
	
	@GetMapping("/Myblog")
	public String myBlogRedirect(HttpServletRequest request,HttpSession session) {
	    session = request.getSession(false);
	    if (session == null) {
	        return "redirect:/login"; // 세션이 없으면 로그인 페이지로 이동
	    }

	    String email = (String) session.getAttribute("email");
	    if (email == null) {
	        return "redirect:/login"; // 이메일 정보가 없으면 로그인 필요
	    }

	    // 내 블로그가 존재하는지 확인 (없으면 자동 생성)
	    BlogDTO blogDTO = blogService.getBlogByBlogNameAndUno(email + "_blog", email);

	    // 내 블로그 페이지로 이동
	    return "redirect:/kelogs/" + blogDTO.getBlogName()+"/";
	}
	
	

}