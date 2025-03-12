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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.Criteria;
import com.spring.domain.PageDTO;
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
	public void list(Criteria cri, Model model) {
		
		int total = service.getTotal();
		
		PageDTO pageDTO = new PageDTO(cri, total);
		
		model.addAttribute("pageMaker", pageDTO);
		model.addAttribute("list", service.listAll());
	}

	@PostMapping("/getList")
	@ResponseBody
	public List<TravelPostDTO> getList(Criteria cri){
		return service.getList(cri);
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
	public void get(@RequestParam("travelBoardNo") Integer travelBoardNo, Model model, HttpSession session) {
		log.info("travelBoardNo :" + travelBoardNo);
		
		Integer uno = (Integer) session.getAttribute("uno");
		if(uno == null) {
			TravelPostDTO dto = service.read(travelBoardNo);
			log.info(dto);
			model.addAttribute("dto", dto);
		}else {
			boolean isLiked = service.isUserLikedTravelPost(uno, travelBoardNo);
			boolean isunLiked = service.isUserunLikedTravelPost(uno, travelBoardNo);
			session.setAttribute("isliked", isLiked);
			session.setAttribute("isunliked", isunLiked);
			TravelPostDTO dto = service.read(travelBoardNo);
			log.info(dto);
			model.addAttribute("dto", dto);
		}
	}

	@PostMapping("/modify")
	public String modify(@ModelAttribute TravelPostDTO dto, RedirectAttributes rttr) {
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

	@PostMapping("/like")
	@ResponseBody
	public int like(@RequestParam("travelBoardNo") Integer travelBoardNo, HttpSession session) {

		Integer uno = (Integer) session.getAttribute("uno");
		
		System.out.println("호히원 아이디:: "+ uno);

		if (uno != 0 || uno != null) {
			boolean isLiked = service.isUserLikedTravelPost(uno, travelBoardNo);
			if (!isLiked) {
				session.setAttribute("isliked", isLiked);
				log.info(isLiked);
				System.out.println(isLiked);
				return service.uplikecount(travelBoardNo,uno);
			} else {
				session.setAttribute("isliked", isLiked);
				log.info(isLiked);
				System.out.println(isLiked);
				return service.unlikecount(travelBoardNo,uno);
			}
		}
		return 0;
	}
	
	@PostMapping("/unlike")
	@ResponseBody
	public int unlike(@RequestParam("travelBoardNo") Integer travelBoardNo, HttpSession session) {

		Integer uno = (Integer) session.getAttribute("uno");
		

		if (uno != 0 || uno != null) {
			boolean isunLiked = service.isUserunLikedTravelPost(uno, travelBoardNo);
			if (!isunLiked) {
				session.setAttribute("isunliked", isunLiked);
				return service.upunlikecount(travelBoardNo,uno);
			} else {
				session.setAttribute("isunliked", isunLiked);
				return service.ununlikecount(travelBoardNo,uno);
			}
		}
		return 0;
	}

}
