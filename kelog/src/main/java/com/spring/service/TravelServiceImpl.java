package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.TravelPostDTO;
import com.spring.persistence.TravelPostMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
@Service
@RequiredArgsConstructor
@Log4j
public class TravelServiceImpl implements TravelService {
	
	private final TravelPostMapper mapper;
	
	@Override
	public void created(TravelPostDTO dto) {
		mapper.insert(dto);
	}

	@Override
	public TravelPostDTO read(Integer key) {
		return mapper.read(key);
	}

	
	@Override
	public int delete(Integer key) {
		return mapper.delete(key);
	}

	@Override
	public List<TravelPostDTO> listAll() {
		return mapper.readAll();
	}

	@Override
	public int modify(TravelPostDTO dto) {
		return mapper.update(dto);
	}


}
