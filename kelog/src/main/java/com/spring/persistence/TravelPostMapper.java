package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.TravelPostDTO;

public interface TravelPostMapper {
	
	public void insert(TravelPostDTO dto);
	
	
	public TravelPostDTO read(int travelNo);

	
	public int update(TravelPostDTO dto);
	
	@Delete("DELETE FROM travelpost WHERE travelNo = #{travelNo}")	
	public int delete(int travelNo);

	@Select("SELECT * FROM travelpost ORDER BY travelNo DESC ")
	public List<TravelPostDTO> readAll();


	
	
}
