package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.TipPostDTO;
import com.spring.domain.TravelPostDTO;
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
	
}
