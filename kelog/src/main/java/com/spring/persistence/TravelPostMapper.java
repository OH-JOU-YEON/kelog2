package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.TravelPostDTO;

public interface TravelPostMapper {
	
	public void insert(TravelPostDTO dto);
	
	public TravelPostDTO read(int travelBoardNo);

	public int update(TravelPostDTO dto);
	
	@Delete("DELETE FROM travelpost WHERE travelBoardNo = #{travelBoardNo}")	
	public int delete(int travelBoardNo);

	@Select("SELECT * FROM travelpost ORDER BY travelBoardNo DESC ")
	public List<TravelPostDTO> readAll();

	public int getLike(int travelBoardNo);
	
	public int getDislike(int travelBoardNo);
	
}
