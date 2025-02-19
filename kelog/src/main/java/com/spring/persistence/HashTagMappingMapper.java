package com.spring.persistence;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.HashTagMappingDTO;


public interface HashTagMappingMapper {
	
	//저장
	public HashTagMappingDTO insert(HashTagMappingDTO hashTagMappingDTO); 
	
	
	//아이디로 삭제 
	@Delete("DELETE FROM hashTagMapping WHERE indexNo = #{indexNo}")	
	public int delete(int indexNo);
	
	
	//태그 번호랑 블로그 번호로 검색 
	
	public HashTagMappingDTO findByHashNoAndBlogNo(int hashNo, int blogNo); 
	
	public HashTagMappingDTO findByHashNoAndTravelNo(int hashNo, int travelNo); 
	
	public HashTagMappingDTO findByHashNoAndTipNo(int hashNo, int tipNo); 
	
	
	@Select("SELECT * FROM hashTagMapping WHERE indexNo = #{indexNo}")
	public HashTagMappingDTO findHashTagMappingByIndexNo(int indexNo); 
	
	
	

}
