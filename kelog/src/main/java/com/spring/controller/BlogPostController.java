package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.BlogPostDTO;
import com.spring.domain.DTOS.BlogNoAndNickNameVO;
import com.spring.domain.DTOS.BlogPostVO;
import com.spring.persistence.BlogPostMapper;
import com.spring.service.BlogService;
import com.spring.service.BlogServiceImpl;
import com.spring.service.HashTagService;
import com.spring.service.NavAddressService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping("/blog/*")
@Log4j
@RequiredArgsConstructor
public class BlogPostController {
	
	@Autowired 
	private final BlogService service;
	
	@Autowired
	private final HashTagService hashTagService; 
	
	@Autowired 
	private final NavAddressService navAddressService; 
	
	@Autowired
	private final BlogServiceImpl blogService; 
	
	@Autowired
	private final BlogPostMapper blogPostMapper; 

	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list", service.listAll());
	}

	@GetMapping("/created")
	public void blogPostGet() {

	}

	@PostMapping("/created")
	public String created(HttpServletRequest request, @RequestBody BlogPostVO blogPostVO) {
		
		HttpSession session = request.getSession(false);

        if(session == null ) {
            return "redirect:/";
        }
        
        String email = (String) session.getAttribute("email");
        
        BlogNoAndNickNameVO blogNoAndNickName = blogService.getblogNoAndNickName(email);
        
        //만들려고 하는 제목이랑 겹치는 다른 포스트 있나 검사(url을 포스트 타이틀로 생성하기 때문) 
        
        BlogPostDTO blogPostDTO = blogPostMapper.findByTitle(blogPostVO.getTitle()); 
        
        if(blogPostDTO != null) {
        	
        	return "redirect:/blog/list";
        }
        
        blogPostDTO = new BlogPostDTO(blogNoAndNickName, blogPostVO.getTitle(), blogPostVO.getTitle()); 
        
        blogPostMapper.insert(blogPostDTO); 
        
        navAddressService.navMapping(blogPostVO.getNavs(), blogPostDTO.getBlogPostNo()); 
        
        hashTagService.makeHashTags(blogPostVO.getTag(), "blogNo", blogPostDTO.getBlogPostNo()); 
        
        
        

		return "redirect:/blog/list";
	}

	@GetMapping({ "/read", "/modify" })
	public void get(@RequestParam("blogPostNo") Integer blogPostNo, Model model, HttpSession session) {
		
		Integer uno = (Integer) session.getAttribute("uno");
		
		if(uno == null) {
			BlogPostDTO dto = service.read(blogPostNo);
			log.info(dto);
			model.addAttribute("dto", dto);
		}else {
			boolean isLiked = service.isUserLikedblogPost(uno, blogPostNo);
			session.setAttribute("isliked", isLiked);
			BlogPostDTO dto = service.read(blogPostNo);
			log.info(dto);
			model.addAttribute("dto", dto);
		}
	}

	@PostMapping("/modify")
	public String modify(@ModelAttribute BlogPostDTO dto, RedirectAttributes rttr) {
		int updateRow = service.modify(dto);
		log.info("modify updateRow: " + updateRow);
		rttr.addFlashAttribute("result", "mod");
		return "redirect:/blog/list";
	}

	@PostMapping("/remove")
	public String delete(@RequestParam("blogPostNo") Integer blogPostNo, RedirectAttributes rttr) {
		int deleteRow = service.delete(blogPostNo);
		log.info("delete deleteRow: " + deleteRow);
		rttr.addFlashAttribute("result", "del");
		return "redirect:/blog/list";
	}
	
	@PostMapping("/like")
	@ResponseBody
	public int like(@RequestParam("blogPostNo") Integer blogPostNo, HttpSession session) {

		Integer uno = (Integer) session.getAttribute("uno");
		
		System.out.println("호히원 아이디:: "+ uno);

		if (uno != 0 || uno != null) {
			boolean isLiked = service.isUserLikedblogPost(uno, blogPostNo);
			if (!isLiked) {
				session.setAttribute("isliked", isLiked);
				log.info(isLiked);
				System.out.println(isLiked);
				return service.uplikecount(blogPostNo,uno);
			} else {
				session.setAttribute("isliked", isLiked);
				log.info(isLiked);
				System.out.println(isLiked);
				return service.unlikecount(blogPostNo,uno);
			}
		}
		return 0;
	}
	
	@PostMapping("/report")
	public String reportPost(@RequestParam("blogPostNo") int blogPostNo,@RequestParam("reportReason") String reportReason, HttpSession session) {
		
	     String email = (String) session.getAttribute("email");  // 세션에서 사용자 이메일 가져오기
	     
	     System.out.println(session);
	     
	        if (email == null || reportReason.isEmpty()) {
	            // 로그인하지 않았거나 신고 사유를 선택하지 않으면 에러 처리 후 리다이렉트
	            return "redirect:/blog/read?blogPostNo="+blogPostNo;
	        }

	        // 서비스 계층에서 신고 데이터 처리
	        service.reportBlogPost(blogPostNo, email, reportReason);
	        
	        // 신고 처리 후 해당 게시글 페이지로 리다이렉트
	        return "redirect:/blog/read?blogPostNo=" + blogPostNo;
	}
	
	
}
