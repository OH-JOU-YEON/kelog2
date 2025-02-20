package com.spring.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.TravelPostDTO;
import com.spring.service.TravelService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/travel/*")
@Log4j
@RequiredArgsConstructor
public class TravelPostController {

	private final TravelService service;

	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list", service.listAll());
	}

	@GetMapping("/created")
	public void TravelPostGet() {

	}

	@PostMapping("/created")
	public String created(TravelPostDTO dto) {
		service.created(dto);

		return "redirect:/travel/list";
	}

	@GetMapping({ "/read", "/modify" })
	public void get(@RequestParam("travelNo") Integer travelNo, Model model) {
		log.info("travelNo :" + travelNo);
		TravelPostDTO dto = service.read(travelNo);
		log.info(dto);
		model.addAttribute("dto", dto);
	}

	@PostMapping("/modify")
	public String modify(@ModelAttribute TravelPostDTO dto, RedirectAttributes rttr) {
		int updateRow = service.modify(dto);
		log.info("modify updateRow: " + updateRow);
		rttr.addFlashAttribute("result", "mod");
		return "redirect:/travel/list";
	}

	@PostMapping("/remove")
	public String delete(@RequestParam("travelNo") Integer travelNo, RedirectAttributes rttr) {
		int deleteRow = service.delete(travelNo);
		log.info("delete deleteRow: " + deleteRow);
		rttr.addFlashAttribute("result", "del");
		return "redirect:/travel/list";
	}
}
