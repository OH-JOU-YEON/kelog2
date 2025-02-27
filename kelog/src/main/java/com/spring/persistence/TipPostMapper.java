package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.spring.domain.TipPostDTO;


public interface TipPostMapper {
	
	public void insert(TipPostDTO dto);
	
	@Select("SELECT * FROM tipboard ORDER BY tipBoardNo DESC")
	public List<TipPostDTO> readAll();
}
