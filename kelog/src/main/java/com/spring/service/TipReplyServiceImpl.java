package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.ReplyDTO;
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


		

	
}
