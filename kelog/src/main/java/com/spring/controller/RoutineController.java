package com.spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.spring.domain.RoutineDTO;
import com.spring.service.BlogService;
import com.spring.service.RoutineService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/myblog/*")
public class RoutineController {
	
	private final RoutineService service;
	
    // 내 블로그의 일정 페이지
    @GetMapping("/myblog/events")
    public String showEvents(Model model, @SessionAttribute("email") String email) {
        List<RoutineDTO> dto = service.getdtoByEmail(email);
        model.addAttribute("dto", dto);
        return "/myblog/exchange";
    }

    // 일정 저장
    @PostMapping("/myblog/events/created")
    public String saveEvent(@ModelAttribute RoutineDTO dto, @SessionAttribute("email") String email) {
        dto.setEmail(email);
        service.created(dto);
        return "redirect:/myblog/events";
    }

    // 일정 삭제
    @PostMapping("/myblog/events/delete")
    public String deleteEvent(@RequestParam("routineNo") int routineNo) {
    	service.delete(routineNo);
        return "redirect:/myblog/events";
    }

    // 일정 수정
    @PostMapping("/myblog/events/modify")
    public String updateEvent(@ModelAttribute RoutineDTO dto) {
    	service.modify(dto);
        return "redirect:/myblog/events";
    }
}
