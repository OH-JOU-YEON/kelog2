package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.ReplyDTO;
import com.spring.domain.ReplyReportDTO;
import com.spring.persistence.TipReplyMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequiredArgsConstructor
@Service
@Log4j
public class TipReplyServiceImpl implements TipReplyService {
	
	private final TipReplyMapper mapper;

	@Override
	public List<ReplyDTO> listReply(int tipBoardNo) {
		return mapper.selectReply(tipBoardNo);
	}

	@Override
	public int addReply(ReplyDTO reply) {
		mapper.insertReply(reply);
		return reply.getTipBoardNo();
	}

	@Override
	public ReplyDTO selectReply(int replyNo) {
		return mapper.selectRep(replyNo);
	}

	@Override
	public void deleteReply(int replyNo) {
		mapper.removeReply(replyNo);
		
	}

	@Override
	public void reportTipreply(int tipBoardNo, int replyNo, String email, String reportReason) {
		mapper.reportTipreply(tipBoardNo,replyNo,email,reportReason);
		
	}

	@Override
	public List<ReplyReportDTO> reportReplyAll() {
		return mapper.reportReplyAll();
	}

	@Override
	public int deleteReplyReport(Integer reportNo) {
		return mapper.deleteReplyReport(reportNo);
	}


		

	
}
