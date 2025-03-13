package com.spring.service;

import java.util.List;

import com.spring.domain.ReplyDTO;
import com.spring.domain.ReplyReportDTO;

public interface TipReplyService {
	// 특정 글의 댓글 전체 보이기
	public List<ReplyDTO> listReply(int tipBoardNo);
	
	// 댓글 등록
	public int addReply(ReplyDTO reply);
	
	//추가 된 댓글 반환
	public ReplyDTO selectReply(int replyNo);
	
	// 댓글 삭제
	public void deleteReply(int replyNo);

	public void reportTipreply(int tipBoardNo, int replyNo, String email, String reportReason);

	public List<ReplyReportDTO> reportReplyAll();

	public int deleteReplyReport(Integer reportNo);

	
}
