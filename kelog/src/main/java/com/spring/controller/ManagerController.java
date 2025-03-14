package com.spring.controller;

import java.util.Collections;
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

import com.spring.domain.ReplyReportDTO;
import com.spring.domain.ReportDTO;
import com.spring.domain.UserDTO;
import com.spring.service.NickNameService;
import com.spring.service.TipReplyService;
import com.spring.service.TipService;
import com.spring.service.UserService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/manager/*")
@RequiredArgsConstructor
public class ManagerController {
	
	private final UserService userservice;
	private final NickNameService nickNameService;
	private final TipService tipservice;
	private final TipReplyService tipreplyservice;
	
	@GetMapping("/01-ManagerPage")
	public void list(Model model) {
	}
	
	@GetMapping({"/01-ManagerPage-MyPage", "/01-ManagerPage-MyPageModify"})
	public void get(@RequestParam("uno") Integer uno, Model model) {
		log.info("uno: " + uno);
		UserDTO user = userservice.select(uno);
		String nickName = nickNameService.selectNickName(uno);

		log.info("nickName : "+nickName);
		log.info("user : "+user);
		model.addAttribute("nickName", nickName);
		model.addAttribute("user", user);
	}
	@GetMapping("/01-ManagerPage-UserModify")
	public void mo(@RequestParam("uno") Integer uno, Model model) {
		log.info("uno: " + uno);
		UserDTO user = userservice.select(uno);
		String nickName = nickNameService.selectNickName(uno);

		log.info("nickName : "+nickName);
		log.info("user : "+user);
		model.addAttribute("nickName", nickName);
		model.addAttribute("user", user);
	}
	@PostMapping("/01-ManagerPage-UserModify")
	// 파라미터 자동수집
	public String modify(@ModelAttribute UserDTO member,@RequestParam("nickName") String nickName ,HttpSession session,RedirectAttributes rttr) {
		
		int updateRow = userservice.usermodify(member);
		int updatenick = nickNameService.modify(nickName,member.getUno());
		
		log.info("modify updateRow: " + updateRow);
		log.info("modify updatenick: " + updatenick);
	
		return "/manager/01-ManagerPage"; // 목록 페이지로 이동(get방식)
	}
	
	@PostMapping("/01-ManagerPage-MyPage")
	public String read() {
		return "/manager/01-ManagerPage-MyPage";
	}
	@ResponseBody
	@PostMapping("/getList")
	public List<UserDTO> getList(HttpSession session) {
		List<UserDTO> list = userservice.listAll();
	    System.out.println("반환된 리스트: " + list); // 서버 로그 확인
	    return list;
	}
	@ResponseBody
	@PostMapping("/getPostList")
	public List<ReportDTO> getPostList(HttpSession session) {
		List<ReportDTO> list = tipservice.reportListAll();
	    System.out.println("반환된 리스트: " + list); // 서버 로그 확인
	    return list;
	}
	@ResponseBody
	@PostMapping("/getReplyList")
	public List<ReplyReportDTO> getReplyList(HttpSession session) {
		List<ReplyReportDTO> list = tipreplyservice.reportReplyAll();
	    System.out.println("반환된 리스트: " + list); // 서버 로그 확인
	    return list;
	}
	@GetMapping("/01-ManagerPage-Post-remove")
	public String delete(@RequestParam("reportNo") Integer reportNo, RedirectAttributes rttr) {
		int deleteRow = tipservice.deleteReport(reportNo);
		log.info("delete deleteRow: " + deleteRow);
		rttr.addFlashAttribute("result", "del");
		return "redirect:/manager/01-ManagerPage-Post";
	}
	@GetMapping("/01-ManagerPage-Reply-remove")
	public String remove(@RequestParam("reportNo") Integer reportNo, RedirectAttributes rttr) {
		int deleteRow = tipreplyservice.deleteReplyReport(reportNo);
		log.info("delete deleteRow: " + deleteRow);
		rttr.addFlashAttribute("result", "del");
		return "redirect:/manager/01-ManagerPage-Reply";
	}
	@GetMapping("/01-ManagerPage-Post")
	public void mngPost(Model model) {
	}
	@GetMapping("/01-ManagerPage-Reply")
	public void mngReply(Model model) {
	}
	@GetMapping("/replydelete")
	public String removeReply(@RequestParam("replyNo") Integer replyNo) {
		tipreplyservice.deleteReply(replyNo);
		return "/manager/01-ManagerPage-Reply";
	}
	
	@PostMapping("/searchMember")
	@ResponseBody
	public List<UserDTO> searchMember(@RequestParam("searchType") String searchType,
	                               @RequestParam("keyword") String keyword) {
	    System.out.println("Search Type: " + searchType); // 디버깅용 로그
	    System.out.println("Keyword: " + keyword); // 디버깅용 로그

	    if ("nickName".equals(searchType)) {
	        List<UserDTO> users = userservice.findUsersByNickName("%" + keyword + "%");
	        System.out.println("NickName Search Result: " + users); // 결과 확인
	        return users;
	    } else if ("email".equals(searchType)) {
	        List<UserDTO> users = userservice.findUsersByEmail("%" + keyword + "%");
	        System.out.println("Email Search Result: " + users); // 결과 확인
	        return users;
	    }
	    return Collections.emptyList();
	}

}