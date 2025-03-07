package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.Criteria;
import com.spring.domain.TipPostDTO;


public interface TipPostMapper {
	
	public void insert(TipPostDTO dto);
	
	@Select("SELECT * FROM tipboard ORDER BY tipBoardNo DESC")
	public List<TipPostDTO> readAll();
	
	public TipPostDTO read(int tipBoardNo);
	
	public int update(TipPostDTO dto);
	
	@Delete("DELETE FROM tipboard WHERE tipBoardNo = #{tipBoardNo}")	
	public int delete(int tipBoardNo);

	public void addlike(@Param("uno") int uno, @Param("tipBoardNo") Integer tipBoardNo);

	public void removelike(@Param("uno") int uno, @Param("tipBoardNo") Integer tipBoardNo);

	public boolean isLike(@Param("uno") int uno, @Param("tipBoardNo") Integer tipBoardNo);
	
	public int upLikecount(Integer tipBoardNo);

	public int unLikecount(Integer tipBoardNo);

	public int getTotalCount();

	public List<TipPostDTO> listwithPasing(Criteria cri);
}
