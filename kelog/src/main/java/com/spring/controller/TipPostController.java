package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.TipPostDTO;
import com.spring.service.TipService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/tip/*")
@Log4j
@RequiredArgsConstructor
public class TipPostController {

	private final TipService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("tiplist", service.listAll());
	}
	
	@GetMapping("/created")
	public void TipPostGet() {

	}
	@PostMapping("/created")
	public String created(TipPostDTO dto) {
		service.created(dto);

		return "redirect:/tip/list";
	}
	@GetMapping({ "/read", "/modify" })
	public void get(@RequestParam("tipBoardNo") Integer tipBoardNo, Model model) {
		log.info("tipBoardNo :" + tipBoardNo);
		TipPostDTO dto = service.read(tipBoardNo);
		log.info(dto);
		model.addAttribute("dto", dto);
	}
	@PostMapping("/modify")
	public String modify(@ModelAttribute TipPostDTO dto, RedirectAttributes rttr) {
		log.info("modify content:"+dto.getContent());
		int updateRow = service.modify(dto);
		log.info("modify updateRow: " + updateRow);
		rttr.addFlashAttribute("result", "mod");
		return "redirect:/tip/list";
	}
	@PostMapping("/remove")
	public String delete(@RequestParam("tipBoardNo") Integer tipBoardNo, RedirectAttributes rttr) {
		int deleteRow = service.delete(tipBoardNo);
		log.info("delete deleteRow: " + deleteRow);
		rttr.addFlashAttribute("result", "del");
		return "redirect:/tip/list";
	}
	@GetMapping("/report")
	public void report(Integer tipBoardNo, Model model) {
		TipPostDTO dto = service.read(tipBoardNo);
		model.addAttribute("report", dto);
	}
}
