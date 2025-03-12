package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.RoutineDTO;
import com.spring.service.RoutineService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/kelog/*")
public class RoutineController {
	
	private final RoutineService service;
	
    // 내 블로그의 일정 페이지
    @GetMapping("/exchange")
    public String getEvents(Model model, HttpSession session) {
    	String email = (String) session.getAttribute("email");
        List<RoutineDTO> dto = service.getdtoByEmail(email);
        model.addAttribute("dto", dto);
        return "/kelog/exchange";
    }

    // 일정 저장
    @PostMapping("/addEvent")
    @ResponseBody
    public String saveEvent(@ModelAttribute RoutineDTO dto, HttpSession session) {
    	String email = (String) session.getAttribute("email");
        dto.setEmail(email);
        service.created(dto);
        return "redirect:/kelog/exchange";
    }

    // 일정 수정
    @PostMapping("/updateEvent")
    @ResponseBody
    public String updateEvent(@ModelAttribute RoutineDTO dto) {
    	service.modify(dto);
    	return "redirect:/kelog/exchange";
    }
    
    // 일정 삭제
    @PostMapping("/deleteEvent")
    @ResponseBody
    public String deleteEvent(@RequestParam("routineNo") int routineNo) {
    	service.delete(routineNo);
        return "redirect:/kelog/exchange";
    }

}
