package com.spring.persistence;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.BlogDTO;
import com.spring.domain.HashTagDTO;

public interface BlogMapper {
	
	public void insert(BlogDTO dto);
	
	@Delete("DELETE FROM blogPostAddressMapping WHERE id = #{id}")	
	public int delete(int id);
	
	
	@Select("SELECT * FROM blog WHERE uno = #{uno}")
	public BlogDTO findBlogByUserNo(int uno);
	
	
	@Select("SELECT * FROM blog WHERE blogName = #{blogName}")
	public BlogDTO findBlogByBlogName(String blogName);

}
