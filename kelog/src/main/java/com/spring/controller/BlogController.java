package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.spring.domain.BlogDTO;
import com.spring.domain.BlogPostDTO;
import com.spring.domain.Criteria;
import com.spring.domain.NavAddressDTO;
import com.spring.domain.ReplyDTO;
import com.spring.domain.RoutineDTO;
import com.spring.domain.DTOS.BlogProfileDTO;
import com.spring.domain.DTOS.logDTO;
import com.spring.persistence.BlogMapper;
import com.spring.persistence.BlogPostMapper;
import com.spring.persistence.BlogReplyMapper;
import com.spring.service.BlogServiceImpl;
import com.spring.service.RoutineService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class BlogController {
	
	private final BlogServiceImpl blogService;
	private final RoutineService service;
	
	private final BlogReplyMapper blogReplyMapper; 
	
	private final BlogPostMapper blogPostMapper; 
	
	private final BlogMapper blogMapper; 
	
	
	@GetMapping("/kelogs/{blogName}/{blogPostTitle}")
	public String blogPostMapping(Model model, HttpServletRequest request, @PathVariable("blogName") String blogName,
			@PathVariable String blogPostTitle) {
		
		//블로그 이름으로 검색해서 블로그 번호 얻기 
		
		BlogDTO blog = blogMapper.findBlogByBlogName(blogName); 
		
		
		//블로그 번호랑 타이틀로 검색해서 포트스 dto 얻기 
		
		BlogPostDTO post = blogPostMapper.findByTitleAndNo(blogPostTitle, blog.getBlogNo()); 
		
		
		
		
		//포스트 번호로 댓글 리스트 얻기 
		
		List<ReplyDTO> replys = blogReplyMapper.selectReply(post.getBlogPostNo()); 
		
		model.addAttribute("replys", replys); 
		
		model.addAttribute("post", post); 
		
		return "blog/read"; 
	}
	
	
	
	
	
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
	public String logMapping(Model model, HttpSession session, HttpServletRequest request, @PathVariable String blogName) {
		String email = (String) session.getAttribute("email");

		if (email != null) {
			// 로그인된 사용자의 일정만 가져옴
			List<RoutineDTO> dto = service.getdtoByEmail(email);
			model.addAttribute("dto", dto);
		}
		return "/kelogs/exchange"; // 일정 페이지
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