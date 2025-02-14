package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.TravelPostDTO;
import com.spring.service.TravelService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/travelpost/*")
@Log4j
@RequiredArgsConstructor
public class TravelPostController {
	
	private final TravelService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list",service.listAll());
	}
	
	
	@GetMapping("/created")
	public void TravelPostGet() {}
	
	
	@PostMapping("/created")
	public String created(TravelPostDTO dto) {
		service.created(dto);
		
		return "redirect:/Travelpost/list";
	}
	
}
