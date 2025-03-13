package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.ReplyDTO;
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
	public ReplyDTO register(ReplyDTO reply, HttpSession session) {
		log.info("댓글등록 reply" + reply);
		String nickName = (String) session.getAttribute("nickName");
		log.info("dㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ: "+nickName);
		String email = (String) session.getAttribute("email");
		log.info("dㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ: "+nickName);
		reply.setNickName(nickName); //세션에 저장된 id를 DB저장
		reply.setEmail(email); //세션에 저장된 id를 DB저장
		tipreplyService.addReply(reply);
		log.info("새로 등록된 rno"+reply.getReplyNo());
		return tipreplyService.selectReply(reply.getReplyNo());
	}
	@ResponseBody
	@PostMapping("/getreplies")
	public List<ReplyDTO> getReplies(@RequestParam("tipBoardNo") int tipBoardNo){
		List<ReplyDTO> allList =tipreplyService.listReply(tipBoardNo);
		log.info("리스트 구다사이...:"+allList);
		return allList;
	}
	
	@GetMapping("/delete")
	public String deleteReply(@RequestParam("replyNo") int replyNo, @RequestParam("tipBoardNo") int tipBoardNo) {
		log.info("dddddddddddddddddddddddddddd"+replyNo);
		
		tipreplyService.deleteReply(replyNo);
		return "redirect:/tip/read?tipBoardNo="+tipBoardNo;
	}
	
	@PostMapping("/report")
	public String reportPost(@RequestParam("tipBoardNo") int tipBoardNo,@RequestParam("replyNo") int replyNo,@RequestParam("reportReason") String reportReason, HttpSession session) {
		
	     String email = (String) session.getAttribute("email");  // 세션에서 사용자 이메일 가져오기
	     
	     System.out.println(session);
	     
	        if (email == null || reportReason.isEmpty()) {
	            // 로그인하지 않았거나 신고 사유를 선택하지 않으면 에러 처리 후 리다이렉트
	            return "redirect:/blog/read?tipBoardNo="+tipBoardNo;
	        }

	        // 서비스 계층에서 신고 데이터 처리
	        tipreplyService.reportTipreply(tipBoardNo, replyNo ,email, reportReason);
	 
	        // 신고 처리 후 해당 게시글 페이지로 리다이렉트
	        return "redirect:/tip/read?tipBoardNo=" + tipBoardNo;
	}
	
	
}
