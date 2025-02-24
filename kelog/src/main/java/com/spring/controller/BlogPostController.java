package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public void TravelPostGet() {

	}

	@PostMapping("/created")
	public String created(BlogPostDTO dto) {
		
		service.created(dto);

		return "redirect:/travel/list";
	}

	@GetMapping({ "/read", "/modify" })
	public void get(@RequestParam("blogPostNo") Integer blogPostNo, Model model) {
		log.info("travelBoardNo :" + blogPostNo);
		BlogPostDTO dto = service.read(blogPostNo);
		log.info(dto);
		model.addAttribute("dto", dto);
	}

	@PostMapping("/modify")
	public String modify(@ModelAttribute BlogPostDTO dto, RedirectAttributes rttr) {
		int updateRow = service.modify(dto);
		log.info("modify updateRow: " + updateRow);
		rttr.addFlashAttribute("result", "mod");
		return "redirect:/travel/list";
	}

	@PostMapping("/remove")
	public String delete(@RequestParam("travelBoardNo") Integer travelBoardNo, RedirectAttributes rttr) {
		int deleteRow = service.delete(travelBoardNo);
		log.info("delete deleteRow: " + deleteRow);
		rttr.addFlashAttribute("result", "del");
		return "redirect:/travel/list";
	}
	
	
}
