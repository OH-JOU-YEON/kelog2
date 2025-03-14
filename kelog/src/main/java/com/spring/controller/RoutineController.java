package com.spring.controller;

import java.sql.Timestamp;
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
@RequestMapping("/kelogs/*")
public class RoutineController {

	private final RoutineService service;

	// 내 블로그의 일정 페이지
	@GetMapping("/exchange")
	public String getEvents(Model model, HttpSession session) {
		String email = (String) session.getAttribute("email");

		if (email != null) {
			// 로그인된 사용자의 일정만 가져옴
			List<RoutineDTO> dto = service.getdtoByEmail(email);
			model.addAttribute("dto", dto);
		}
		return "/kelogs/exchange"; // 일정 페이지
	}

	// 일정 저장
	@PostMapping("/addEvent")
	@ResponseBody
	public String saveEvent(@RequestParam("content") String content, @RequestParam("eventDate") String eventDate, HttpSession session) {
		String email = (String) session.getAttribute("email");

		if (email != null) {
			RoutineDTO dto = new RoutineDTO();
			dto.setEmail(email); // 로그인된 사용자 이메일을 일정에 추가
			dto.setContent(content);
		    dto.setEventDate(Timestamp.valueOf(eventDate + " 00:00:00")); // 날짜 형식 처리
			service.created(dto); // 일정 저장
			return "redirect:/kelogs/exchange"; // 일정 추가 후 리다이렉트
		}

		return "redirect:/kelog/exchange"; // 로그인 안 된 경우 리다이렉트
	}

	@PostMapping("/deleteEvent")
	@ResponseBody
	public String deleteEvent(@RequestParam("routineNo") int routineNo) {
		service.delete(routineNo); // 일정 삭제
		return "success"; // 삭제 성공 시 응답
	}

}
