package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.TipPostDTO;


public interface TipPostMapper {
	
	public void insert(TipPostDTO dto);
	
	@Select("SELECT * FROM tipboard ORDER BY tipBoardNo DESC")
	public List<TipPostDTO> readAll();
	
	public TipPostDTO read(int tipBoardNo);
	
	public int update(TipPostDTO dto);
	
	@Delete("DELETE FROM tipboard WHERE tipBoardNo = #{tipBoardNo}")	
	public int delete(int tipBoardNo);

	public int getLike(int tipBoardNo);
}
