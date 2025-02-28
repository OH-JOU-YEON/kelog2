package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.BlogPostDTO;
import com.spring.service.BlogService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping("/blog/*")
@Log4j
@RequiredArgsConstructor
public class BlogPostController {
	
	private final BlogService service;

	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list", service.listAll());
	}

	@GetMapping("/created")
	public void blogPostGet() {

	}

	@PostMapping("/created")
	public String created(BlogPostDTO dto) {
		
		service.created(dto);

		return "redirect:/blog/list";
	}

	@GetMapping({ "/read", "/modify" })
	public void get(@RequestParam("blogPostNo") Integer blogPostNo, Model model) {
		log.info("blogBoardNo :" + blogPostNo);
		BlogPostDTO dto = service.read(blogPostNo);
		log.info(dto);
		model.addAttribute("dto", dto);
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
	public int like (@RequestParam("blogPostNo") Integer blogPostNo) {
		int updatedLikeCount = service.uplikecount(blogPostNo);
		return updatedLikeCount;
	}
	
	@PostMapping("/unlike")
	@ResponseBody
	public int downlike (@RequestParam("blogPostNo") Integer blogPostNo) {
		int updatedLikeCount = service.unlikecount(blogPostNo);
		return updatedLikeCount;
	}
	
}
