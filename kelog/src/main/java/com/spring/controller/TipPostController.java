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
import com.spring.domain.TipPostDTO;
import com.spring.persistence.UserMapper;
import com.spring.service.TipService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/tip/*")
@Log4j
@RequiredArgsConstructor
public class TipPostController {

	private final TipService service;
	private final UserMapper usermapper;
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list");
		log.info("----controller in List----");
		log.info(cri);
		//전체 글의 갯수를 구하기위한 메서드 필요
		int total = service.getTotal();
		//페이징 처리를 위한 객체 생성
		PageDTO pageDTO = new PageDTO(cri, total);
		
		// model : view로 데이터를 전달 객체
		model.addAttribute("pageMaker", pageDTO);
		log.info("----controller out List----");
		log.info(total);
		log.info(pageDTO);
	}
	@ResponseBody //Ajax가 호출하는 메서드
	@PostMapping("/getList")
	public List<TipPostDTO> getList(Criteria cri){
		return service.getList(cri);
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
	public void get(@RequestParam("tipBoardNo") Integer tipBoardNo, Model model,HttpSession session) {
		log.info("tipBoardNo :" + tipBoardNo);
		String writeremail= service.getwriteremail(tipBoardNo);
		String writerImage = usermapper.getwriterImage(writeremail);
		session.setAttribute("writerImage",writerImage);
		Integer uno = (Integer) session.getAttribute("uno");
		String email = (String) session.getAttribute("email");
		if(uno == null) {
			TipPostDTO dto = service.read(tipBoardNo);
			log.info(dto);
			model.addAttribute("dto", dto);
		}else {
			boolean isLiked = service.isUserLikedTipPost(uno, tipBoardNo);
			boolean isReport = service.isUserReportTipPost(email,tipBoardNo);
			session.setAttribute("isliked", isLiked);
			session.setAttribute("isReport", isReport);
			TipPostDTO dto = service.read(tipBoardNo);
			log.info(dto);
			model.addAttribute("dto", dto);
		}
	}
	@PostMapping("/modify")
	public String modify(@ModelAttribute TipPostDTO dto, RedirectAttributes rttr) {
		log.info("modify content:"+dto.getContent());
		int updateRow = service.modify(dto);
		log.info("modify updateRow: " + updateRow);
		rttr.addFlashAttribute("result", "mod");
		return "redirect:/tip/read?tipBoardNo="+dto.getTipBoardNo();
	}
	@PostMapping("/remove")
	public String delete(@RequestParam("tipBoardNo") Integer tipBoardNo, RedirectAttributes rttr) {
		int deleteRow = service.delete(tipBoardNo);
		log.info("delete deleteRow: " + deleteRow);
		rttr.addFlashAttribute("result", "del");
		return "redirect:/tip/list";
	}
	@GetMapping("/remove")
	public String delet(@RequestParam("tipBoardNo") Integer tipBoardNo, RedirectAttributes rttr) {
		int deleteRow = service.delete(tipBoardNo);
		log.info("delete deleteRow: " + deleteRow);
		rttr.addFlashAttribute("result", "del");
		return "redirect:/manager/01-ManagerPage-Post";
	}
	@PostMapping("/like")
	@ResponseBody
	public int like(@RequestParam("tipBoardNo") Integer tipBoardNo, HttpSession session) {

		Integer uno = (Integer) session.getAttribute("uno");
		
		System.out.println("회원 아이디:: "+ uno);

		if (uno != 0 || uno != null) {
			boolean isLiked = service.isUserLikedTipPost(uno, tipBoardNo);
			if (!isLiked) {
				session.setAttribute("isliked", isLiked);
				log.info(isLiked);
				System.out.println(isLiked);
				return service.uplikecount(tipBoardNo,uno);
			} else {
				session.setAttribute("isliked", isLiked);
				log.info(isLiked);
				System.out.println(isLiked);
				return service.unlikecount(tipBoardNo,uno);
			}
		}
		return 0;
	}
	@PostMapping("/report")
	public String reportPost(@RequestParam("tipBoardNo") int tipBoardNo,@RequestParam("reportReason") String reportReason, HttpSession session) {
		
	     String email = (String) session.getAttribute("email");  // 세션에서 사용자 이메일 가져오기
	     
	     System.out.println(session);
	     
	        if (email == null || reportReason.isEmpty()) {
	            // 로그인하지 않았거나 신고 사유를 선택하지 않으면 에러 처리 후 리다이렉트
	            return "redirect:/blog/read?tipBoardNo="+tipBoardNo;
	        }

	        // 서비스 계층에서 신고 데이터 처리
	        service.reportTipPost(tipBoardNo, email, reportReason);
	        service.upreportCnt(tipBoardNo);
	        // 신고 처리 후 해당 게시글 페이지로 리다이렉트
	        return "redirect:/tip/read?tipBoardNo=" + tipBoardNo;
	}
}