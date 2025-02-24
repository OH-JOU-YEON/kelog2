package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.ReplyDTO;
import com.spring.persistence.BlogReplyMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequiredArgsConstructor
@Log4j
@Service
public class BlogReplyServiceImpl implements BlogReplyService{

	private final BlogReplyMapper mapper;
	
	
	@Override
	public List<ReplyDTO> listReply(int blogPostNo) {
		return mapper.selectReply(blogPostNo);
	}

	@Override
	public int addReply(ReplyDTO reply) {
		mapper.insertReply(reply);
		return reply.getReplyNo();
	}

	@Override
	public void deleteReply(int blogReplyNo) {
		mapper.removeReply(blogReplyNo);
	}

	@Override
	public void updateReply(ReplyDTO reply) {
		mapper.modifyReply(reply);
	}

	@Override
	public ReplyDTO selectReply(int blogReplyNo) {
		return mapper.selectRep(blogReplyNo);
	}

}
