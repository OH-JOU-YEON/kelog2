package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.BlogPostDTO;
import com.spring.domain.Criteria2;
import com.spring.domain.TravelPostDTO;

public interface BlogService extends GenericService<BlogPostDTO, Integer> {
	
	public int getTotal();

	public List<BlogPostDTO> getList(Criteria2 cri);
	
	public List<BlogPostDTO> listAll();

	public int modify(BlogPostDTO dto);

	
	public boolean isUserLikedblogPost(Integer uno, Integer blogPostNo);

	public int uplikecount(Integer blogPostNo, Integer uno);

	public int unlikecount(Integer blogPostNo, Integer uno);

	public void reportBlogPost(int blogPostNo, String email, String reportReason);


}
