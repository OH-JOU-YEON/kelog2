package com.spring.service;

import java.util.List;

import com.spring.domain.TipPostDTO;

public interface TipService extends GenericService<TipPostDTO, Integer> {
	
	public List<TipPostDTO> listAll(); 
	
	public int modify(TipPostDTO dto);
}
