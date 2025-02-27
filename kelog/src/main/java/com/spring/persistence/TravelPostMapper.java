package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.spring.domain.TravelPostDTO;

public interface TravelPostMapper {
	
	public void insert(TravelPostDTO dto);
	
	
	public TravelPostDTO read(int travelBoardNo);

	
	public int update(TravelPostDTO dto);
	
	@Delete("DELETE FROM travelpost WHERE travelBoardNo = #{travelBoardNo}")	
	public int delete(int travelBoardNo);

	@Select("SELECT * FROM travelpost ORDER BY travelBoardNo DESC ")
	public List<TravelPostDTO> readAll();

	
	public int upLikecount(Integer travelBoardNo);
	
	public int unLikecount(Integer travelBoardNo);


	public int updisLikecount(Integer travelBoardNo);


	public int undisLikecount(Integer travelBoardNo);
}

