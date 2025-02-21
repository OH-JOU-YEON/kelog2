package com.spring.service;

import org.springframework.stereotype.Service;

import com.spring.domain.BlogPostDTO;

@Service 
public interface BlogPostService extends GenericService<BlogPostDTO, Integer> {

}
