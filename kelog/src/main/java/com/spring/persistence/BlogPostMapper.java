package com.spring.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.spring.domain.BlogPostDTO;
import com.spring.domain.BlogReportDTO;
import com.spring.domain.Criteria2;

@Mapper 
public interface BlogPostMapper {
	public void insert(BlogPostDTO dto);
	
	public BlogPostDTO read(int blogPostNo);
	
	

	
	public int update(BlogPostDTO dto);
	
	@Delete("DELETE FROM blogPost WHERE blogPostNo = #{blogPostNo}")	
	public int delete(int blogPostNo);

	@Select("SELECT * FROM blogPost ORDER BY blogPostNo DESC ")
	public List<BlogPostDTO> readAll();
	

	@Select("SELECT * FROM blogPost WHERE title = #{title} ")
	public BlogPostDTO findByTitle(String title); 
	
	@Select("SELECT * FROM blogPost WHERE blogNo = #{blogNo} ")
	public List<BlogPostDTO> findAllByBlogNo(int blogNo);

	// 좋아요
	
	public void addlike(@Param("uno") int uno, @Param("blogPostNo") Integer blogPostNo);

	public void removelike(@Param("uno") int uno, @Param("blogPostNo") Integer blogPostNo);

	public boolean isLike(@Param("uno") int uno, @Param("blogPostNo") Integer blogPostNo);
	
	public int upLikecount(Integer blogPostNo);

	public int unLikecount(Integer blogPostNo);

	public void insertReport(BlogReportDTO dto);

	public int getTotalCount();

	public List<BlogPostDTO> listwithPasing(Criteria2 cri);

}
