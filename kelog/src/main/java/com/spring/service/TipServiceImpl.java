package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.TipPostDTO;
import com.spring.persistence.TipPostMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@RequiredArgsConstructor
@Log4j
public class TipServiceImpl implements TipService{
	
	private final TipPostMapper mapper;
	@Override
	public void created(TipPostDTO dto) {
		mapper.insert(dto);
		
	}

	@Override
	public TipPostDTO read(Integer key) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(Integer key) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modify(TipPostDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TipPostDTO> listAll() {
		return mapper.readAll();
	}

}
