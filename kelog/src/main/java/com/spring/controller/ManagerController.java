package com.spring.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

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

import com.spring.domain.UserDTO;
import com.spring.service.NickNameService;
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
	@GetMapping("/01-ManagerPage-Post")
	public void mngPost(Model model) {
	}
}