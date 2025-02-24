package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.BlogPostDTO;

public interface BlogPostMapper {
	public void insert(BlogPostDTO dto);
	
	public BlogPostDTO read(int blogPostNo);

	
	public int update(BlogPostDTO dto);
	
	@Delete("DELETE FROM blogPost WHERE blogPostNo = #{blogPostNo}")	
	public int delete(int blogPostNo);

	@Select("SELECT * FROM blogPost ORDER BY blogPostNo DESC ")
	public List<BlogPostDTO> readAll();

	public int getLike(int blogPostNo);
	
	public int getDislike(int blogPostNo);
}
