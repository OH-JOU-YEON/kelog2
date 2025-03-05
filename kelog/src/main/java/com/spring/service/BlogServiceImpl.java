package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.BlogPostDTO;
import com.spring.domain.BlogReportDTO;
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

	@Override
	public boolean isUserLikedblogPost(Integer uno, Integer blogPostNo) {
		return mapper.isLike(uno, blogPostNo);
	}

	
	public void addLike(int uno, Integer blogPostNo) {
		mapper.addlike(uno, blogPostNo);
	}

	public void removeLike(int uno, Integer blogPostNo) {
		mapper.removelike(uno, blogPostNo);
	}

	@Override
	public int uplikecount(Integer blogPostNo, Integer uno) {
		addLike(uno, blogPostNo);
        return mapper.upLikecount(blogPostNo);
	}

	@Override
	public int unlikecount(Integer blogPostNo, Integer uno) {
		removeLike(uno, blogPostNo);
        return mapper.unLikecount(blogPostNo);
	}

	@Override
	public void reportBlogPost(int blogPostNo, String email, String reportReason) {
		BlogReportDTO dto = new BlogReportDTO();
		dto.setBlogPostNo(blogPostNo);
		dto.setEmail(email);
		dto.setReportReason(reportReason);
		
		mapper.insertReport(dto);
	}

}
