package com.spring.persistence;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.HashTagMappingDTO;


public interface HashTagMappingMapper {
	

	public HashTagMappingDTO insert(HashTagMappingDTO hashTagMappingDTO); 
	

	@Delete("DELETE FROM hashTagMapping WHERE indexNo = #{indexNo}")	
	public int delete(int indexNo);
	
	

	
	public HashTagMappingDTO findByHashNoAndBlogNo(int hashNo, int blogNo); 
	
	public HashTagMappingDTO findByHashNoAndTravelNo(int hashNo, int travelNo); 
	
	public HashTagMappingDTO findByHashNoAndTipNo(int hashNo, int tipNo); 
	
	
	@Select("SELECT * FROM hashTagMapping WHERE indexNo = #{indexNo}")
	public HashTagMappingDTO findHashTagMappingByIndexNo(int indexNo); 
	
	
	

}
