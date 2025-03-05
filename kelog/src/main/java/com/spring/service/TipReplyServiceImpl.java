package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.TipReplyDTO;
import com.spring.persistence.TipReplyMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequiredArgsConstructor
@Service
@Log4j
public class TipReplyServiceImpl implements TipReplyService {
	
	private final TipReplyMapper mapper;

	@Override
	public List<TipReplyDTO> listReply(int TipReplyNo) {
		return mapper.selectReply(TipReplyNo);
	}

	@Override
	public int addReply(TipReplyDTO reply) {
		mapper.insertReply(reply);
		return reply.getTipBoardNo();
	}

	@Override
	public TipReplyDTO selectReply(int TipReplyNo) {
		return mapper.selectRep(TipReplyNo);
	}

	@Override
	public void deleteReply(int TipReplyNo) {
		mapper.removeReply(TipReplyNo);
		
	}


		

	
}
