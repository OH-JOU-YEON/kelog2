package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.TipReplyDTO;
import com.spring.service.TipReplyService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequiredArgsConstructor
@Controller
@Log4j
@RequestMapping("/tipreply/*")
public class TipReplyController {
	
	private final TipReplyService tipreplyService;
	
	//ajax 호출
	@ResponseBody
	@PostMapping("/register")
	public TipReplyDTO register(TipReplyDTO reply, HttpSession session) {
		log.info("댓글등록 reply" + reply);
		String nickName = (String) session.getAttribute("nickName");
		log.info("dㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ: "+nickName);
		reply.setNickName(nickName); //세션에 저장된 id를 DB저장
		tipreplyService.addReply(reply);
		log.info("새로 등록된 rno"+reply.getTipReplyNo());
		return tipreplyService.selectReply(reply.getTipReplyNo());
	}
	@ResponseBody
	@PostMapping("/getReplies")
	public List<TipReplyDTO> getReplies(@RequestParam("tipBoardNo") int tipBoardNo){
		List<TipReplyDTO> allList =tipreplyService.listReply(tipBoardNo);
		log.info("리스트 구다사이...:"+allList);
		return allList;
	}
	
	@GetMapping("/delete")
	public String deleteReply(@RequestParam("tipReplyNo") int tipReplyNo, @RequestParam("tipBoardNo") int tipBoardNo) {
		log.info("dddddddddddddddddddddddddddd"+tipReplyNo);
		
		tipreplyService.deleteReply(tipReplyNo);
		return "redirect:/tip/read?tipBoardNo="+tipBoardNo;
	}
	
	
	
}
