package com.spring.persistence;

import com.spring.domain.TravelPostDTO;

public interface TravelPostMapper {
	// 여행게시판 글 등록
	public void insert(TravelPostDTO dto);
	
	
}
