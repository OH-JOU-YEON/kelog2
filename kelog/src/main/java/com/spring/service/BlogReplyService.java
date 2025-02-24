package com.spring.service;

import java.util.List;

import com.spring.domain.ReplyDTO;

public interface BlogReplyService {
	// 특정 글의 댓글 전체 보이기
	public List<ReplyDTO> listReply(int blogPostNo);
	
	// 댓글 등록
	public int addReply(ReplyDTO reply);
	
	//추가 된 댓글 반환
	public ReplyDTO selectReply(int blogReplyNo);
	
	// 댓글 삭제
	public void deleteReply(int blogReplyNo);
	
	// 댓글 수정
	public void updateReply(ReplyDTO reply);
	
}
