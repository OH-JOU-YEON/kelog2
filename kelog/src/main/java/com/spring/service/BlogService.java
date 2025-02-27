package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.BlogPostDTO;
import com.spring.domain.TravelPostDTO;

public interface BlogService extends GenericService<BlogPostDTO, Integer> {
	
	public List<BlogPostDTO> listAll();

	public int modify(BlogPostDTO dto);

	public int uplikecount(Integer blogPostNo);

	public int unlikecount(Integer blogPostNo);
}
