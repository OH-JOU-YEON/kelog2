package com.spring.persistence;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.HashTagDTO;


@Mapper 
public interface HashTagMapper {
	
	
	public void insert(HashTagDTO dto);
	
	@Select("SELECT FROM hashTag WHERE hashName = #{hashName}")
	public HashTagDTO findHashTagByHashName(String hashName); 
	

	
	@Delete("DELETE FROM hashTag WHERE hashNo = #{hashNo}")	
	public int delete(int hashNo);

	@Select("SELECT * FROM hashTag ")
	public List<HashTagDTO> readAll();
	
	
	@Select("SELECT * FROM hashTag WHERE hashNo = #{hashNo}")
	public HashTagDTO findHashTagByHashNo(int hashNo); 

	
	
}
