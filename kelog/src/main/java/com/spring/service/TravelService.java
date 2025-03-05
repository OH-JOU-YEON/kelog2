package com.spring.service;

import java.util.List;

import com.spring.domain.TravelPostDTO;

public interface TravelService extends GenericService<TravelPostDTO, Integer> {

	public List<TravelPostDTO> listAll();

	public int modify(TravelPostDTO dto);

	
	// 좋아요 확인 취소
	
	public boolean isUserLikedTravelPost(int uno, Integer travelBoardNo);
	
	public int uplikecount(Integer travelBoardNo, int uno);

	public int unlikecount(Integer travelBoardNo, int uno);

	
	//싫어요 확인 취소
	
	public boolean isUserunLikedTravelPost(int uno, Integer travelBoardNo);
	
	public int upunlikecount(Integer travelBoardNo, int uno);

	public int ununlikecount(Integer travelBoardNo, int uno);	

	

}
