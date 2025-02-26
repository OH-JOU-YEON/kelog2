package com.spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.ReplyDTO;
import com.spring.service.BlogReplyService;
import com.spring.service.TipReplyService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
//@RequestMapping("/reply/*")
//@RequiredArgsConstructor
//@Controller
//@Log4j
public class ReplyController {
	
//	private final BlogReplyService Blogservice;
//	private final TipReplyService Tipservice;
//	
//	@ResponseBody
//	@PostMapping("/blogregister")
//	public ReplyDTO blogregister(ReplyDTO reply) {
//		Blogservice.addReply(reply);
//		return Blogservice.selectReply(reply.getReplyNo());
//	}
//	
//	@ResponseBody
//	@PostMapping("/bloggetReplies")
//	public List<ReplyDTO> bloggetReplies(@RequestParam("blogPostNo") int blogPostNo){
//		return Blogservice.listReply(blogPostNo);
//	}	
//	@GetMapping("/blogdelete")
//	public String blogdeleteReply(@RequestParam("blogReplyNo") int blogReplyNo,@RequestParam("blogPostNo") int blogPostNo) {
//		Blogservice.deleteReply(blogReplyNo);
//		return "redirect:/blog/read?blogPostNo="+blogPostNo;
//	}	
//	
//	
//	
//	
//	@ResponseBody
//	@PostMapping("/tipregister")
//	public ReplyDTO tipregister(ReplyDTO reply) {
//		Tipservice.addReply(reply);
//		return Tipservice.selectReply(reply.getReplyNo());
//	}
//	
//	@ResponseBody
//	@PostMapping("/tipgetReplies")
//	public List<ReplyDTO> tipgetReplies(@RequestParam("tipBoardNo") int tipBoardNo){
//		return Tipservice.listReply(tipBoardNo);
//	}	
//	
//	@GetMapping("/tipdelete")
//	public String tipdeleteReply(@RequestParam("tipReplyNo") int tipReplyNo,@RequestParam("tipBoardNo") int tipBoardNo) {
//		Tipservice.deleteReply(tipReplyNo);
//		return "redirect:/tip/read?blogPostNo="+tipBoardNo;
//	}	
//	
	
	
}
