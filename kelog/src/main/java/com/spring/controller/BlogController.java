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
	
	
	
	@GetMapping("/kelogs/{blogName}")
	public String blogMapping(Model model, HttpServletRequest request, @PathVariable String blogName, Criteria cri) {
		HttpSession session = request.getSession(false);
		
		
        
        String email = (String) session.getAttribute("email");
        
       BlogDTO blogDTO =   blogService.getBlogByBlogNameAndUno(blogName, email);
		
		BlogProfileDTO blogProfileDTO = blogService.getBlogProfileByBlogName(blogName, email); 
		
		model.addAttribute("profile", blogProfileDTO); 
		
		List<logDTO> blogs  = blogService.getblogPosts(blogName); 
		
		model.addAttribute("blogs",blogs); 
		
		
		
		model.addAttribute("presentURL","kelogs/" + blogName ); 
		
		
		return "Myblog";
		
	}
	
	@GetMapping("/kelogs/{blogName}/myMap")
	public String myMapMapping(Model model, HttpServletRequest request, @PathVariable String blogName) {
		
		List<NavAddressDTO> navs = blogService.getblogNavs(blogName); 
		
		model.addAttribute("navs", navs); 
		
		
		return "MyblogMap"; 
		
	}
	
	@GetMapping("/kelogs/{blogName}/logs")
	public String logMapping(Model model, HttpServletRequest request, @PathVariable String blogName) {
		
		return "Myblog"; 
		
	}
	
	

}
