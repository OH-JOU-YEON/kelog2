package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.BlogPostDTO;
import com.spring.persistence.BlogPostMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@Service
@RequiredArgsConstructor
@Log4j
public class BlogServiceImpl implements BlogService {
	
	private final BlogPostMapper mapper;

	@Override
	public void created(BlogPostDTO dto) {
		mapper.insert(dto);
	}

	@Override
	public BlogPostDTO read(Integer key) {
		return mapper.read(key);
	}

	@Override
	public int delete(Integer key) {
		return mapper.delete(key);
	}

	@Override
	public List<BlogPostDTO> listAll() {
		return mapper.readAll();
	}

	@Override
	public int modify(BlogPostDTO dto) {
		return mapper.update(dto);
	}

}
