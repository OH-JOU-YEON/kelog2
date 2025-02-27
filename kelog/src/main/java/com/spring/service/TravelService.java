package com.spring.service;

import java.util.List;

import com.spring.domain.TravelPostDTO;

public interface TravelService extends GenericService<TravelPostDTO, Integer> {

	public List<TravelPostDTO> listAll();

	public int modify(TravelPostDTO dto);

	
	// 좋아요 확인 취소
	public int uplikecount(Integer travelBoardNo);

	public int unlikecount(Integer travelBoardNo);

	
	// 싫어요 확인 취소
	public int updislikecount(Integer travelBoardNo);

	public int undislikecount(Integer travelBoardNo);
}
