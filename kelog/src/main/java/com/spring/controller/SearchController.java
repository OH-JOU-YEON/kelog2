package com.spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController {
	
	
	@GetMapping("/search")
	public String getSearchResult(HttpServletRequest request,Model model, @RequestParam String keyword) {
		
		
		
		return "search"; 
	}

}
