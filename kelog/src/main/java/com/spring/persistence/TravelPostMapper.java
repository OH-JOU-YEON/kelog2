package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.domain.Criteria;
import com.spring.domain.Criteria2;
import com.spring.domain.TipPostDTO;
import com.spring.domain.TravelPostDTO;

public interface TravelPostMapper {
	
	public void insert(TravelPostDTO dto);
	
	
	public TravelPostDTO read(int travelBoardNo);

	
	public int update(TravelPostDTO dto);
	
	@Delete("DELETE FROM travelpost WHERE travelBoardNo = #{travelBoardNo}")	
	public int delete(int travelBoardNo);

	@Select("SELECT * FROM travelpost ORDER BY travelBoardNo DESC ")
	public List<TravelPostDTO> readAll();
	
	@Select("SELECT * FROM travelPost WHERE travelBoardNo = #{travelBoardtNo} ")
	public TravelPostDTO findBytravelPostNo(int travelBoardNo); 

	// 좋아요
	
	public boolean isLike(@Param("uno") int uno, @Param("travelBoardNo") Integer travelBoardNo);
	
	public void addlike(@Param("uno") int uno, @Param("travelBoardNo") Integer travelBoardNo);
	
	public void removelike(@Param("uno") int uno, @Param("travelBoardNo") Integer travelBoardNo);
	
	public int upLikecount(Integer travelBoardNo);
	
	public int unLikecount(Integer travelBoardNo);

	// 싫어요
	
	public boolean isunLike(@Param("uno") int uno, @Param("travelBoardNo") Integer travelBoardNo);

	public void addunlike(@Param("uno") int uno, @Param("travelBoardNo") Integer travelBoardNo);

	public void removeunlike(@Param("uno") int uno, @Param("travelBoardNo") Integer travelBoardNo);

	public int upunLikecount(Integer travelBoardNo);

	public int ununLikecount(Integer travelBoardNo);

	public int getTotalCount();

	public List<TravelPostDTO> listwithPasing(Criteria2 cri);
	
	
	




}

