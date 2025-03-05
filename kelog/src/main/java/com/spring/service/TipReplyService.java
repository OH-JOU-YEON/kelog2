package com.spring.service;

import java.util.List;

import com.spring.domain.TipReplyDTO;

public interface TipReplyService {
	// 특정 글의 댓글 전체 보이기
	public List<TipReplyDTO> listReply(int TipReplyNo);
	
	// 댓글 등록
	public int addReply(TipReplyDTO reply);
	
	//추가 된 댓글 반환
	public TipReplyDTO selectReply(int TipReplyNo);
	
	// 댓글 삭제
	public void deleteReply(int TipReplyNo);
	
}
